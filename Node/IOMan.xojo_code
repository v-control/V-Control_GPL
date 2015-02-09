#tag Module
Protected Module IOMan
	#tag Method, Flags = &h0
		Function AddIOEvent(ChannelName as string, TermChar as string) As string
		  dim i,c as integer
		  
		  
		  //Check if Event is already present
		  for i = 0 to UBound(aIOEvents)
		    if aIOEvents(i).ChannelName = ChannelName then
		      //Check if TermChar is the same
		      if aIOEvents(i).TermChar <> TermChar then 
		        Return "-1017"
		      else
		        Return "0"
		      end
		    end
		  next
		  
		  //Add the Event
		  i = UBound(aIOEvents) + 1
		  Redim aIOEvents(i)
		  aIOEvents(i) = New TIOEvent
		  aIOEvents(i).ChannelName = ChannelName
		  aIOEvents(i).TermChar = termChar
		  
		  //set FireOnData
		  c = GetChannelidxByName(ChannelName)
		  if c > -1 then
		    
		    'if Channel is RS232
		    If aChannels(c).Type = 0 then
		      //SubchannelID finden und schreiben
		      for i = 0 to UBound(aSerial)
		        if aSerial(i).Name = aChannels(c).Name then
		          aSerial(i).FireDataAvailable = true
		        end
		      next
		    end
		    
		    'if Channel is TCP
		    If aChannels(c).Type = 1 then
		      //SubchannelID finden
		      for i = 0 to UBound(aTCP)
		        if aTCP(i).Name = aChannels(c).Name then
		          aTCP(i).FireDataAvailable = true
		        end
		      next
		    end
		    
		    'if Channel is UDP
		    If aChannels(c).Type = 2 then
		      //SubchannelID finden
		      for i = 0 to UBound(aUDP)
		        if aUDP(i).Name = aChannels(c).Name then
		          aUDP(i).FireDataAvailable = true
		        end
		      next
		    end
		    
		  end
		  
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearIOEvents()
		  dim c,i,x as integer
		  
		  for x = UBound(aIOEvents) DownTo 0
		    c = GetChannelidxByName(aIOEvents(x).ChannelName)
		    if c > -1 then
		      'if Channel is RS232
		      If aChannels(c).Type = 0 then
		        //SubchannelID finden und schreiben
		        for i = 0 to UBound(aSerial)
		          if aSerial(i).Name = aChannels(c).Name then
		            aSerial(i).FireDataAvailable = false
		          end
		        next
		      end
		      
		      'if Channel is TCP
		      If aChannels(c).Type = 1 then
		        //SubchannelID finden
		        for i = 0 to UBound(aTCP)
		          if aTCP(i).Name = aChannels(c).Name then
		            aTCP(i).FireDataAvailable = false
		          end
		        next
		      end
		      
		      'if Channel is UDP
		      If aChannels(c).Type = 2 then
		        //SubchannelID finden
		        for i = 0 to UBound(aUDP)
		          if aUDP(i).Name = aChannels(c).Name then
		            aUDP(i).FireDataAvailable = false
		          end
		        next
		      end
		      
		    end
		    
		    
		    aIOEvents(x) = nil
		    aIOEvents.Remove(x)
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CloseChannel(ChannelName as string) As String
		  dim i,ChannelID,SubChannelID as integer
		  dim valid as boolean
		  
		  'Check if valid Channel ID and get ChannelID
		  ChannelID = GetChannelidxByName(ChannelName)
		  if ChannelID < 0 then Return "unknown channel"
		  'if aChannels(ChannelID).Blocked then Return "-1002"
		  
		  
		  aChannels(ChannelID).Blocked = true
		  valid = false
		  
		  //SubchannelID RS232 finden
		  if aChannels(ChannelID).Type = 0 then
		    for i = 0 to UBound(aSerial)
		      if aSerial(i).Name = ChannelName then
		        SubChannelID = i
		        valid = true
		      end
		    next
		  end
		  
		  //SubchannelID TCP finden
		  if aChannels(ChannelID).Type = 1 then
		    for i = 0 to UBound(aTCP)
		      if aTCP(i).Name = ChannelName then
		        SubChannelID = i
		        valid = true
		      end
		    next
		  end
		  
		  //SubchannelID UDP finden
		  if aChannels(ChannelID).Type = 2 then
		    for i = 0 to UBound(aUDP)
		      if aUDP(i).Name = ChannelName then
		        SubChannelID = i
		        valid = true
		      end
		    next
		  end
		  
		  //SubchannelID SMTP finden
		  if aChannels(ChannelID).Type = 3 then
		    for i = 0 to UBound(aSMTP)
		      if aSMTP(i).Name = ChannelName then
		        SubChannelID = i
		        valid = true
		      end
		    next
		  end
		  
		  if not valid Then 
		    aChannels(ChannelID).Blocked = false
		    return "-1008"
		  end
		  
		  //SubChannel RS232 löschen
		  if aChannels(ChannelID).Type = 0 then 
		    aSerial(SubChannelID).Close
		    aSerial.Remove(SubChannelID)
		  end
		  
		  //SubChannel TCP löschen
		  if aChannels(ChannelID).Type = 1 then 
		    aTCP(SubChannelID).Close
		    aTCP.Remove(SubChannelID)
		  end
		  
		  //SubChannel UDP löschen
		  if aChannels(ChannelID).Type = 2 then 
		    aUDP(SubChannelID).Close
		    aUDP.Remove(SubChannelID)
		  end
		  
		  //SubChannel SMTP löschen
		  if aChannels(ChannelID).Type = 3 then
		    aSMTP(SubChannelID).Close
		    aSMTP.Remove(SubChannelID)
		  end
		  
		  //Channel löschen
		  aChannels.Remove(ChannelID)
		  
		  Return "0"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteAllChannels() As String
		  dim s,res,result as String
		  dim i as integer
		  
		  //Create a list with all channel names
		  s = ""
		  result = "0"
		  for i = 0 to UBound(aChannels)
		    s = s + aChannels(i).Name + ","
		  next
		  s = DeleteLastChar(s,",")
		  
		  //Delete the Channels
		  for i = 1 to CountFields(s,",")
		    res = CloseChannel(NthField(s,",",i))
		    if res <> "0" then result = "-1012"
		  next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetChannelidxByName(ChannelName as string) As integer
		  'Check if valid Channel ID and get ChannelID
		  Dim i as integer
		  
		  for i = 0 to UBound(aChannels)
		    if aChannels(i).Name = ChannelName then Return i
		  next
		  
		  Return -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetChannels() As String
		  Dim res as String
		  Dim i as Integer
		  
		  res = ""
		  for i = 0 to UBound(aChannels) 
		    res = res + aChannels(i).Name + chr(2)
		    res = res + str(aChannels(i).Type) + chr(2)
		    res = res + aChannels(i).Parameter + chr(2)
		  next
		  
		  Return DeleteLastChar(res,chr(2))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCommportList() As String
		  'Return AvailableCommports without scanning for new Ports
		  if AvailableCommports <> "" then
		    return AvailableCommports
		  else
		    return RefreshCommportList
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSyncPort() As String
		  dim res as String
		  try
		    if mSerialSync.SerialPort <> nil then
		      res = mSerialSync.SerialPort.Name
		      if TargetWin32 then res = mid(res,5)
		      
		      Return res
		    else
		      Return ""
		    end
		  catch
		    
		  end try
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HandleChannelEvent(ChannelName as string, EventType as string, Data as string)
		  dim i,L as integer
		  dim TermChar as string
		  dim b as boolean
		  
		  //Check if we have an EventHandler
		  if ChannelName = mLearnEventChannel then
		    DevMan.HandleChannelEvent(ChannelName,Data)
		  else
		    try
		      for i = 0 to UBound(aIOEvents)
		        if aIOEvents(i).ChannelName = ChannelName then
		          if aIOEvents(i).AckLen = 0 then aIOEvents(i).AckLen = 200
		          TermChar = HexStringToString(aIOEvents(i).TermChar)
		          //Add the received Data to tmp Variable
		          aIOEvents(i).tmpRes = aIOEvents(i).tmpRes + Data
		          //Check for valid TermChar
		          L = Len(TermChar)
		          if (Right(aIOEvents(i).tmpRes,L) = TermChar) or (len(aIOEvents(i).tmpRes)>=aIOEvents(i).AckLen) then
		            //Events Disablen bis DevMan wieder einschaltet wenn Event vorrüber
		            b = SetEnableEvents(ChannelName,false)
		            DevMan.HandleChannelEvent(ChannelName,aIOEvents(i).tmpRes)
		            aIOEvents(i).tmpRes = ""
		            exit sub
		          end
		        end
		      next
		    catch
		      msgbox("Error in IOMan HandleChannelEvent, please contact VMAN support Team")
		    end
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init()
		  ReadIOManIni
		  mSerialSync = New TSerialSync
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OnClose()
		  dim res as string
		  
		  
		  
		  res = DeleteAllChannels
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OpenChannel(Params as String) As String
		  'Opens a Channel 
		  //The first Parameter determines the Channel Type (RS232 = 0, TCP = 1, UDP = 2)
		  
		  Dim ChannelCount,SubChannelCount,ParamCount,i as integer
		  Dim tmp as String
		  
		  //Check if ChannelName is unique
		  tmp = NthField(Params,",",2)
		  for i = 0 to UBound(aChannels)
		    if aChannels(i).Name = tmp then Return "-1007"
		  next
		  
		  'Channel Array erweitern
		  ChannelCount = UBound(aChannels) + 1
		  //Testen ob Maximale Anzahl von Channels überschritten
		  if ChannelCount >= Globals.pt_MaxChannels then Return "-1018"
		  
		  Redim aChannels(ChannelCount)
		  aChannels(ChannelCount) = New TChannel
		  aChannels(ChannelCount).Blocked = True
		  
		  'Count Parameter
		  ParamCount = CountFields(Params,",")
		  'Params Format RS232
		  '0,Name as string, Commport as Integer, Baudrate as Integer, DataBits as Integer, StopBits as Integer, Parity as Integer, DTR as Boolean(0/1), CTS as Boolean(0/1), XON as Boolean(0/1)
		  ' **************************** RS232 ************************************
		  'Wenn 10 Parameter übermittelt werden dann RS232 Port öffnen
		  '**************************************************************************
		  if ParamCount = 10 and NthField(Params,",",1) = "0" then
		    
		    'Channel als RS232Channel markieren
		    aChannels(ChannelCount).Type = 0
		    
		    'RS232 Array erweitern
		    SubChannelCount = UBound(aSerial)+1
		    Redim aSerial(SubChannelCount)
		    
		    'Name zuweisen
		    aChannels(ChannelCount).Name = NthField(Params,",",2)
		    
		    //Type und Name aus Parameter entfernen
		    tmp = Right(Params,len(Params) - (len(aChannels(ChannelCount).Name) + len(str(aChannels(ChannelCount).Type)) + 2))
		    'Parameter speichern
		    aChannels(ChannelCount).Parameter = tmp
		    
		    'Neuen Serial Port erstellen und Parameter zweisen
		    aSerial(SubChannelCount) = new TSerialSock
		    aSerial(SubChannelCount).Name = NthField(Params,",",2)
		    'Commport
		    try
		      if TargetWin32 then aSerial(SubChannelCount).SerialPort = System.SerialPort( "\\.\" + NthField(Params,",",3))
		      if TargetMacOS then aSerial(SubChannelCount).SerialPort = System.SerialPort( "/dev/tty." + NthField(Params,",",3))
		      if TargetLinux then aSerial(SubChannelCount).SerialPort = System.SerialPort( NthField(Params,",",3))
		    Catch
		      aChannels(ChannelCount) = Nil
		      Redim aChannels(ChannelCount-1)
		      aSerial(SubChannelCount) = Nil
		      Redim aSerial(SubChannelCount-1)
		      Return "-1010"
		    Finally
		    end
		    'Baudrate
		    aSerial(SubChannelCount).Baud = val(NthField(Params,",",4))
		    'DataBits
		    aSerial(SubChannelCount).Bits = val(NthField(Params,",",5))
		    'StopBits
		    aSerial(SubChannelCount).Stop = val(NthField(Params,",",6))
		    'Parity
		    aSerial(SubChannelCount).Parity = val(NthField(Params,",",7))
		    'DTR
		    if val(NthField(Params,",",8)) = 0 then
		      aSerial(SubChannelCount).DTR = False
		    Else
		      aSerial(SubChannelCount).DTR = True
		    end
		    'CTS
		    if val(NthField(Params,",",9)) = 0 then
		      aSerial(SubChannelCount).CTS = False
		    Else
		      aSerial(SubChannelCount).CTS = True
		    end
		    'XON
		    if val(NthField(Params,",",10)) = 0 then
		      aSerial(SubChannelCount).XON = False
		    Else
		      aSerial(SubChannelCount).XON = True
		    end
		    
		    
		    'Port öffnen
		    'Auf Linux Systemen wird CR (chr(13) nach chr(10) gewandelt. Dieser Workaround soll das verhindern
		    '#if targetLinux
		    'dim sh as New Shell
		    'sh.Mode = 1
		    'sh.Execute "stty -F "+  NthField(Params,",",3) +" -icrnl"
		    '
		    'while sh.IsRunning
		    'app.doevents
		    'wend
		    '#endif
		    'Port öffnen
		    if aSerial(SubChannelCount).Open then
		      aChannels(ChannelCount).Blocked = False
		      Return "0"
		    else
		      'If Commport not available reduce Serial Ports an Channel Array to the Size before this function was called
		      'aChannels(ChannelCount) = Nil
		      'Redim aChannels(ChannelCount-1)
		      'aSerial(SubChannelCount) = Nil
		      'Redim aSerial(SubChannelCount-1)
		      Return "-RS232 channel is in use or not present"
		    end
		  end
		  
		  'Params Format TCP
		  '1,Name as String, Address as string, Port as Integer
		  ' **************************** TCP **************************************
		  'Wenn 4 Parameter übermittelt werden dann TCP Port öffnen
		  '**************************************************************************
		  if ParamCount = 4 and NthField(Params,",",1) = "1" then
		    'Channel als TCPChannel markieren
		    aChannels(ChannelCount).Type = 1
		    
		    'Name zuweisen
		    aChannels(ChannelCount).Name = NthField(Params,",",2)
		    
		    'TCP Array erweitern
		    SubChannelCount = UBound(aTCP)+1
		    Redim aTCP(SubChannelCount)
		    //Type und Name aus Parameter entfernen
		    tmp = Right(Params,len(Params) - (len(aChannels(ChannelCount).Name) + len(str(aChannels(ChannelCount).Type)) + 2))
		    'Parameter speichern
		    aChannels(ChannelCount).Parameter = tmp
		    
		    'Neuen UDP Port erstellen und Parameter zweisen
		    aTCP(SubChannelCount) = new TTCPSock
		    aTCP(SubChannelCount).Name = NthField(Params,",",2)
		    
		    'Adresse
		    aTCP(SubChannelCount).Address = NthField(Params,",",3)
		    'Port
		    aTCP(SubChannelCount).Port = val(NthField(Params,",",4))
		    
		    'Port öffnen
		    aTCP(SubChannelCount).connect
		    
		    aChannels(ChannelCount).Blocked = False
		    Return "0"
		    
		  end
		  
		  'Params Format UDP
		  '2,Name as String, Group as string, Port as Integer, RouterHops as integer
		  ' **************************** UDP **************************************
		  'Wenn 5 Parameter übermittelt werden dann UDP Port öffnen
		  '**************************************************************************
		  if ParamCount = 5 and NthField(Params,",",1) = "2" then
		    'Channel als UDPChannel markieren
		    aChannels(ChannelCount).Type = 2
		    
		    'Name zuweisen
		    aChannels(ChannelCount).Name = NthField(Params,",",2)
		    
		    'UDP Array erweitern
		    SubChannelCount = UBound(aUDP)+1
		    Redim aUDP(SubChannelCount)
		    //Type und Name aus Parameter entfernen
		    tmp = Right(Params,len(Params) - (len(aChannels(ChannelCount).Name) + len(str(aChannels(ChannelCount).Type)) + 2))
		    'Parameter speichern
		    aChannels(ChannelCount).Parameter = tmp
		    
		    'Neuen UDP Port erstellen und Parameter zweisen
		    aUDP(SubChannelCount) = new TUDPSock
		    aUDP(SubChannelCount).Name = NthField(Params,",",2)
		    
		    'Target
		    aUDP(SubChannelCount).Target = NthField(Params,",",3)
		    'Port
		    aUDP(SubChannelCount).Port = val(NthField(Params,",",4))
		    'RouterHops
		    aUDP(SubChannelCount).RouterHops = val(NthField(Params,",",5))
		    aUDP(SubChannelCount).SendToSelf = False
		    
		    
		    'Port öffnen
		    aUDP(SubChannelCount).connect
		    if aUDP(SubChannelCount).IsConnected then
		      aChannels(ChannelCount).Blocked = False
		      Return "0"
		    else
		      'If UDP connection not available reduce aUDP Channel Array to the Size before this function was called
		      aChannels(ChannelCount) = Nil
		      Redim aChannels(ChannelCount-1)
		      aUDP(SubChannelCount) = Nil
		      Redim aUDP(SubChannelCount-1)
		      Return "-1005"
		    end
		  end
		  
		  'Params Format SMTP
		  '3,Name as String, Server as string (9) From Address as string (9) Username as string (9) Password as string(9)
		  ' **************************** UDP **************************************
		  'Wenn 3 Parameter übermittelt werden dann SMTP Port öffnen
		  if ParamCount = 3 and NthField(Params,",",1) = "3" then
		    'Channel als SMTPChannel markieren
		    aChannels(ChannelCount).Type = 3
		    
		    'Name zuweisen
		    aChannels(ChannelCount).Name = NthField(Params,",",2)
		    
		    'SMTP Array erweitern
		    SubChannelCount = UBound(aSMTP)+1
		    Redim aSMTP(SubChannelCount)
		    //Type und Name aus Parameter entfernen
		    tmp = NthField(Params,",",3)
		    'Parameter speichern
		    aChannels(ChannelCount).Parameter = tmp
		    
		    'Neuen SMTP Port erstellen und Parameter zweisen
		    aSMTP(SubChannelCount) = new TSMTPSock
		    aSMTP(SubChannelCount).Name = NthField(Params,",",2)
		    
		    'Server Adr
		    aSMTP(SubChannelCount).address = NthField(tmp,chr(7),1)
		    aSMTP(SubChannelCount).port = 25
		    aSMTP(SubChannelCount).fromAddress = NthField(tmp,chr(7),2)
		    aSMTP(SubChannelCount).username = NthField(tmp,chr(7),3)
		    aSMTP(SubChannelCount).password = NthField(tmp,chr(7),4)
		    aChannels(ChannelCount).Blocked = False
		    
		    Return "0"
		  end
		  //Wenn Ungültige Parameteranzahl
		  aChannels(ChannelCount) = Nil
		  Redim aChannels(ChannelCount-1)
		  return "-1004"  'Invalid number of parameters
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadIOManIni()
		  Dim MyIni as New TIniFile
		  Dim f as FolderItem
		  
		  dim b as boolean
		  
		  f = GetFolderItem( ioIniPath + "Node.ini")
		  b = MyIni.OpenIni(f)
		  
		  
		  AvailableCommports = MyIni.iniReadString( "AvailableCommports","")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RefreshCommportList() As string
		  'Get all available Commports by scanning the system and store them to them in the Property AvailableCommports
		  'On Systems with much commports this could take a long time
		  
		  Dim i,count As Integer
		  
		  
		  //delete Commports Array
		  AvailableCommports = ""
		  
		  //Detect number of RS232Ports on the System
		  frmSplash.lblStatus.Text = "counting serial ports ..."
		  'app.DoEvents
		  frmSplash.Show
		  frmSplash.Refresh
		  'app.DoEvents
		  
		  count = System.SerialPortCount-1
		  for i = 0 to Count
		    frmSplash.lblStatus.Text = "opening serial port " + str(1+i) + " of " + str(count+1) + " ..."
		    frmSplash.Refresh
		    'app.DoEvents
		    AvailableCommports = AvailableCommports + System.SerialPort(i).Name + ","
		    'app.DoEvents
		  next
		  frmSplash.Close
		  AvailableCommports = DeleteLastChar(AvailableCommports,",")
		  WriteIOManIni
		  Return AvailableCommports
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetEnableEvents(ChannelName as string,Status as boolean) As boolean
		  dim i,id as integer
		  
		  id = GetChannelidxByName(ChannelName)
		  if id >= 0 then
		    for i = 0 to UBound(aSerial)
		      if aSerial(i).Name = ChannelName then
		        aSerial(i).FireDataAvailable = Status
		        Return true
		      end
		    next
		    return false
		  else
		    Return false
		  end
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLearnEventChannel(Channel as string, Status as boolean)
		  dim c,i as integer
		  
		  
		  c = GetChannelidxByName(Channel)
		  if c > -1 then
		    
		    mLearnEventChannel = Channel
		    if Status = false then
		      //Wenn Event Channel nicht mehr scharf geschaltet sein soll 
		      mLearnEventChannel = ""
		      
		      //Wenn es zu dem Channel einen Event gibt, dann Status wieder auf true setzen damit DataAvailable ausgelöst wird
		      for i = 0 to UBound(aIOEvents)
		        if aIOEvents(i).ChannelName = Channel then
		          Status = true
		        end
		      next
		    end
		    
		    'if Channel is RS232
		    If aChannels(c).Type = 0 then
		      //SubchannelID finden und schreiben
		      for i = 0 to UBound(aSerial)
		        if aSerial(i).Name = aChannels(c).Name then
		          aSerial(i).FireDataAvailable = Status
		        end
		      next
		    end
		    
		    'if Channel is TCP
		    If aChannels(c).Type = 1 then
		      //SubchannelID finden
		      for i = 0 to UBound(aTCP)
		        if aTCP(i).Name = aChannels(c).Name then
		          aTCP(i).FireDataAvailable = Status
		        end
		      next
		    end
		    
		    'if Channel is UDP
		    If aChannels(c).Type = 2 then
		      //SubchannelID finden
		      for i = 0 to UBound(aUDP)
		        if aUDP(i).Name = aChannels(c).Name then
		          aUDP(i).FireDataAvailable = Status
		        end
		      next
		    end
		    
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetSyncPort(Port as string) As String
		  dim i as integer
		  dim tmp,P,s as string
		  
		  try
		    mSerialSync.Close
		    mSerialSync.SerialPort = nil
		  catch
		    
		  end try
		  
		  if Port = "" then Return "0"
		  //Port = Uppercase(Port)
		  P = Port
		  
		  // "," muss drann sein weil sonst if InStr(tmp,Port) nicht zwichen COM1 und COM10 unterscheiden kann
		  port=port+","
		  
		  
		  if pt_AllowSyncPlayback = true then
		    if Port <> "" then
		      
		      for i = 0 to UBound(aChannels)
		        tmp = aChannels(i).Parameter
		        //tmp = Uppercase(tmp)
		        
		        if InStr(tmp,Port) > 0 then Return "-1016"
		      next
		      if TargetWin32 then P = "\\.\"+P
		      if TargetMacOS then P = "/dev/tty." + P
		      
		      
		      try
		        mSerialSync = new TSerialSync
		        mSerialSync.SerialPort = System.SerialPort( P )
		        if mSerialSync.Open then
		          s = GetSyncPort
		          if s = "" then return "-1016"
		          Return "0"
		        else
		          mSerialSync = nil
		          return "-1016"
		        end
		      catch
		        return "-1016"
		      end try
		    end
		  else
		    Return "-1019"
		  end
		  
		  
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnblockAllChannels()
		  dim i as integer
		  
		  for i = 0 to UBound(aChannels)
		    aChannels(i).Blocked = false
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnBlockChannels(ChannelList as string)
		  dim i,idx as integer
		  
		  for i = 1 to CountFields(ChannelList,",")
		    idx = GetChannelidxByName(NthField(ChannelList,",",i))
		    if idx > -1 then aChannels(idx).Blocked = false
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WriteChannels(sChannels as string, Data as String, Timeout as integer, termChar as string, AckLen as integer, SyncBox as boolean) As TResult
		  'Writes Data to Device specified by Cannel and Target
		  Dim i,c,id,L, count, ChannelIDs(-1) as Integer
		  Dim cres as New TResult
		  dim res as string
		  dim msg as Datagram
		  dim bDataAvailable(-1),bAbort as boolean
		  dim bFirstUdpAck(-1) As Boolean
		  
		  
		  
		  bAbort = false
		  //Check if Sync Play Allowed (Pro Version)
		  if Globals.pt_AllowSyncPlayback = false then
		    //If Basic Version then use only one Channel
		    sChannels = NthField(sChannels,",",1)
		  end
		  
		  'Check if valid Channels and get ChannelIDs and Targets
		  for i = 1 to CountFields(sChannels,",")
		    id = GetChannelidxByName(NthField(sChannels,",",i))
		    if id > -1 then
		      c = UBound(ChannelIDs) + 1
		      redim ChannelIDs(c)
		      ChannelIDs(c) = id
		    else
		      cres.ErrorNum = -1003
		      cres.Resultmsg =  "Channel not found"
		      Return cres
		    end
		  next
		  
		  
		  //check if one of the channels is blocked
		  for i = 0 to UBound(ChannelIDs)
		    if aChannels(ChannelIDs(i)).Blocked then 
		      cres.ErrorNum = -1002
		      cres.Resultmsg = "Channel is Blocked"
		      Return cres
		    end
		  next
		  
		  //Convert Timeout ms to Ticks
		  if Timeout > 0 then Timeout = (Timeout / 10) + 1
		  
		  //schreiben vorbereiten und Channel blocken
		  for i = 0 to UBound(ChannelIDs)
		    aChannels(ChannelIDs(i)).Blocked = true
		  next
		  
		  
		  //Flush Channels
		  for c = 0 to UBound(ChannelIDs)
		    
		    'if Channel is RS232
		    If aChannels(ChannelIDs(c)).Type = 0 then
		      //SubchannelID finden
		      for i = 0 to UBound(aSerial)
		        if aSerial(i).Name = aChannels(ChannelIDs(c)).Name then
		          //Empty Rec Buffer
		          res = aSerial(i).EmptyBuff
		          exit
		        end
		      next
		    end
		    
		    'if Channel is TCP
		    If aChannels(ChannelIDs(c)).Type = 1 then
		      //SubchannelID finden
		      for i = 0 to UBound(aTCP)
		        if aTCP(i).Name = aChannels(ChannelIDs(c)).Name then
		          if aTCP(i).IsConnected = true then
		            //Empty Rec Buffer
		            res = aTCP(i).EmptyBuff
		          else
		            cres.ErrorNum = -1016
		            cres.Resultmsg = "No connection to Server"
		            aChannels(ChannelIDs(c)).Blocked = false
		             aTCP(i).connect
		            Return cres
		          end
		          exit
		        end
		      next
		    end
		    
		    'if Channel is UDP
		    If aChannels(ChannelIDs(c)).Type = 2 then
		      //SubchannelID finden
		      for i = 0 to UBound(aUDP)
		        if aUDP(i).Name = aChannels(ChannelIDs(c)).Name then
		          //Empty Rec Buffer
		          res = aUDP(i).EmptyBuff
		          exit
		        end
		      next
		    end
		  next
		  
		  //Wait for Sync
		  
		  if mSerialSync.SerialPort <> nil and SyncBox = true then
		    count = 0
		    do
		      app.SleepCurrentThread(2)
		      Count = count + 1
		    loop until (mSerialSync.ClearToSend = true) or (count > 50)
		    
		    do
		      app.SleepCurrentThread(2)
		      Count = count + 1
		    loop until (mSerialSync.ClearToSend = false) or (count > 50)
		    
		    if count > 50 then
		      cres.ErrorNum = -1015
		      cres.Resultmsg = "No Sync from SyncBox detected"
		      UnBlockChannels(sChannels)
		      return cres
		    end
		  end
		  
		  redim bDataAvailable(UBound(ChannelIDs))
		  //send the data
		  for c = 0 to UBound(ChannelIDs)
		    'if Channel is RS232
		    If aChannels(ChannelIDs(c)).Type = 0 then
		      //SubchannelID finden und schreiben
		      for i = 0 to UBound(aSerial)
		        if aSerial(i).Name = aChannels(ChannelIDs(c)).Name then
		          //Write the Data
		          bDataAvailable(c) =  aSerial(i).FireDataAvailable
		          aSerial(i).FireDataAvailable = false
		          aSerial(i).write(Data)
		          exit
		        end
		      next
		    end
		    
		    
		    'if Channel is TCP
		    If aChannels(ChannelIDs(c)).Type = 1 then
		      //SubchannelID finden
		      for i = 0 to UBound(aTCP)
		        if aTCP(i).Name = aChannels(ChannelIDs(c)).Name then
		          bDataAvailable(c) =  aTCP(i).FireDataAvailable
		          aTCP(i).FireDataAvailable = false
		          aTCP(i).write(Data)
		          aTCP(i).Flush
		          exit
		        end
		      next
		    end
		    
		    
		    'if Channel is UDP
		    If aChannels(ChannelIDs(c)).Type = 2 then
		      //SubchannelID finden
		      for i = 0 to UBound(aUDP)
		        if aUDP(i).Name = aChannels(ChannelIDs(c)).Name then
		          bDataAvailable(c) =  aUDP(i).FireDataAvailable
		          aUDP(i).FireDataAvailable = false
		          aUDP(i).Write(aUDP(i).Target, Data)
		          //app.DoEvents
		          exit
		        end
		      next
		    end
		    
		    'if Channel is SMTP
		    If aChannels(ChannelIDs(c)).Type = 3 then
		      //SubchannelID finden
		      for i = 0 to UBound(aSMTP)
		        if aSMTP(i).Name = aChannels(ChannelIDs(c)).Name then
		          bDataAvailable(c) =  aSMTP(i).FireDataAvailable
		          aSMTP(i).FireDataAvailable = false
		          // No Ack
		          Timeout = 0
		          aSMTP(i).Sendmsg(Data)
		          exit
		        end
		      next
		    end
		  next
		  
		  //Read ACK
		  //Convert Hex String to String
		  termChar = HexStringToString(termChar)
		  if termChar = "" then termChar = "Dies ist ein unmoeglicher Termchar und somit ist AckLen für die Loop Until Bedingung verantwortlich"
		  count = 0
		  
		  L = Len(termChar)
		  //Wenn AckLen 0 dann den Wert hochsetzen damit die loop until Bedingung funktioniert
		  if AckLen = 0 then AckLen = 999999999
		  
		  //Array für UDP Channels erstellen (wird nur benötigt wenn an Broadcast Adresse gesendet wird)
		  ReDim bFirstUdpAck(UBound(ChannelIDs))
		  
		  for c = 0 to UBound(ChannelIDs)
		    //UDP Channel First Ack auf false setzen (wird nur benötigt wenn an Broadcast Adresse gesendet wird)
		    bFirstUdpAck(c) = true
		    
		    if bAbort = true then exit
		    if Timeout > 0 then
		      res = ""
		      do
		        //if Serial Channel
		        If aChannels(ChannelIDs(c)).Type = 0 then 
		          //SubchannelID finden und lesen
		          for i = 0 to UBound(aSerial)
		            if aSerial(i).Name = aChannels(ChannelIDs(c)).Name then
		              res = res + aSerial(i).ReadAll
		              'app.DoEvents
		              exit
		            end
		          next
		        end
		        //If TCP Channel
		        if aChannels(ChannelIDs(c)).Type = 1 then 
		          //SubchannelID finden und lesen
		          for i = 0 to UBound(aTCP)
		            if aTCP(i).Name = aChannels(ChannelIDs(c)).Name then
		              aTCP(i).Poll
		              res = res + aTCP(i).ReadAll
		              'app.DoEvents
		              exit
		            end
		          next
		        end
		        
		        //If UDP Channel
		        If aChannels(ChannelIDs(c)).Type = 2 then 
		          //SubchannelID finden und lesen
		          for i = 0 to UBound(aUDP)
		            if aUDP(i).Name = aChannels(ChannelIDs(c)).Name then
		              aUDP(i).Poll
		              msg = aUDP(i).Read
		              //Nicht von eigener Adresse lesen (bei Broadcasts)
		              if msg <> nil then
		                if msg.Address = aUDP(i).LocalAddress then msg.Data = ""
		                //Wenn an Broadcast Adresse gesendet wird, dann ist das erste empfangene Datagramm das, was gesendet wurde
		                //um das Acknowledge zu lesen muss dieses verworfen werden und erst das zweite Datagramm enthaelt das ACK
		                'if (aUDP(i).Target = aUDP(i).BroadcastAddress) and (bFirstUdpAck(c) = True) then
		                'if msg <> nil then
		                'msg.Data = ""
		                '//msg = nil
		                'bFirstUdpAck(c) = False
		                'end
		                'end
		                res = res + msg.Data
		              end
		              'app.DoEvents
		              exit
		            end
		          next
		        end
		        ThreadSleep(10)
		        count = count +1
		        if aChannels(ChannelIDs(c)).Blocked = false then bAbort = true
		      loop until (Right(res,L) = termChar) or (Count > Timeout) or (Len(res) >= AckLen) or (bAbort = true)
		      
		    end
		    // Fire Data Available Events zurück setzten
		    If aChannels(ChannelIDs(c)).Type = 0 then 
		      //SubchannelID finden und schreiben
		      for i = 0 to UBound(aSerial)
		        if aSerial(i).Name = aChannels(ChannelIDs(c)).Name then
		          aSerial(i).FireDataAvailable =  bDataAvailable(c)
		          exit
		        end
		      next
		    end
		    If aChannels(ChannelIDs(c)).Type = 1 then 
		      for i = 0 to UBound(aTCP)
		        if aTCP(i).Name = aChannels(ChannelIDs(c)).Name then
		          aTCP(i).FireDataAvailable =  bDataAvailable(c)
		          exit
		        end
		      next
		    end
		    if aChannels(ChannelIDs(c)).Type = 2 then 
		      for i = 0 to UBound(aUDP)
		        if aUDP(i).Name = aChannels(ChannelIDs(c)).Name then
		          aUDP(i).FireDataAvailable =  bDataAvailable(c)
		          exit
		        end
		      next
		    end
		    aChannels(ChannelIDs(c)).Blocked = false
		    
		  next
		  //Return
		  if bAbort = true then
		    cres.ErrorNum = -1017
		    cres.Resultmsg = "Task Stoped"
		    Return cres
		  end
		  
		  if Count > Timeout then
		    cres.ErrorNum = -1014
		    cres.Resultmsg = "Timeout"
		    Return cres
		  else
		    cres.ErrorNum = 0
		    cres.Resultmsg = res
		    Return cres
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub WriteIOManIni()
		  Dim MyIni as New TIniFile
		  Dim f as FolderItem
		  
		  
		  MyIni.iniWriteString("AvailableCommports",AvailableCommports )
		  f = GetFolderItem( ioIniPath + "Node.ini" )
		  MyIni.writeini(f)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private aChannels(-1) As TChannel
	#tag EndProperty

	#tag Property, Flags = &h0
		aIOEvents(-1) As TIOEvent
	#tag EndProperty

	#tag Property, Flags = &h21
		Private aSerial(-1) As TSerialSock
	#tag EndProperty

	#tag Property, Flags = &h0
		aSMTP(-1) As TSMTPSock
	#tag EndProperty

	#tag Property, Flags = &h21
		Private aTCP(-1) As TTCPSock
	#tag EndProperty

	#tag Property, Flags = &h21
		Private aUDP(-1) As TUDPSock
	#tag EndProperty

	#tag Property, Flags = &h21
		Private AvailableCommports As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ioIniPath As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLearnEventChannel As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSerialSync As TSerialSync
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
			Name="ioIniPath"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
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
