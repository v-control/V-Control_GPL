#tag Class
Protected Class HTTPConnection
Inherits TCPSocket
	#tag Event
		Sub DataAvailable()
		  if me.SocketMode = False then
		    processHeaders(  me.ReadAll )
		  else
		    dim srec as string // The raw  message
		    dim btmp as byte // temporary byte
		    dim bFin as Boolean = False //if true then final message
		    dim OPCode as byte // get the message OP Code
		    dim bLength as UInt64  //message Length
		    dim bL1,bL2 as byte
		    dim KeyDecode(3) as byte
		    dim msgEncrypted,msgDecrypted as String
		    
		    srec = me.ReadAll
		    
		    //Get the first Byte
		    btmp = Ascb(mid(srec,1,1))
		    
		    //Check if Final message
		    if Bitwise.BitAnd(btmp,128) = 128 then bFin = true
		    
		    //Get the OP Code
		    //x0 denotes a continuation frame
		    //x1 denotes a text frame
		    //x2 denotes a binary frame
		    //x3-7 are reserved for further non-control frames
		    //x8 denotes a connection close
		    //x9 denotes a ping
		    //xA denotes a pong
		    //xB-F are reserved for further control frames
		    OPCode = Bitwise.BitAnd(btmp,15)
		    if OPCode = 8 then
		      //Mark the Socket that it be removed from mHTTPServer.ahttpClients() list
		      me.WasClosed = true
		      me.Close
		      Return
		    end
		    if OPCode <> 1 then
		      MsgBox("Websocket Error: At the moment only text messages are supported")
		      Return
		    end
		    
		    //Get message Length
		    btmp = Ascb(mid(srec,2,1))
		    if btmp - 128 < 126 then
		      bLength = btmp - 128
		      KeyDecode(0) = Ascb(mid(srec,3,1))
		      KeyDecode(1) = Ascb(mid(srec,4,1))
		      KeyDecode(2) = Ascb(mid(srec,5,1))
		      KeyDecode(3) = Ascb(mid(srec,6,1))
		      msgEncrypted = mid(srec,7,bLength)
		    end
		    if btmp - 128 = 126 then
		      bL1 = Ascb(mid(srec,3,1))
		      bL2 = Ascb(mid(srec,4,1))
		      bLength = bL1*256
		      bLength = bLength+bL2
		      KeyDecode(0) = Ascb(mid(srec,5,1))
		      KeyDecode(1) = Ascb(mid(srec,6,1))
		      KeyDecode(2) = Ascb(mid(srec,7,1))
		      KeyDecode(3) = Ascb(mid(srec,8,1))
		      msgEncrypted = mid(srec,9,bLength)
		    end
		    //Not supported
		    if btmp - 128 = 127 then
		      MsgBox("Websocket Error: This Message Length is not supported at the moment")
		      Return
		      
		    end
		    
		    //Decrypt Message
		    dim count,idx as integer
		    for i as Integer = 1 to bLength
		      idx = count mod 4
		      msgDecrypted = msgDecrypted + chrb(Bitwise.BitXor(ascb(mid(msgEncrypted,i,1)),KeyDecode(idx)))
		      count = count + 1
		    next
		    //Run the command
		    msgDecrypted = ReplaceAll(msgDecrypted,"%02",chrb(2))
		    msgDecrypted = ReplaceAll(msgDecrypted,"%03",chrb(3))
		    msgDecrypted = ReplaceAll(msgDecrypted,"%04",chrb(4))
		    msgDecrypted = ReplaceAll(msgDecrypted,"%05",chrb(5))
		    msgDecrypted = ReplaceAll(msgDecrypted,"%06",chrb(6))
		    srec = NodeIF.CmdDispatcher(msgDecrypted,"WebSocket",me.RemoteAddress)
		    //send the Acknowledge
		    
		    me.SendMessage(srec)
		    
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub SendComplete(userAborted as Boolean)
		  ' Due to the HTTP spec we adhere to, we're
		  ' required to close the connection once we've
		  ' finished sending you the page.
		  
		  if me.SocketMode = False then 
		    //Mark the Socket that it be removed from mHTTPServer.ahttpClients() list
		    me.WasClosed = True
		    me.close
		  end
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor(DocRoot as string)
		  rootDir = DocRoot
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ConvertURLString(url as string) As string
		  dim x as integer
		  dim temp,encStr as string
		  
		  // covert out hex values from the url string
		  temp = url
		  do
		    x = instr( temp, "%" )// hex values start with '%'
		    if x = 0 then// no encoding found
		      exit
		    end
		    
		    encStr = mid( temp, x+1, 2 )
		    encStr = chr( val( "&h" + encStr ) )
		    
		    temp = left( temp, x - 1 ) + encStr + mid( temp, x + 3 )
		  loop
		  
		  return temp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetHTTPFileFromPath(path as string) As folderItem
		  'dim f as folderItem
		  'dim i,levels as integer
		  'dim pathChunk as string
		  '
		  '// locate a file that we are hosting based off the path
		  'f = GetFolderItem(rootDir)
		  'levels = countFields( path, "/" )
		  '
		  'for i = 2 to levels
		  'pathChunk = nthField( path, "/", i )
		  'if pathChunk = ".." then// move up a level
		  'f = f.parent
		  'end
		  'if pathChunk = "" and i = levels then
		  'pathChunk = "index.html"
		  'end
		  '
		  'pathChunk = convertURLString( pathChunk )
		  'f = f.child( pathChunk )
		  'if f = nil or f.exists = false then
		  'return nil
		  'end
		  'next
		  '
		  'return f
		  
		  dim f as FolderItem
		  
		  f = GetFolderItem(path)
		  if f <> nil and f.Exists then
		    Return f
		  else
		    Return nil
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ProcessHeaders(headers as string)
		  dim tmp,cmd,param,sKey as string
		  dim bs as binaryStream
		  dim f as folderItem
		  dim msgCmd, msgParams as string
		  
		  
		  // parse out the header data
		  tmp = nthField( headers, chr(13), 1 )
		  tmp=tmp.Trim
		  
		  cmd = nthField( tmp, " ", 1 )
		  param = nthField( tmp, " ", 2 )
		  
		  //ScrMan.HandleEngineEvent("NodeIF","HTTPRemote",me.RemoteAddress,"Message",headers,cmd)
		  ScrMan.HandleEngineEvent("NodeIF","HTTPRemote",me.RemoteAddress,"Message",param,Cmd)
		  
		  dim i as integer
		  Dim encryptedValue As String
		  
		  i =  instr(headers,"Upgrade: websocket")
		  if i >0  then
		    i = instr(headers,"Sec-WebSocket-Key:")
		    sKey = mid(headers,i)
		    sKey = NthField(sKey,chr(13),1)
		    sKey= sKey.Trim
		    sKey=NthField(sKey,":",2)
		    sKey = sKey.Trim
		    sKey = sKey + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
		    encryptedValue = Crypto.Hash(sKey, Crypto.Algorithm.SHA1)
		    encryptedValue = EncodeBase64(encryptedValue,0)
		    
		    //WriteResponseHeader(101,"Switching Protocols")
		    tmp = "HTTP/1.1 101 Switching Protocols"+ chr(13)+chr(10)
		    tmp =tmp+ "Upgrade: websocket"+chr(13)+chr(10)
		    tmp=tmp+"Connection: Upgrade"+chr(13)+chr(10)
		    tmp=tmp+"Sec-WebSocket-Accept: "+encryptedValue+chr(13)+chr(10)
		    //tmp=tmp+"Sec-WebSocket-Protocol: chat"+chr(13)+chr(10)+chr(13)+chr(10) 
		    tmp = tmp+chr(13)+chr(10)
		    me.SocketMode = true
		    
		    me.Write(tmp)
		    'me.Listen
		    Return
		  end
		  
		  if cmd = "GET" then// we got a get command
		    // cgi-bin commands
		    if InStr(param,"/cgi-bin/") > 0 then
		      tmp = NthField(param,"/cgi-bin/",2)
		      tmp = ReplaceAll(tmp,"%05",chr(5))
		      tmp = ReplaceAll(tmp,"%02",chr(2))
		      //Build the complete Message String
		      tmp = chr(4)+"0"+chr(5)+tmp+chr(6)
		      tmp = NodeIF.CmdDispatcher(tmp,"HTTP",me.RemoteAddress)
		      msgCmd = NthField(tmp,chr(5),2)
		      msgParams = NthField(tmp,chr(5),3)
		      msgParams = HelpFunctions.DeleteLastChar(msgParams,chr(6))
		      msgParams = ReplaceAll(msgParams,chr(2),"%02")
		      msgParams = ReplaceAll(msgParams,chr(4),"%04")
		      msgParams = ReplaceAll(msgParams,chr(5),"%05")
		      msgParams = ReplaceAll(msgParams,chr(6),"%06")
		      if msgParams = "0" then msgParams = "OK"
		      
		      WriteResponseHeader(200,"")
		      me.Write(msgCmd+"%05"+msgParams)
		    else
		      //Wenn keine Datei benannt dann index.htm oder index.html verwenden
		      if param = "/" then param = "/index.htm"
		      
		      ' / von param entfernen
		      param = mid (param,2)
		      ' Get the file we'd like to serve
		      f = getHTTPFileFromPath( rootDir+param)
		      if f = nil or f.Exists = false then
		        //nach index.html suchen
		        param = param + "l"
		        f = getHTTPFileFromPath( rootDir+param)
		        if f = nil or f.exists = false then// could not find the file (404)
		          WriteResponseHeader(404,"File not found")
		          me.write( "Error 404." )
		          return
		        end
		      end
		      ' Open the file up for reading only
		      bs = BinaryStream.Open(f)
		      ' Write out the contents of the file to the remote side
		      if bs <> nil then 
		        WriteResponseHeader(200,"")
		        me.write( bs.read( bs.length ) )
		        ' Close the file
		        bs.close
		      end
		    end
		  else
		    me.write( "Unsupported Command "+ cmd )
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendMessage(msg as string)
		  dim sres as string
		  dim iLen,itmp as integer
		  
		  msg = ReplaceAll(msg,chrb(2),"%02")
		  msg = ReplaceAll(msg,chrb(3),"%03")
		  msg = ReplaceAll(msg,chrb(4),"%04")
		  msg = ReplaceAll(msg,chrb(5),"%05")
		  msg = ReplaceAll(msg,chrb(6),"%06")
		  
		  iLen = LenB(msg)
		  sres = chrb(129)
		  
		  if iLen < 126 then
		    sres = sres + chrb(iLen)+msg
		    me.Write(sres)
		  else
		    dim bL1,bL2 as byte
		    itmp = iLen and &hff00
		    itmp = itmp / 256
		    bL2 = itmp
		    itmp = iLen and &hff
		    bL1 = itmp
		    
		    sres = sres + chrb(126)+chrb(bL2)+chrb(bL1)+msg
		    me.Write(sres)
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WriteResponseHeader(Code as integer, Response as string)
		  me.Write("HTTP/1.1 "+format(Code, "000" ) + " " + Response + chr(13)+chr(10)+ chr(13)+chr(10))
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		rootDir As string
	#tag EndProperty

	#tag Property, Flags = &h0
		SocketMode As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		WasClosed As boolean = false
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Address"
			Visible=true
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="rootDir"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SocketMode"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WasClosed"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
