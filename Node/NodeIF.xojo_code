#tag Module
Protected Module NodeIF
	#tag Method, Flags = &h0
		Function CmdDispatcher(RawMessage as string, ClientType as string, ClientID as string) As string
		  dim rMsg as new TMessage
		  dim msgType as integer
		  dim msgCmd, msgParams,sres,sModule as string
		  
		  //stx und etx entfernen
		  RawMessage = mid(RawMessage,2)
		  RawMessage = mid(RawMessage,1,len(RawMessage)-1)
		  msgType = val(NthField(RawMessage,chr(5),1))
		  msgCmd = NthField(RawMessage,chr(5),2)
		  msgParams = NthField(RawMessage,chr(5),3)
		  
		  
		  rMsg.MsgType = msgType
		  rMsg.Cmd = msgCmd
		  rMsg.Params = msgParams
		  rMsg.ClientType = ClientType
		  rMsg.ClientID = ClientID
		  
		  sModule = left(msgCmd,3)
		  
		  Select case sModule
		    
		  case "dev"
		    rMsg = devDispatcher(rMsg)
		    
		  case "scr"
		    rMsg = scrDispatcher(rMsg)
		    
		  case "pls"
		    rMsg = plsDispatcher(rMsg)
		    
		  case else
		    rMsg.Cmd = ""
		    rMsg.Params = "Invalid Command"
		    
		  end Select
		  
		  sres = chr(4)+str(rMsg.MsgType)+chr(5)+rMsg.Cmd+chr(5)+rMsg.Params+chr(6)
		  
		  'if rMsg.ClientType = "TCP" then ScrMan.HandleEngineEvent("NodeIF","TCPRemote","Client:"+str(rMsg.ClientID),"Message",rMsg.Params,rMsg.Cmd)
		  'if rMsg.ClientType = "UDP" then ScrMan.HandleEngineEvent("NodeIF","UDPRemote","Client:"+str(rMsg.ClientID),"Message",rMsg.Params,rMsg.Cmd)
		  'if rMsg.ClientType = "RS232" then ScrMan.HandleEngineEvent("NodeIF","RS232Remote","Client:"+str(rMsg.ClientID),"Message",rMsg.Params,rMsg.Cmd)
		  'if rMsg.ClientType = "WebSocket" then ScrMan.HandleEngineEvent("NodeIF","WebSocket","Client:"+str(rMsg.ClientID),"Message",rMsg.Params,rMsg.Cmd)
		  
		  
		  Return sres
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function devDispatcher(msg as TMessage) As TMessage
		  dim resmsg As TMessage
		  // devRunCommand Variablen
		  dim cmd,dev,clist,dp1,dp2,p1,p2,p3,p4 as string
		  dim tres As new TResult
		  
		  resmsg = New TMessage
		  resmsg = msg
		  resmsg.MsgType = 1
		  
		  select case msg.Cmd
		    
		  case "devGetDeviceList"
		    resmsg.Params = DevMan.GetDeviceList
		    
		  case "devGetDeviceProperties"
		    resmsg.Params = DevMan.GetDevicePropertiesByName(msg.Params)
		    
		  case "devGetCommandList"
		    resmsg.Params = DevMan.GetCommandList(msg.Params)
		    
		  case "devGetChannelList"
		    dev = NthField(msg.Params,chr(2),1)
		    resmsg.Params = DevMan.GetIoChannels(dev)
		    
		  case "devGetCommandProperties"
		    dev = NthField(msg.Params,chr(2),1)
		    cmd = NthField(msg.Params,chr(2),2)
		    resmsg.Params = DevMan.GetCommandProperties(dev,cmd)
		    
		  case "devRunCommand"
		    dev = NthField(msg.Params,chr(2),1)
		    clist = NthField(msg.Params,chr(2),2)
		    cmd = NthField(msg.Params,chr(2),3)
		    dp1 = NthField(msg.Params,chr(2),4)
		    dp2 = NthField(msg.Params,chr(2),5)
		    p1 = NthField(msg.Params,chr(2),6)
		    p2 = NthField(msg.Params,chr(2),7)
		    p3 = NthField(msg.Params,chr(2),8)
		    p4 = NthField(msg.Params,chr(2),9)
		    tres = DevMan.RunCommand("DirectAccessModeCommand",dev,clist,cmd,dp1,dp2,p1,p2,p3,p4,"")
		    resmsg.Params =dev+chr(2)+clist+chr(2)+cmd+chr(2)+dp1+chr(2)+dp2+chr(2)+p1+chr(2)+p2+chr(2)+p3+chr(2)+p4+chr(2)+tres.Resultmsg
		    
		  case else
		    resmsg.Cmd = ""
		    resmsg.Params = "Invalid Command"
		    
		  end select
		  
		  Return resmsg
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DistributeMessageToRemoteClients(EventSourceModule as string,EventSourceDevice as string,EventSourceChannel as string,EventData as string,EventSourceCmd as string)
		  //This method is used to distribute all messages that appear in the Acknowledge list to all connected remote clients
		  dim msg as string
		  
		  
		  msg = chr(4)+"2"+chr(5)+EventSourceModule+chr(5)+EventSourceDevice+chr(2)+EventSourceChannel+chr(2)+EventSourceCmd+chr(2)+EventData+chr(6)
		  dim i as Integer
		  //send to web sockets
		  for i = 0 to UBound(mHTTPServer.ahttpClients)
		    if mHTTPServer.ahttpClients(i) <> nil then
		      if mHTTPServer.ahttpClients(i).SocketMode=true then
		        mHTTPServer.ahttpClients(i).SendMessage(msg)
		      end
		    end
		  next
		  
		  //send to TCP Sockets
		  for i = 0 to UBound(mTCPServer.aClientSocks)
		    if mTCPServer.aClientSocks(i).IsConnected = true then
		      mTCPServer.aclientSocks(i).SendMsg(msg)
		    end
		  next
		  
		  //Send to UDP Clients
		  if mUDPServer <> nil then
		    if mUDPServer.IsConnected = true then
		      mUDPServer.SendMsg(msg)
		    end
		  end
		  
		  //RS232
		  if mSerialServer <> nil then
		    mSerialServer.SendMsg(msg)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init()
		  
		  //********************** TCP SERVER **********************************
		  //Stop Server
		  if mTCPServer <> Nil then
		    mTCPServer.StopListening
		    mTCPServer = nil
		  end
		  
		  //Stop Flash Policy Server
		  if mFlashPolicyServer <> Nil then
		    mFlashPolicyServer.StopListening
		    mFlashPolicyServer = nil
		  end
		  
		  //Create new Server and start
		  mTCPServer = New TTCPServer
		  mTCPServer.MaximumSocketsConnected = remoteTCPMaxClients
		  mTCPServer.Port = remoteTCPPort
		  if remoteTCPServiceEnabled = true then
		    mTCPServer.Listen
		  end
		  
		  //Create new mFlashPolicyServer and start
		  mFlashPolicyServer = New TTCPServer
		  mFlashPolicyServer.MaximumSocketsConnected = remoteTCPMaxClients
		  mFlashPolicyServer.Port = 843
		  if (remoteTCPServiceEnabled = true) or (remoteHTTPServiceEnabled = true) then
		    mFlashPolicyServer.Listen
		  end
		  
		  
		  //********************** HTTP SERVER **********************************
		  //Stop Server
		  if mHTTPServer <> Nil then
		    mHTTPServer.StopListening
		    mHTTPServer = nil
		  end
		  
		  //Create new Server and start
		  mHTTPServer = New HTTPServer
		  mHTTPServer.MaximumSocketsConnected = remoteHTTPMaxClients
		  mHTTPServer.MinimumSocketsAvailable = 50
		  mHTTPServer.Port = remoteHTTPPort
		  mHTTPServer.rootDir = remoteHTTPDocumentRoot
		  mHTTPServer.StopListening
		  if remoteHTTPServiceEnabled = true then
		    mHTTPServer.Listen
		  end
		  
		  //********************** UDP SERVER **********************************
		  //Stop Server
		  if mUDPServer <> Nil then
		    mUDPServer.Close
		    mUDPServer = nil
		  end
		  
		  //Create new Server and start
		  mUDPServer = New TUDPServer
		  mUDPServer.Port = remoteUDPPort
		  if remoteUDPServiceEnabled = true then
		    mUDPServer.Connect
		  end
		  
		  //********************** RS232 SERVER **********************************
		  //Stop Server
		  if mSerialServer <> Nil then
		    mSerialServer.Close
		    mSerialServer = nil
		  end
		  
		  //Create new Server and start
		  mSerialServer = New TSerialServer
		  mSerialServer.Baud = remoteRS232Baud
		  mSerialServer.Bits = remoteRS232DataBits
		  mSerialServer.Parity = remoteRS232Parity
		  mSerialServer.Stop = remoteRS232StopBits
		  
		  if TargetWin32 then mSerialServer.SerialPort = System.SerialPort( "\\.\" + remoteRS232Port)
		  if TargetMacOS then mSerialServer.SerialPort = System.SerialPort( "/dev/tty." + remoteRS232Port)
		  if TargetLinux then mSerialServer.SerialPort = System.SerialPort(remoteRS232Port)
		  
		  
		  if remoteRS232ServiceEnabled = true then
		    
		    if not mSerialServer.Open then MsgBox("Could not open Commport for Remote Service")
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OnClose()
		  //********************** TCP SERVER **********************************
		  //Stop Server
		  if mTCPServer <> Nil then
		    mTCPServer.StopListening
		    mTCPServer = nil
		  end
		  
		  //Stop Flash Policy Server
		  if mFlashPolicyServer <> Nil then
		    mFlashPolicyServer.StopListening
		    mFlashPolicyServer = nil
		  end
		  
		  //********************** HTTP SERVER **********************************
		  //Stop Server
		  if mHTTPServer <> Nil then
		    mHTTPServer.StopListening
		    mHTTPServer = nil
		  end
		  
		  //********************** UDP SERVER **********************************
		  //Stop Server
		  if mUDPServer <> Nil then
		    mUDPServer.Close
		    mUDPServer = nil
		  end
		  
		  //********************** RS232 SERVER **********************************
		  //Stop Server
		  if mSerialServer <> Nil then
		    mSerialServer.Close
		    mSerialServer = nil
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function plsDispatcher(msg as TMessage) As TMessage
		  dim resmsg As TMessage
		  
		  resmsg = New TMessage
		  resmsg = msg
		  resmsg.MsgType = 1
		  
		  select case msg.Cmd
		    
		  case "plsFire"
		    if Globals.ptyModalPlaylist = false then frmPlaylist.RunTask(" ")
		    if Globals.ptyModalPlaylist = true then frmPlaylistModal.RunTask(" ")
		    
		  case "plsUp"
		    if Globals.ptyModalPlaylist = false then frmPlaylist.LineUp
		    if Globals.ptyModalPlaylist = true then frmPlaylistModal.LineUp
		    
		  case "plsDown"
		    if Globals.ptyModalPlaylist = false then frmPlaylist.LineDown
		    if Globals.ptyModalPlaylist = true then frmPlaylistModal.LineDown
		    
		  case else
		    resmsg.Cmd = ""
		    resmsg.Params = "Invalid Command"
		    
		  end select
		  
		  Return resmsg
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function scrDispatcher(msg as TMessage) As TMessage
		  dim resmsg As TMessage
		  
		  resmsg = New TMessage
		  resmsg = msg
		  resmsg.MsgType = 1
		  
		  select case msg.Cmd
		    
		  case "scrGetTasks"
		    resmsg.Params = ScrMan.GetTaskList
		    
		  case "scrRunTask"
		    resmsg.Params = ScrMan.RunCueset(msg.Params,1)
		    
		  case "scrStopTask"
		    ScrMan.StopCueset(msg.Params)
		    
		  case "scrSetGlobalVar"
		    resmsg.Params = ScrMan.SetGlobalVar(NthField(msg.Params,chr(2),1),NthField(msg.Params,chr(2),2))
		    
		  case "scrGetGlobalVar"
		    resmsg.Params = ScrMan.GetGlobalVar(msg.Params)
		    
		  case else
		    resmsg.Cmd = ""
		    resmsg.Params = "Invalid Command"
		    
		  end select
		  
		  Return resmsg
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected mFlashPolicyServer As TTCPServer
	#tag EndProperty

	#tag Property, Flags = &h0
		mHTTPServer As HTTPServer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mSerialServer As TSerialServer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mTCPServer As TTCPServer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mUDPServer As TUDPServer
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteHTTPDocumentRoot As string
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteHTTPMaxClients As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteHTTPPort As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteHTTPServiceEnabled As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteRS232Baud As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteRS232DataBits As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteRS232Parity As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteRS232Port As string
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteRS232ServiceEnabled As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteRS232StopBits As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteTCPMaxClients As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteTCPPort As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteTCPServiceEnabled As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteUDPPort As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		remoteUDPServiceEnabled As boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteHTTPDocumentRoot"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteHTTPMaxClients"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteHTTPPort"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteHTTPServiceEnabled"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteRS232Baud"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteRS232DataBits"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteRS232Parity"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteRS232Port"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteRS232ServiceEnabled"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteRS232StopBits"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteTCPMaxClients"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteTCPPort"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteTCPServiceEnabled"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteUDPPort"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="remoteUDPServiceEnabled"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
