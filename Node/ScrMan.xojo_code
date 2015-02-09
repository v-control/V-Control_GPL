#tag Module
Protected Module ScrMan
	#tag Method, Flags = &h0
		Function AddCueset(Name as string, Type as string) As string
		  dim i as integer
		  
		  //Check if name exists
		  for i = 0 to UBound(aCuesets)
		    if aCuesets(i).Name = Name then Return "-4002"
		  next
		  
		  i = UBound(aCuesets) + 1
		  ReDim aCuesets(i)
		  
		  aCuesets(i) = New TCueset
		  aCuesets(i).Name = Name
		  aCuesets(i).Type = Type
		  if aCuesets(i).Type = "Cueset" then aCuesets(i).Source = ""
		  if aCuesets(i).Type = "Timestrip" then aCuesets(i).Source = ""
		  
		  
		  
		  dim f as FolderItem
		  Dim SourceStream as TextInputStream
		  
		  
		  //Interpreter von Datei laden
		  if aCuesets(i).Type = "Cuelist" then
		    f = GetFolderItem(globals.InterpreterPath)
		    SourceStream = TextInputStream.Open(f)
		    aCuesets(i).Source = ""
		    if SourceStream <> nil then
		      //Source File komplett in Speicher einlesen
		      while not SourceStream.EOF
		        aCuesets(i).Source = aCuesets(i).Source + SourceStream.ReadLine+chr(13)
		      wend
		      
		      SourceStream.Close
		    else
		      MsgBox("Fatal Error: File Inetrpreter.bas missing in V-Control directory. Terminate!")
		      Quit
		    end
		  end
		  
		  if aCuesets(i).Type = "Timestrip" then
		    f = GetFolderItem(globals.TimestripInterpreterPath)
		    SourceStream = TextInputStream.Open(f)
		    aCuesets(i).Source = ""
		    if SourceStream <> nil then
		      //Source File komplett in Speicher einlesen
		      while not SourceStream.EOF
		        aCuesets(i).Source = aCuesets(i).Source + SourceStream.ReadLine+chr(13)
		      wend
		      
		      SourceStream.Close
		    else
		      MsgBox("Fatal Error: File Timestrip.bas missing in V-Control directory. Terminate!")
		      Quit
		    end
		  end
		  
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AddGlobalVar(Name as string) As string
		  dim i as integer
		  
		  for i = 0 to UBound(aGlobalVar)
		    if aGlobalVar(i).Name = Name then return "-4013"
		  next
		  
		  i = UBound(aGlobalVar) + 1
		  ReDim aGlobalVar(i)
		  aGlobalVar(i) = new TGlobalVar
		  aGlobalVar(i).Name = Name
		  return "0"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ChangeChannelNameInScripts(strOldChannelName as string, strNewChannelName as string) As integer
		  //RunCmd("All_DVD_Player","dvd1,dvd2,dvd3,dvd4","Still","","","","","","")
		  
		  dim CSidx, LineNum, FindPos, count As Integer
		  dim strOldSource, strNewSource, strLine as string
		  
		  //Check that no cueset is running
		  for CSidx = 0 to UBound(aCuesets)
		    if aCuesets(CSidx).IsBlocked = true then Return -4012
		  next
		  
		  count = 0
		  for CSidx = 0 to UBound(aCuesets)
		    strOldSource = aCuesets(CSidx).Source
		    strNewSource = ""
		    //Zeilen durchsuchen
		    for LineNum = 1 to CountFields(strOldSource,chr(13))
		      strLine = NthField(strOldSource,chr(13),LineNum)
		      FindPos = InStr(strLine,"RunCmd")
		      //Wenn RunCmd gefunden
		      if FindPos > 0 then
		        FindPos = InStr(strLine,strOldChannelName)
		        if FindPos > 0 then
		          strLine = Replace(strLine,strOldChannelName,strNewChannelName)
		          count = count + 1
		        end
		      end
		      strNewSource = strNewSource + strLine + chr(13)
		    next
		    aCuesets(CSidx).Source = strNewSource
		  next
		  
		  Return Count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ChangeDeviceNameInScripts(strOldDeviceName as string, strNewDeviceName as string) As integer
		  //RunCmd("All_DVD_Player","dvd1,dvd2,dvd3,dvd4","Still","","","","","","")
		  
		  dim CSidx, LineNum, FindPos, count As Integer
		  dim strOldSource, strNewSource, strLine as string
		  
		  //Check that no cueset is running
		  for CSidx = 0 to UBound(aCuesets)
		    if aCuesets(CSidx).IsBlocked = true then Return -4012
		  next
		  
		  count = 0
		  for CSidx = 0 to UBound(aCuesets)
		    //Change Cuesets
		    if aCuesets(CSidx).Type = "Cueset" then
		      strOldSource = aCuesets(CSidx).Source
		      strNewSource = ""
		      //Zeilen durchsuchen
		      for LineNum = 1 to CountFields(strOldSource,chr(13))
		        strLine = NthField(strOldSource,chr(13),LineNum)
		        FindPos = InStr(strLine,"RunCmd")
		        //Wenn RunCmd gefunden
		        if FindPos > 0 then
		          FindPos = InStr(strLine,strOldDeviceName)
		          if FindPos > 0 then
		            strLine = Replace(strLine,strOldDeviceName,strNewDeviceName)
		            count = count + 1
		          end
		        end
		        strNewSource = strNewSource + strLine + chr(13)
		      next
		      aCuesets(CSidx).Source = strNewSource
		    end
		    // Change Cuelists
		    if aCuesets(CSidx).Type = "Cuelist" then
		      strOldSource = aCuesets(CSidx).Script
		      strNewSource = ""
		      //Zeilen durchsuchen
		      for LineNum = 1 to CountFields(strOldSource,chr(13))
		        strLine = NthField(strOldSource,chr(13),LineNum)
		        FindPos = InStr(strLine,strOldDeviceName )
		        //Wenn RunCmd gefunden
		        if FindPos > 0 then
		          strLine = Replace(strLine,strOldDeviceName,strNewDeviceName)
		          count = count + 1
		        end
		        strNewSource = strNewSource + strLine + chr(13)
		      next
		      strNewSource = DeleteLastChar(strNewSource,chr(13))
		      aCuesets(CSidx).Script = strNewSource
		    end
		  next
		  
		  Return Count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CompileCueset(Cuesetname as string) As string
		  dim i as integer
		  
		  i = GetCuesetIdByName(Cuesetname)
		  
		  if i = -1 then Return "-4001"
		  
		  aCuesets(i).PreCompile
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CopyCueset(CuesetName as string) As string
		  dim i as integer
		  
		  
		  i = GetCuesetIdByName(CuesetName)
		  
		  if i < 0 then Return "-4001"
		  if aCuesets(i).Type = "Cueset" then
		    CuesetClipboard = aCuesets(i).Source
		  end
		  
		  if aCuesets(i).Type = "Cuelist" then
		    CuesetClipboard = aCuesets(i).Script
		  end
		  
		  if aCuesets(i).Type = "Timestrip" then
		    CuesetClipboard = aCuesets(i).CuesetParams + chr(3)
		    CuesetClipboard = CuesetClipboard  + aCuesets(i).Script
		    Return "0"
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CutCueset(CuesetName as string) As string
		  dim i as integer
		  
		  try
		    i = GetCuesetIdByName(CuesetName)
		    
		    if i < 0 then Return "-4001"
		    
		    if aCuesets(i).IsBlocked then Return "-4004"
		    
		    if aCuesets(i).Type = "Cueset" then
		      CuesetClipboard = aCuesets(i).Source
		      aCuesets.Remove(i)
		      Return "0"
		    end
		    
		    if aCuesets(i).Type = "Cuelist" then
		      CuesetClipboard = aCuesets(i).Script
		      aCuesets.Remove(i)
		      Return "0"
		    end
		    
		    if aCuesets(i).Type = "Timestrip" then
		      CuesetClipboard = aCuesets(i).CuesetParams + chr(3)
		      CuesetClipboard = CuesetClipboard  + aCuesets(i).Script
		      aCuesets.Remove(i)
		      Return "0"
		    end
		    
		  Exception
		    MsgBox("Shit")
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCuesetIdByName(Name as string) As integer
		  dim i as Integer
		  
		  for i = 0 to UBound(aCuesets)
		    if aCuesets(i).Name = Name then Return i
		  next
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCuesetParams(CuesetName as string) As string
		  dim i as Integer
		  
		  
		  i  = ScrMan.GetCuesetIdByName(Cuesetname)
		  if i = -1 then Return "-4001"
		  
		  Return aCuesets(i).CuesetParams
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCuesetScript(Cuesetname as string) As string
		  dim i as Integer
		  
		  
		  i  = ScrMan.GetCuesetIdByName(Cuesetname)
		  if i = -1 then Return "-4001"
		  
		  if aCuesets(i).Type = "Cueset" then Return aCuesets(i).Source
		  if aCuesets(i).Type = "Cuelist" then Return aCuesets(i).Script
		  if aCuesets(i).Type = "Timestrip" then Return aCuesets(i).Script
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetGlobalVar(VarName as string) As string
		  dim i as integer
		  
		  i = GetGlobalVarIdByName(VarName)
		  
		  if i >= 0 then 
		    Return aGlobalVar(i).Value
		  else
		    Return ""
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetGlobalVarIdByName(VarName as string) As integer
		  dim i as integer
		  
		  for i = 0 to UBound(aGlobalVar)
		    if aGlobalVar(i).Name = VarName then Return i
		  next
		  
		  Return -4014
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetGlobalVarList() As string
		  dim i as integer
		  dim res as string
		  
		  res = ""
		  for i = 0 to UBound(aGlobalVar)
		    res = res + aGlobalVar(i).Name+chr(2)
		  next
		  
		  res = DeleteLastChar(res,chr(2))
		  Return res
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTaskList() As string
		  dim i as integer
		  dim res as string
		  
		  res = ""
		  for i = 0 to UBound(aCuesets)
		    res = res + aCuesets(i).Name + chr(2)
		  next
		  
		  res = DeleteLastChar(res,chr(2))
		  Return res
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HandleEngineEvent(EventSourceModule as string, EventSourceDevice as string, EventSourceChannel as string, EventType as string, EventData as string, EventCmd as string)
		  
		  //EventSourceModule = IOMan, DevMan, ScrMan,NodeIF
		  //EventSourceDevice = DeviceName, NodeIF Devices(TCPRemoteServer, UDPRemoteServer, RS232RemoteServer)
		  //EventSourceChannel = Channel List
		  //EventType = CompileError, ACK, iAck, NAK, Timeout, Event, Message,CuesetMsg,CatchError(zeigt fehler z.B. "-2002" der abgefangen wurde)
		  //EventData = The Event Message
		  //EventCmd
		  
		  
		  frmMain.HandleEngineEvent(EventsourceModule, EventSourceDevice,EventSourceChannel ,EventType,EventData, EventCmd)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init()
		  dim res as string
		  dim i as integer
		  
		  
		  //Init CuesetLaunchTimer
		  'if CuesetLaunchTimer = nil then
		  'CuesetLaunchTimer = New TCuesetLaunchTimer
		  'CuesetLaunchTimer.Period = 100
		  'CuesetLaunchTimer.Mode = 2
		  'end
		  
		  
		  //Init CalendarEventTimer
		  if CalendarEventTimer = nil then
		    CalendarEventTimer = New TCalendarEventTimer
		    CalendarEventTimer.Period = 1000
		    CalendarEventTimer.Mode = 2
		  end
		  
		  
		  
		  
		  //Set maximum Tasks,Channels,synchronous control
		  
		  Globals.pt_AllowSyncPlayback = true
		  Globals.pt_MaxChannels = 96
		  Globals.pt_MaxThreads = 32
		  
		  
		  
		  ThreadPoolManager.InitializePool(Globals.pt_MaxThreads )
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NewProject() As string
		  dim res as string
		  dim i as integer
		  
		  //Cuset Run Pipeline löschen
		  
		  
		  TimerEvents.ClearAllTimerEvents
		  Calendar.ClearAllEvents
		  
		  DevMan.ClearDeviceArray
		  IOMan.ClearIOEvents
		  
		  res = IOMan.DeleteAllChannels
		  
		  for i = UBound(aCuesets) DownTo 0
		    aCuesets(i).Reset
		    aCuesets(i) = nil
		    aCuesets.Remove(i)
		  next
		  for i = UBound(aPlaylistItems) DownTo 0
		    aPlaylistItems(i) = Nil
		    aPlaylistItems.Remove(i)
		  next
		  
		  for i = UBound(aCallButtonItems) DownTo 0
		    aCallButtonItems(i) = nil
		    aCallButtonItems.Remove(i)
		  next
		  
		  DevMan.ClearEventList
		  SetGlobalVarList("")
		  Return res
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OnClose()
		  dim i as integer
		  
		  
		  for i = 0 to UBound(aCuesets)
		    StopCueset(aCuesets(i).Name)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PasteCueset(Name as string, Type as string) As string
		  
		  dim i as integer
		  
		  dim res as string
		  
		  res = AddCueset(Name,Type)
		  //Check if name exists 
		  if res = "-4002" then Return res
		  
		  i = GetCuesetIdByName(Name)
		  if i >= 0 then
		    
		    if aCuesets(i).Type = "Cueset" then
		      aCuesets(i).Source = CuesetClipboard
		    end
		    if aCuesets(i).Type = "Cuelist" then
		      aCuesets(i).Script = CuesetClipboard
		    end
		    
		    if aCuesets(i).Type = "Timestrip" then
		      aCuesets(i).CuesetParams = NthField(CuesetClipboard,chr(3),1)
		      aCuesets(i).Script = NthField(CuesetClipboard,chr(3),2)
		    end
		    Return "0"
		  end
		  
		  Return("-4002")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveCueset(CuesetName As string) As string
		  dim i as integer
		  
		  
		  i = GetCuesetIdByName(CuesetName)
		  
		  if i < 0 then Return "-4001"
		  
		  if aCuesets(i).IsBlocked then Return "-4004"
		  
		  aCuesets.Remove(i)
		  Return "0"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveGlobalVar(Name as string) As string
		  dim i as integer
		  
		  for i = 0 to UBound(aGlobalVar)
		    if aGlobalVar(i).Name = Name then 
		      aGlobalVar.Remove(i)
		      Return "0"
		    end
		  next
		  
		  return "-4014"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RenameCueset(OldName as string, NewName as string) As string
		  dim i as integer
		  dim FindCueset as boolean
		  
		  //Check if NewName exists
		  for i = 0 to UBound(aCuesets)
		    if aCuesets(i).Name = NewName then Return "-4002"
		  next
		  
		  //Check if OldName exists
		  FindCueset = false
		  for i = 0 to UBound(aCuesets)
		    if aCuesets(i).Name = OldName then FindCueset = true
		  next
		  
		  if FindCueset = False then Return "-4001"
		  
		  i = GetCuesetIdByName(OldName)
		  if i > -1 then aCuesets(i).Name = NewName
		  
		  //Rename the Cueset in Playlists
		  for i = 0 to UBound(aPlaylistItems)
		    if aPlaylistItems(i).CuesetName = OldName then aPlaylistItems(i).CuesetName = NewName
		  next
		  
		  //Rename EventHandler
		  for i = 0 to UBound(DevMan.EventList)
		    if DevMan.EventList(i).CuesetName = OldName then DevMan.EventList(i).CuesetName = NewName
		  next
		  
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RunCueset(CuesetName as string, StartLine as integer) As string
		  dim i as integer
		  dim res as string
		  
		  if StartLine < 1 then StartLine = 1
		  i = GetCuesetIdByName(CuesetName)
		  
		  if i >= 0 then
		    
		    //Wenn Timeline oder Timestrip dann Start auf default wert setzen
		    aCuesets(i).CuesetContext.CurrentStartTC = ""
		    aCuesets(i).StartLine = StartLine
		    aCuesets(i).ChildCueset = ""
		    res = ThreadPoolManager.RunThread(ScrMan.aCuesets(i),CuesetName)
		    Return res
		    
		  else
		    Return "Task not found " + CuesetName
		  end
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function scrdb_OpenProject(DatabaseFilePath as string) As string
		  //Creates a new Device from DeviceDataBase
		  dim i,c as integer
		  dim rsCmd as RecordSet
		  dim rs as RecordSet
		  dim ssql,res,s as String
		  dim f as FolderItem
		  dim ID,tmp,DeviceName,DriverName,Category,Helptext,DeviceScript,CuesetParams as string
		  dim DP1Name, DP1MinMaxDef,DP1Default, DP1Mask, DP2Name, DP2MinMaxDef,DP2Default, DP2Mask as string
		  Dim DP1GUIType, DP2GUIType,DeviceGUI,Manufactor,Channels as string
		  
		  
		  
		  // database
		  try
		    f = GetFolderItem( DatabaseFilePath )
		    if f <> nil then
		      ScrDB = nil
		      res = NewProject
		      if res <> "0" then Return res
		      //open new database
		      ScrDB=New REALSQLdatabase
		      ScrDB.databaseFile=f
		      If not ScrDB.Connect then Return "-4008"
		      
		    else
		      Return "-4007"
		    end
		  Exception
		    Return "-4007"
		  end
		  
		  if ScrDB = nil then Return "-4008"
		  
		  res = ScrMan.NewProject
		  try
		    //************ read Ini ******************
		    
		    //Read Database version
		    ssql = "SELECT * FROM Ini WHERE Name = 'Database Version'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      //Get Database Version
		      res = rs.Field("Value")
		      if res <> cnt_ScriptDatabaseVersion then 
		        if res = "3.0.4" then
		          ScrDB.Close
		          ScrDB = nil
		          Return scrdb_OpenProject304(DatabaseFilePath)
		        end
		      end
		    else
		      Return "-4015"
		    end
		    
		    //Read Channels
		    ssql = "SELECT * FROM Ini WHERE Name = 'Channels'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      //Get Channels
		      res = rs.Field("Value")
		      for i = 1 to CountFields(res,chr(2)) step 3
		        s = NthField(res,chr(2),i+1) + ","
		        s = s + NthField(res,chr(2),i) + ","
		        s = s + NthField(res,chr(2),i+2)
		        //Open the Channel
		        HandleEngineEvent("ScrMan","","","Message","open Channel " + s,"")
		        s = IOMan.OpenChannel(s)
		        if s = "-1018" then HandleEngineEvent("ScrMan","","","Popup","Maximum channels exceeded, could not open channel " + NthField(res,chr(2),i),"")
		        app.YieldToNextThread
		      next
		    end
		    
		    //Read Sync Port
		    ssql = "SELECT * FROM Ini WHERE Name = 'SyncPort'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      //Get SyncPort
		      res = rs.Field("Value")
		      s = IOMan.SetSyncPort ( res )
		    end
		    
		    
		    //Read CalendarBaseEvents
		    ssql = "SELECT * FROM Ini WHERE Name = 'CalendarBaseEvents'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      res = rs.Field("Value")
		      Calendar.SetAllBaseEvents(res)
		    end
		    
		    //Read Timer Events
		    ssql = "SELECT * FROM Ini WHERE Name = 'TimerEvents'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      res = rs.Field("Value")
		      TimerEvents.SetAllTimerEvents(res)
		    end
		    
		    //Read Keyboard Events
		    ssql = "SELECT * FROM Ini WHERE Name = 'KeyboardEvents'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      res = rs.Field("Value")
		      KeyboardEvents.SetAllKeyboardEvents(res)
		    end
		    
		    //Read Global Vars
		    ssql = "SELECT * FROM Ini WHERE Name = 'GlobalVarList'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      res = rs.Field("Value")
		      SetGlobalVarList(res)
		    end
		    
		    
		    //************ read Devices ******************
		    ssql = "SELECT * FROM Device"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    
		    if rs <> nil then
		      //Get Device
		      while not rs.EOF
		        //Get Device Properties
		        ID =  rs.Field("ID")
		        DeviceName =  rs.Field("Name")
		        HandleEngineEvent("ScrMan","","","Message","reading Device " + DeviceName,"")
		        DriverName =  rs.Field("DriverName")
		        Category = rs.Field("Category")
		        Helptext = rs.Field("Helptext")
		        DeviceScript = rs.Field("Script")
		        DeviceGUI =  rs.Field("GuiId")
		        
		        DP1Name = rs.Field("DP1Name")
		        DP1GUIType = rs.Field("DP1GUIType")
		        DP1MinMaxDef = rs.Field("DP1MinMaxDef")
		        DP1Default = rs.Field("DP1Default")
		        DP1Mask = rs.Field("DP1Mask")
		        
		        DP2Name = rs.Field("DP2Name")
		        DP2GUIType = rs.Field("DP2GUIType")
		        DP2MinMaxDef = rs.Field("DP2MinMaxDef")
		        DP2Default = rs.Field("DP2Default")
		        DP2Mask = rs.Field("DP2Mask")
		        Manufactor = rs.Field("Manufactor")
		        Channels = rs.Field("Channels")
		        
		        //Create new device
		        s = DeviceName+chr(2)+Category+chr(2)+Helptext+chr(2)+DeviceScript+chr(2)+DP1Name+chr(2)+DP1GUIType+chr(2)+DP1MinMaxDef+chr(2)+DP1Default+chr(2)+DP1Mask+chr(2)+DP2Name+chr(2)+DP2GUIType+chr(2)+DP2MinMaxDef+chr(2)+DP2Default+chr(2)+DP2Mask+chr(2)+DeviceGUI+chr(2)+Manufactor+chr(2)+DriverName
		        res = DevMan.CreateDevice(s)
		        res = DevMan.SetIoChannels(DeviceName,Channels)
		        
		        '//************ read selected device Command ******************
		        ssql = "SELECT * FROM Commands Where DeviceID = '" + str(Id) +"'"
		        rsCmd = ScrDB.SQLSelect(ssql)
		        
		        i = DevMan.GetDeviceIdByName(DeviceName)
		        if rsCmd <> nil then
		          While not rsCmd.EOF
		            
		            //Params Order : DeviceName(2)CommandName(2)Scrip(2)Position(2)TabID(2)P1Name(2)P1GUIType(2)P1MinMaxDef(2)P1Mask(2)P1Default(2)
		            //                          P2Name(2)P2GUIType(2)P2MinMaxDef(2)P2Mask(2)P2Default(2)P3Name(2)P3GUIType(2)P3MinMaxDef(2)P3Mask(2)P3Default(2)
		            //                          P4Name(2)P4GUIType(2)P4MinMaxDef(2)P4Mask(2)P4Default(2)Timeout(2)AckCmd(2)NextCmd(2)AckString(2)AckLen
		            
		            res = DeviceName
		            tmp = rsCmd.Field("Name")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("Script")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("Position")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("TabID")
		            res = res + chr(2)+tmp
		            
		            tmp = rsCmd.Field("Params")
		            res = res + chr(2)+tmp
		            
		            tmp = rsCmd.Field("Timeout")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("AckCmd")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("NextCmd")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("AckString")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("AckLen")
		            res = res + chr(2)+tmp
		            
		            tmp = DevMan.CreateCommand(res)
		            rsCmd.MoveNext
		          wend
		          
		        end
		        
		        
		        rs.MoveNext
		      wend
		    end
		    
		    
		    //************ read Cuesets ******************
		    ssql = "SELECT * FROM Cuesets"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    
		    if rs <> nil then
		      //Get Cueset
		      dim csName,csType,csScript as string
		      while not rs.EOF
		        csName = rs.Field("Name")
		        HandleEngineEvent("ScrMan","","","Message","reading Cueset " + csName,"")
		        app.YieldToNextThread
		        csType = rs.Field("Type")
		        csScript = rs.Field("Script")
		        CuesetParams = rs.Field("Spare1")
		        res = ScrMan.AddCueset(csName,csType)
		        res = ScrMan.SetCuesetScript(csName,csScript)
		        res = ScrMan.SetCuesetParams(csName,CuesetParams)
		        rs.MoveNext
		      wend
		    end
		    
		    //************ read Playlist ******************
		    HandleEngineEvent("ScrMan","","","Message","reading Playlist ...","")
		    
		    ssql = "SELECT * FROM Playlist"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      //Get Playlistitem
		      while not rs.EOF
		        //Get Cueset Properties
		        c = UBound(aPlaylistItems) + 1
		        ReDim aPlaylistItems(c)
		        aPlaylistItems(c) = New TPlaylistItem
		        
		        aPlaylistItems(c).Keycode = rs.Field("Keycode")
		        aPlaylistItems(c).CuesetName = rs.Field("Cueset")
		        aPlaylistItems(c).Comment = rs.Field("Comment")
		        rs.MoveNext
		      wend
		      
		    end
		    
		    //************ read Call Buttons ******************
		    HandleEngineEvent("ScrMan","","","Message","reading Call Buttons ...","")
		    
		    ssql = "SELECT * FROM CallButtons"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      dim sActive as string
		      //Get CallButton Item
		      while not rs.EOF
		        //Get Cueset Properties
		        c = UBound(aCallButtonItems)+1
		        ReDim aCallButtonItems(c)
		        aCallButtonItems(c) = New TCallButtonItem
		        
		        aCallButtonItems(c).TaskName =  rs.Field("Cueset")
		        aCallButtonItems(c).Caption =  rs.Field("Caption")
		        sActive = rs.Field("Active")
		        if sActive = "1" then 
		          aCallButtonItems(c).Active =  True
		        else
		          aCallButtonItems(c).Active =  False
		        end
		        rs.MoveNext
		      wend
		      
		    end
		    
		    //************ read DevMan EventList ******************
		    HandleEngineEvent("ScrMan","","","Message","reading Eventlist ...","")
		    
		    ssql = "SELECT * FROM DevManEventList"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    dim it1,it2,it3,it4,it5,it6,it7,it8,it9,it10,it11 as string
		    
		    if rs <> nil then
		      //Get Eventlistitem
		      while not rs.EOF
		        it1 = rs.Field("DevName")
		        it2 = rs.Field("ChName")
		        it3 = rs.Field("EvtName")
		        it4 = rs.Field("CsName")
		        it5 = rs.Field("TermChar")
		        it6 = rs.Field("DP1")
		        it7 = rs.Field("DP2")
		        it8 = rs.Field("P1")
		        it9 = rs.Field("P2")
		        it10 = rs.Field("P3")
		        it11 = rs.Field("P4")
		        res = DevMan.AddEventListItem(it1,it2,it3,it4,it5,it6,it7,it8,it9,it10,it11)
		        rs.MoveNext
		      wend
		      
		    end
		    
		  Exception
		    Return "-4007"
		  end
		  
		  
		  ScrDB.Close
		  HandleEngineEvent("ScrMan","","","Message","Project loaded","")
		  app.YieldToNextThread
		  
		  Globals.ProjectChanged = False
		  return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function scrdb_OpenProject304(DatabaseFilePath as string) As string
		  //Creates a new Device from DeviceDataBase
		  dim i,c as integer
		  dim rsCmd as RecordSet
		  dim rs as RecordSet
		  dim ssql,res,s as String
		  dim f as FolderItem
		  dim ID,DeviceName,DriverName,Category,Helptext,DeviceScript,CuesetParams as string
		  dim DP1Name, DP1MinMaxDef,DP1Default, DP1Mask, DP2Name, DP2MinMaxDef,DP2Default, DP2Mask as string
		  Dim DP1GUIType, DP2GUIType,DeviceGUI,Manufactor,Channels,tmp as string
		  
		  
		  
		  // database
		  try
		    f = GetFolderItem( DatabaseFilePath )
		    if f <> nil then
		      ScrDB = nil
		      res = NewProject
		      if res <> "0" then Return res
		      //open new database
		      ScrDB=New REALSQLdatabase
		      ScrDB.databaseFile=f
		      If not ScrDB.Connect then Return "-4008"
		      
		    else
		      Return "-4007"
		    end
		  Exception
		    Return "-4007"
		  end
		  
		  if ScrDB = nil then Return "-4008"
		  
		  res = ScrMan.NewProject
		  try
		    //************ read Ini ******************
		    
		    //Read Database version
		    ssql = "SELECT * FROM Ini WHERE Name = 'Database Version'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      //Get Database Version
		      res = rs.Field("Value")
		      if res <> "3.0.4" then Return "-4015"
		    else
		      Return "-4015"
		    end
		    
		    //Read Channels
		    ssql = "SELECT * FROM Ini WHERE Name = 'Channels'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      //Get Channels
		      res = rs.Field("Value")
		      for i = 1 to CountFields(res,chr(2)) step 3
		        s = NthField(res,chr(2),i+1) + ","
		        s = s + NthField(res,chr(2),i) + ","
		        s = s + NthField(res,chr(2),i+2)
		        //Open the Channel
		        HandleEngineEvent("ScrMan","","","Message","open Channel " + s,"")
		        s = IOMan.OpenChannel(s)
		        if s = "-1018" then HandleEngineEvent("ScrMan","","","Popup","Maximum channels exceeded, could not open channel " + NthField(res,chr(2),i),"")
		      next
		    end
		    
		    //Read Sync Port
		    ssql = "SELECT * FROM Ini WHERE Name = 'SyncPort'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      //Get SyncPort
		      res = rs.Field("Value")
		      s = IOMan.SetSyncPort ( res )
		    end
		    
		    
		    //Read CalendarBaseEvents
		    ssql = "SELECT * FROM Ini WHERE Name = 'CalendarBaseEvents'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      res = rs.Field("Value")
		      Calendar.SetAllBaseEvents(res)
		    end
		    
		    //Read Timer Events
		    ssql = "SELECT * FROM Ini WHERE Name = 'TimerEvents'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      res = rs.Field("Value")
		      TimerEvents.SetAllTimerEvents(res)
		    end
		    
		    //Read Keyboard Events
		    ssql = "SELECT * FROM Ini WHERE Name = 'KeyboardEvents'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      res = rs.Field("Value")
		      KeyboardEvents.SetAllKeyboardEvents(res)
		    end
		    
		    //Read Global Vars
		    ssql = "SELECT * FROM Ini WHERE Name = 'GlobalVarList'"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      res = rs.Field("Value")
		      SetGlobalVarList(res)
		    end
		    
		    
		    //************ read Devices ******************
		    ssql = "SELECT * FROM Device"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    
		    if rs <> nil then
		      //Get Device
		      while not rs.EOF
		        //Get Device Properties
		        ID =  rs.Field("ID")
		        DeviceName =  rs.Field("Name")
		        HandleEngineEvent("ScrMan","","","Message","reading Device " + DeviceName,"")
		        DriverName =  rs.Field("DriverName")
		        Category = rs.Field("Category")
		        Helptext = rs.Field("Helptext")
		        DeviceScript = rs.Field("Script")
		        DeviceGUI =  rs.Field("GuiId")
		        
		        DP1Name = rs.Field("DP1Name")
		        DP1GUIType = rs.Field("DP1GUIType")
		        DP1MinMaxDef = rs.Field("DP1MinMaxDef")
		        DP1Default = rs.Field("DP1Default")
		        DP1Mask = rs.Field("DP1Mask")
		        
		        DP2Name = rs.Field("DP2Name")
		        DP2GUIType = rs.Field("DP2GUIType")
		        DP2MinMaxDef = rs.Field("DP2MinMaxDef")
		        DP2Default = rs.Field("DP2Default")
		        DP2Mask = rs.Field("DP2Mask")
		        Manufactor = rs.Field("Manufactor")
		        Channels = rs.Field("Channels")
		        
		        //Create new device
		        s = DeviceName+chr(2)+Category+chr(2)+Helptext+chr(2)+DeviceScript+chr(2)+DP1Name+chr(2)+DP1GUIType+chr(2)+DP1MinMaxDef+chr(2)+DP1Default+chr(2)+DP1Mask+chr(2)+DP2Name+chr(2)+DP2GUIType+chr(2)+DP2MinMaxDef+chr(2)+DP2Default+chr(2)+DP2Mask+chr(2)+DeviceGUI+chr(2)+Manufactor+chr(2)+DriverName
		        res = DevMan.CreateDevice(s)
		        res = DevMan.SetIoChannels(DeviceName,Channels)
		        
		        '//************ read selected device Command ******************
		        ssql = "SELECT * FROM Commands Where DeviceID = '" + str(Id) +"'"
		        rsCmd = ScrDB.SQLSelect(ssql)
		        
		        i = DevMan.GetDeviceIdByName(DeviceName)
		        if rsCmd <> nil then
		          While not rsCmd.EOF
		            
		            //Params Order : DeviceName(2)CommandName(2)Scrip(2)Position(2)TabID(2)P1Name(2)P1GUIType(2)P1MinMaxDef(2)P1Mask(2)P1Default(2)
		            //                          P2Name(2)P2GUIType(2)P2MinMaxDef(2)P2Mask(2)P2Default(2)P3Name(2)P3GUIType(2)P3MinMaxDef(2)P3Mask(2)P3Default(2)
		            //                          P4Name(2)P4GUIType(2)P4MinMaxDef(2)P4Mask(2)P4Default(2)Timeout(2)AckCmd(2)NextCmd(2)AckString(2)AckLen
		            
		            res = DeviceName
		            tmp = rsCmd.Field("Name")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("Script")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("Position")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("TabID")
		            res = res + chr(2)+tmp
		            
		            tmp = rsCmd.Field("P1Name")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P1GUIType")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P1MinMaxDef")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P1Mask")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P1Default")
		            res = res + chr(2)+tmp
		            
		            tmp = rsCmd.Field("P2Name")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P2GUIType")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P2MinMaxDef")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P2Mask")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P2Default")
		            res = res + chr(2)+tmp
		            
		            tmp = rsCmd.Field("P3Name")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P3GUIType")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P3MinMaxDef")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P3Mask")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P3Default")
		            res = res + chr(2)+tmp
		            
		            tmp = rsCmd.Field("P4Name")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P4GUIType")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P4MinMaxDef")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P4Mask")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("P4Default")
		            res = res + chr(2)+tmp
		            
		            tmp = rsCmd.Field("Timeout")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("AckCmd")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("NextCmd")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("AckString")
		            res = res + chr(2)+tmp
		            tmp = rsCmd.Field("AckLen")
		            res = res + chr(2)+tmp
		            
		            tmp = DevMan.CreateCommand(res)
		            rsCmd.MoveNext
		          wend
		          
		        end
		        
		        rs.MoveNext
		      wend
		    end
		    
		    
		    
		    //************ read Cuesets ******************
		    ssql = "SELECT * FROM Cuesets"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    
		    if rs <> nil then
		      //Get Cueset
		      dim csName,csType,csScript as string
		      while not rs.EOF
		        csName = rs.Field("Name")
		        HandleEngineEvent("ScrMan","","","Message","reading Cueset " + csName,"")
		        csType = rs.Field("Type")
		        csScript = rs.Field("Script")
		        CuesetParams = rs.Field("Spare1")
		        res = ScrMan.AddCueset(csName,csType)
		        res = ScrMan.SetCuesetScript(csName,csScript)
		        res = ScrMan.SetCuesetParams(csName,CuesetParams)
		        rs.MoveNext
		      wend
		    end
		    
		    //************ read Playlist ******************
		    HandleEngineEvent("ScrMan","","","Message","reading Playlist ...","")
		    
		    ssql = "SELECT * FROM Playlist"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    if rs <> nil then
		      //Get Playlistitem
		      while not rs.EOF
		        //Get Cueset Properties
		        c = UBound(aPlaylistItems) + 1
		        ReDim aPlaylistItems(c)
		        aPlaylistItems(c) = New TPlaylistItem
		        
		        aPlaylistItems(c).Keycode = rs.Field("Keycode")
		        aPlaylistItems(c).CuesetName = rs.Field("Cueset")
		        aPlaylistItems(c).Comment = rs.Field("Comment")
		        rs.MoveNext
		      wend
		      
		    end
		    
		    
		    //************ read DevMan EventList ******************
		    HandleEngineEvent("ScrMan","","","Message","reading Eventlist ...","")
		    
		    ssql = "SELECT * FROM DevManEventList"
		    rs = ScrDB.SQLSelect(ssql)
		    
		    dim it1,it2,it3,it4,it5,it6,it7,it8,it9,it10,it11 as string
		    
		    if rs <> nil then
		      //Get Eventlistitem
		      while not rs.EOF
		        it1 = rs.Field("DevName")
		        it2 = rs.Field("ChName")
		        it3 = rs.Field("EvtName")
		        it4 = rs.Field("CsName")
		        it5 = rs.Field("TermChar")
		        it6 = rs.Field("DP1")
		        it7 = rs.Field("DP2")
		        it8 = rs.Field("P1")
		        it9 = rs.Field("P2")
		        it10 = rs.Field("P3")
		        it11 = rs.Field("P4")
		        res = DevMan.AddEventListItem(it1,it2,it3,it4,it5,it6,it7,it8,it9,it10,it11)
		        rs.MoveNext
		      wend
		      
		    end
		    
		  Exception
		    Return "-4007"
		  end
		  
		  
		  ScrDB.Close
		  HandleEngineEvent("ScrMan","","","Message","Project loaded","")
		  
		  
		  return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function scrdb_SaveProject(DatabaseFilePath as string) As string
		  Dim f as FolderItem
		  dim ssql as String
		  dim tmp as string
		  
		  
		  //**************************** - CREATE DATABASE - ******************************************************
		  if right(DatabaseFilePath,4) <> ".vc3" then DatabaseFilePath = DatabaseFilePath + ".vc3"
		  try
		    f = New FolderItem(DatabaseFilePath)
		    if ScrDB <> nil then ScrDB.Close
		    
		  catch
		    Return "-4005"
		  Finally
		  end
		  
		  //if database exist then delete
		  if f.Exists then f.Delete
		  
		  
		  //create new database
		  ScrDB = New REALSQLdatabase
		  ScrDB.databaseFile=f
		  If ScrDB.CreateDatabaseFile then
		    
		    //create table Device
		    ssql = "CREATE TABLE Device(ID integer PRIMARY KEY, Name text, DriverName text,GuiId text, Category integer, Helptext text, Script text, DP1Name text, DP1GUIType integer, DP1MinMaxDef text,"
		    ssql = ssql + "DP1Default text, DP1Mask text, DP2Name text, DP2GUIType integer, DP2MinMaxDef text, DP2Default text, DP2Mask text, Manufactor text,Channels text)"
		    ScrDB.SQLExecute(ssql)
		    
		    //create table Category
		    ssql = "CREATE TABLE Categorys(ID integer PRIMARY KEY, Name text)"
		    ScrDB.SQLExecute(ssql)
		    
		    //create table Commands
		    ssql = "CREATE TABLE Commands(ID integer PRIMARY KEY, DeviceID integer, Name text, Script text, TabID text, Timeout integer, AckCmd text, NextCmd text, Position integer,"
		    ssql = ssql + "Params text, AckString text, AckLen text)"
		    ScrDB.SQLExecute(ssql)
		    
		    //create table ini
		    ssql = "CREATE TABLE Ini(Name text, Value text)"
		    ScrDB.SQLExecute(ssql)
		    
		    //create table Playlist
		    ssql = "CREATE TABLE Playlist(Keycode text, Cueset text, Comment text)"
		    ScrDB.SQLExecute(ssql)
		    
		    //create table CallButtons
		    ssql = "CREATE TABLE CallButtons(Cueset text, Caption text, Active integer)"
		    ScrDB.SQLExecute(ssql)
		    
		    //create table Cuesets
		    ssql = "CREATE TABLE Cuesets(ID integer PRIMARY KEY, Name text, Script text, Position integer, Type text, Spare1 text)"
		    ScrDB.SQLExecute(ssql)
		    
		    //create table DevManEventList
		    ssql = "CREATE TABLE DevManEventList(ID integer PRIMARY KEY, DevName text, ChName text, EvtName text, CsName text, TermChar text, DP1 text, DP2 text, P1 text, P2 text, P3 text, P4 text, Spare1 text,Spare2 text,Spare3 text,Spare4 text,Spare5 text)"
		    ScrDB.SQLExecute(ssql)
		    
		    
		  else
		    Return "-4006"
		  end
		  
		  //**************************** - WRITE DATABASE - ******************************************************
		  
		  dim rec as New DatabaseRecord
		  dim res,s as String
		  dim i,x as integer
		  
		  //******* write table Ini *********
		  // Database Version
		  rec.Column("Name") = "Database Version"
		  rec.Column("Value") = cnt_ScriptDatabaseVersion
		  ScrDB.InsertRecord("Ini",rec)
		  ScrDB.Commit
		  
		  // Channels
		  res = IOMan.GetChannels
		  frmMain.HandleEngineEvent("ScrMan","","","Message","writing ini table...","")
		  rec.Column("Name") = "Channels"
		  rec.Column("Value") = res
		  ScrDB.InsertRecord("Ini",rec)
		  ScrDB.Commit
		  
		  // Sync Port
		  res = IOMan.GetSyncPort
		  rec.Column("Name") = "SyncPort"
		  rec.Column("Value") = res
		  ScrDB.InsertRecord("Ini",rec)
		  ScrDB.Commit
		  
		  // Calendar Base Events
		  res = Calendar.GetAllBaseEvents
		  rec.Column("Name") = "CalendarBaseEvents"
		  rec.Column("Value") = res
		  ScrDB.InsertRecord("Ini",rec)
		  ScrDB.Commit
		  
		  // Timer Events
		  res = TimerEvents.GetAllTimerEvents
		  rec.Column("Name") = "TimerEvents"
		  rec.Column("Value") = res
		  ScrDB.InsertRecord("Ini",rec)
		  ScrDB.Commit
		  
		  // Keyboard Events
		  res = KeyboardEvents.GetAllKeyboardEvents
		  rec.Column("Name") = "KeyboardEvents"
		  rec.Column("Value") = res
		  ScrDB.InsertRecord("Ini",rec)
		  ScrDB.Commit
		  
		  // Global Vars
		  res = GetGlobalVarList
		  rec.Column("Name") = "GlobalVarList"
		  rec.Column("Value") = res
		  ScrDB.InsertRecord("Ini",rec)
		  ScrDB.Commit
		  
		  //************ write Devices ******************
		  for i = 0 to UBound(DevMan.aDevices)
		    rec = nil
		    rec = new DatabaseRecord
		    HandleEngineEvent("ScrMan","","","Message","writing Device " + DevMan.aDevices(i).DeviceName + "...","")
		    rec.Column("Name") = DevMan.aDevices(i).DeviceName
		    rec.Column("DriverName") = DevMan.aDevices(i).DriverName
		    rec.Column("GuiId") = str(DevMan.aDevices(i).GUIID)
		    rec.Column("Category") = DevMan.aDevices(i).Category
		    rec.Column("Helptext") = DevMan.aDevices(i).Helptext
		    rec.Column("Script") = DevMan.aDevices(i).Source
		    
		    rec.Column("DP1Name") = DevMan.aDevices(i).DP1Name
		    s = str(DevMan.aDevices(i).DP1GUIType)
		    rec.Column("DP1GUIType") = s
		    rec.Column("DP1MinMaxDef") = DevMan.aDevices(i).DP1MinMaxDef
		    rec.Column("DP1Default") = DevMan.aDevices(i).DP1Default
		    rec.Column("DP1Mask") = DevMan.aDevices(i).DP1Mask
		    
		    rec.Column("DP2Name") = DevMan.aDevices(i).DP2Name
		    s = str(DevMan.aDevices(i).DP2GUIType)
		    rec.Column("DP2GUIType") = s
		    rec.Column("DP2MinMaxDef") = DevMan.aDevices(i).DP2MinMaxDef
		    rec.Column("DP2Default") = DevMan.aDevices(i).DP2Default
		    rec.Column("DP2Mask") = DevMan.aDevices(i).DP2Mask
		    
		    rec.Column("Manufactor") = DevMan.aDevices(i).Manufactor
		    rec.Column("Channels") = DevMan.aDevices(i).Channels
		    
		    ScrDB.InsertRecord("Device",rec)
		    ScrDB.Commit
		    //************ write Commands ******************
		    for x = 0 to UBound(DevMan.aDevices(i).aCMD)
		      rec = nil
		      rec = new DatabaseRecord
		      s = str(i+1)
		      rec.Column("DeviceID") = s
		      rec.Column("Name") = DevMan.aDevices(i).aCMD(x).CmdName
		      rec.Column("Script") = DevMan.aDevices(i).aCMD(x).CmdScript
		      rec.Column("TabID") = DevMan.aDevices(i).aCMD(x).TabID
		      s = str(DevMan.aDevices(i).aCMD(x).Timeout)
		      rec.Column("Timeout") = s
		      rec.Column("AckCmd") = DevMan.aDevices(i).aCMD(x).AckCmd
		      rec.Column("NextCmd") = DevMan.aDevices(i).aCMD(x).NextCmd
		      s = str(DevMan.aDevices(i).aCMD(x).Position)
		      rec.Column("Position") = s
		      rec.Column("AckString") = DevMan.aDevices(i).aCMD(x).AckString
		      s = str(DevMan.aDevices(i).aCMD(x).AckLen)
		      rec.Column("AckLen") = s
		      
		      s = str(DevMan.aDevices(i).aCMD(x).P1GUIType)
		      tmp = DevMan.aDevices(i).aCMD(x).P1Name+chr(2)+s+chr(2)+DevMan.aDevices(i).aCMD(x).P1MinMaxDef+chr(2)+DevMan.aDevices(i).aCMD(x).P1Mask+chr(2)+DevMan.aDevices(i).aCMD(x).P1Default+chr(2)
		      s = str(DevMan.aDevices(i).aCMD(x).P2GUIType)
		      tmp = tmp + DevMan.aDevices(i).aCMD(x).P2Name+chr(2)+s+chr(2)+DevMan.aDevices(i).aCMD(x).P2MinMaxDef+chr(2)+DevMan.aDevices(i).aCMD(x).P2Mask+chr(2)+DevMan.aDevices(i).aCMD(x).P2Default+chr(2)
		      s = str(DevMan.aDevices(i).aCMD(x).P3GUIType)
		      tmp = tmp + DevMan.aDevices(i).aCMD(x).P3Name+chr(2)+s+chr(2)+DevMan.aDevices(i).aCMD(x).P3MinMaxDef+chr(2)+DevMan.aDevices(i).aCMD(x).P3Mask+chr(2)+DevMan.aDevices(i).aCMD(x).P3Default+chr(2)
		      s = str(DevMan.aDevices(i).aCMD(x).P4GUIType)
		      tmp = tmp + DevMan.aDevices(i).aCMD(x).P4Name+chr(2)+s+chr(2)+DevMan.aDevices(i).aCMD(x).P4MinMaxDef+chr(2)+DevMan.aDevices(i).aCMD(x).P4Mask+chr(2)+DevMan.aDevices(i).aCMD(x).P4Default
		      rec.Column("Params") = tmp
		      
		      ScrDB.InsertRecord("Commands",rec)
		      ScrDB.Commit
		    next
		  next
		  
		  //************ write Cuesets ******************
		  for i = 0 to UBound(ScrMan.aCuesets)
		    rec = nil
		    rec = new DatabaseRecord
		    HandleEngineEvent("ScrMan","","","Message","writing Cueset " + ScrMan.aCuesets(i).Name + "...","")
		    rec.Column("Name") = ScrMan.aCuesets(i).Name
		    rec.Column("Script") = ScrMan.GetCuesetScript(ScrMan.aCuesets(i).Name)
		    rec.Column("Type") = ScrMan.aCuesets(i).Type
		    rec.Column("Spare1") = ScrMan.aCuesets(i).CuesetParams
		    
		    ScrDB.InsertRecord("Cuesets",rec)
		    ScrDB.Commit
		  next
		  
		  //************ write Playlist ******************
		  HandleEngineEvent("ScrMan","","","Message","writing Playlist ...","")
		  for i = 0 to UBound(aPlaylistItems)
		    rec = nil
		    rec = new DatabaseRecord
		    
		    rec.Column("Keycode") = ScrMan.aPlaylistItems(i).Keycode
		    rec.Column("Cueset") = ScrMan.aPlaylistItems(i).CuesetName
		    rec.Column("Comment") = ScrMan.aPlaylistItems(i).Comment
		    
		    ScrDB.InsertRecord("Playlist",rec)
		    ScrDB.Commit
		  next
		  
		  //************ write CallButton List ******************
		  HandleEngineEvent("ScrMan","","","Message","writing Call Buttons ...","")
		  for i = 0 to UBound(ScrMan.aCallButtonItems)
		    rec = nil
		    rec = new DatabaseRecord
		    
		    rec.Column("Cueset") = ScrMan.aCallButtonItems(i).TaskName
		    rec.Column("Caption") = ScrMan.aCallButtonItems(i).Caption
		    if ScrMan.aCallButtonItems(i).Active = True then
		      rec.Column("Active") = "1"
		    else
		      rec.Column("Active") = "0"
		    end
		    
		    ScrDB.InsertRecord("CallButtons",rec)
		    ScrDB.Commit
		  next
		  
		  //************ write DevMan EventList ******************
		  HandleEngineEvent("ScrMan","","","Message","writing Eventlist ...","")
		  for i = 0 to UBound(DevMan.EventList)
		    rec = nil
		    rec = new DatabaseRecord
		    
		    rec.Column("DevName") = DevMan.EventList(i).DeviceName
		    rec.Column("ChName") = DevMan.EventList(i).ChannelName
		    rec.Column("EvtName") = DevMan.EventList(i).EventName
		    rec.Column("CsName") = DevMan.EventList(i).CuesetName
		    rec.Column("TermChar") = DevMan.EventList(i).TermChar
		    rec.Column("DP1") = DevMan.EventList(i).DP1
		    rec.Column("DP2") = DevMan.EventList(i).DP2
		    rec.Column("P1") = DevMan.EventList(i).P1
		    rec.Column("P2") = DevMan.EventList(i).P2
		    rec.Column("P3") = DevMan.EventList(i).P3
		    rec.Column("P4") = DevMan.EventList(i).P4
		    
		    ScrDB.InsertRecord("DevManEventList",rec)
		    ScrDB.Commit
		  next
		  
		  ScrDB.Close
		  HandleEngineEvent("ScrMan","","","Message","Project saved","")
		  Globals.ProjectChanged = False
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBlockStatus(CuesetName as string, BlockStatus as boolean)
		  dim i as integer
		  
		  i = GetCuesetIdByName(CuesetName)
		  if i >= 0 then 
		    aCuesets(i).IsBlocked = BlockStatus
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetCuesetParams(CuesetName as string, Params as string) As string
		  dim i as Integer
		  
		  
		  i  = ScrMan.GetCuesetIdByName(Cuesetname)
		  if i = -1 then Return "-4001"
		  
		  aCuesets(i).CuesetParams = Params
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetCuesetScript(Cuesetname as string, CuesetScript as string) As string
		  dim i as Integer
		  
		  
		  i  = ScrMan.GetCuesetIdByName(Cuesetname)
		  if i = -1 then Return "-4001"
		  if aCuesets(i).Type = "Cueset" then
		    aCuesets(i).Reset
		     aCuesets(i).Source = CuesetScript
		    Globals.ProjectChanged = true
		  end
		  
		  if aCuesets(i).Type = "Cuelist" then
		    aCuesets(i).Script = CuesetScript
		    Globals.ProjectChanged = true
		  end
		  
		  if aCuesets(i).Type = "Timestrip" then
		    aCuesets(i).Script = CuesetScript
		    Globals.ProjectChanged = true
		  end
		  
		  Return "0"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetGlobalVar(VarName as string, Value as string) As string
		  dim i as integer
		  
		  i = GetGlobalVarIdByName(VarName)
		  if i >= 0 then
		    if aGlobalVar(i).Blocked = True then Return "-4008"
		    aGlobalVar(i).Value = Value
		    Return "0"
		  else
		    Return "-4007"
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGlobalVarList(VarList as string)
		  dim i as integer
		  dim res as string
		  
		  for i = UBound(aGlobalVar) DownTo 0
		    aGlobalVar.Remove(i)
		  next
		  
		  for i = 1 to CountFields(VarList,chr(2))
		    res = AddGlobalVar(NthField(VarList,chr(2),i))
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowHomePage()
		  dim f as FolderItem
		  dim s as string
		  Dim iniStream as BinaryStream
		  
		  
		  
		  f = GetFolderItem ( "tmp.html" )
		  s = "<head>"
		  s = s + "Redirect to http://www.vman.cc"
		  s = s + "<meta http-equiv=""" + "refresh" +"""" +"content="+"""" + "0; URL=http://www.vman.cc"""+">"
		  s = s + "</head>"
		  //In file schreiben
		  iniStream=BinaryStream.Create(f,True)
		  iniStream.WritePString(s)
		  iniStream.Close
		  
		  
		  
		  if TargetWin32 then
		    
		    f = GetFolderItem("tmp.html")
		    if f <> nil then
		      f.Launch
		    else
		      //MsgBox("Can't locate contact.html in Application Folder")
		    end
		  end
		  
		  if TargetLinux then
		    f = GetFolderItem("tmp.html")
		    if f <> nil then
		      f.Launch
		    else
		      //MsgBox("Can't locate contact.html in Application Folder")
		    end
		  end
		  
		  if TargetMacOS then
		    f = GetFolderItem("")
		    s = f.AbsolutePath
		    s = s + "tmp.html"
		    f = nil
		    f = GetFolderItem(s)
		    
		    if f <> nil then
		      f.Launch
		    else
		      //MsgBox("Can't locate contact.html in Application Folder")
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopAllExceptOne(sCuesetStillRunning as string)
		  for i as integer = 0 to UBound(aCuesets)
		    if aCuesets(i).Name <> sCuesetStillRunning then StopCueset(aCuesets(i).Name)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopCueset(CuesetName as string)
		  dim i,idx,devidx,subidx as integer
		  dim HasChild as Boolean
		  dim strChild, strDevice, strChannels as string
		  
		  
		  //Thread stoppen
		  ThreadPoolManager.StopThread(CuesetName)
		  HasChild = False
		  
		  //Rescourcen freigeben
		  scrMan.HandleEngineEvent("ScrMan","Cueset","NoChannels","CuesetMsg",CuesetName+";STOP","")
		  idx = GetCuesetIdByName(CuesetName)
		  if idx >=0 then 
		    aCuesets(idx).IsBlocked = false
		    IOMan.UnBlockChannels(ScrMan.aCuesets(idx).CurrentUsedChannels)
		    
		    devidx = GetDeviceIdByName(ScrMan.aCuesets(idx).CurrentUsedDevice)
		    if devidx >= 0 then DevMan.aDevices(devidx).Blocked = false
		    
		    // wenn Child Cuesets vorhanden dann diese als gestopt markieren
		    if aCuesets(idx).ChildCueset <> "" then 
		      HasChild = true
		      //Get Child Name
		      strChild = aCuesets(idx).ChildCueset
		    end
		    
		  end
		  
		  
		  while HasChild = true
		    
		    //Get Child Index
		    subidx = GetCuesetIdByName(strChild)
		    if subidx >= 0 then 
		      //Thread Stoppen
		      ThreadPoolManager.StopThread(strChild)
		      scrMan.HandleEngineEvent("ScrMan","Cueset","NoChannels","FunctionMsg",aCuesets(subidx).Name+";STOP","")
		      aCuesets(subidx).IsBlocked = false
		      
		      //Rescourcen freigeben
		      devidx = GetDeviceIdByName(ScrMan.aCuesets(subidx).CurrentUsedDevice)
		      if devidx >= 0 then
		        DevMan.aDevices(devidx).Blocked = false
		        IOMan.UnBlockChannels(ScrMan.aCuesets(subidx).CurrentUsedChannels)
		      end
		      aCuesets(idx).ChildCueset = ""
		      strChild = aCuesets(subidx).ChildCueset
		      if strChild = "" then HasChild = False
		      idx = GetCuesetIdByName(strChild)
		      if idx < 0 Then HasChild = False
		    else
		      HasChild = false
		    end
		    
		  wend
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		aCallButtonItems() As TCallButtonItem
	#tag EndProperty

	#tag Property, Flags = &h0
		aCuesets(-1) As TCueset
	#tag EndProperty

	#tag Property, Flags = &h0
		aGlobalVar(-1) As TGlobalVar
	#tag EndProperty

	#tag Property, Flags = &h0
		aPlaylistItems(-1) As TPlaylistItem
	#tag EndProperty

	#tag Property, Flags = &h0
		CalendarEventTimer As TCalendarEventTimer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CuesetClipboard As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ScrDB As REALSQLDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		ScrmanIniFileName As String = "scrman.ini"
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
			Name="ScrmanIniFileName"
			Group="Behavior"
			InitialValue="scrman.ini"
			Type="String"
			EditorType="MultiLineEditor"
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
