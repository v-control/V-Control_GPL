#tag Module
Protected Module DevMan
	#tag Method, Flags = &h0
		Function AddEventListItem(DevName as string, ChName as string, EvtName as string, CsName as string, TermChar as string,DP1 as string, DP2 as string, P1 as string, P2 as string, P3 as string, P4 as string) As string
		  dim i as Integer
		  dim res as string
		  
		  if DevName = "Calendar" then exit
		  if DevName = "Timer" then exit
		  if DevName = "Keyboard" then exit
		  
		  res = IOMan.AddIOEvent(ChName,TermChar)
		  if left(res,1) <> "-" then
		    //Check If Event Exists
		    'for i = 0 to UBound(EventList)
		    'if EventList(i).ChannelName = ChName then
		    'if (EventList(i).DeviceName = DevName) and (EventList(i).EventName = EvtName) then
		    'Return "-3026"
		    'end
		    'end
		    'next
		    
		    i = UBound(EventList) + 1
		    Redim EventList(i)
		    EventList(i) = New TEventListItem
		    EventList(i).ChannelName = ChName
		    EventList(i).CuesetName = CsName
		    EventList(i).DeviceName = DevName
		    EventList(i).EventName = EvtName
		    EventList(i).TermChar = TermChar
		    EventList(i).DP1 = DP1
		    EventList(i).DP2 = DP2
		    EventList(i).P1 = P1
		    EventList(i).P2 = P2
		    EventList(i).P3 = P3
		    EventList(i).P4 = P4
		    Return "0"
		  else
		    Return res
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearDeviceArray()
		  dim i,c As Integer
		  
		  IOMan.ClearIOEvents
		  
		  for i = UBound(aDevices) DownTo 0
		    //Remove Commands
		    for c = UBound(aDevices(i).aCMD) DownTo 0
		      aDevices(i).aCMD.Remove(c)
		    Next
		    //Remove Device
		    aDevices.Remove(i)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearEventList()
		  dim i as integer
		  
		  IOMan.ClearIOEvents
		  
		  for i = UBound(EventList) DownTo 0
		    EventList(i) = nil
		    EventList.Remove(i)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Compile(DeviceName as string) As string
		  dim id,c,i as integer
		  dim DevScr,s as string
		  
		  id = GetDeviceIdByName(DeviceName)
		  if id = -1 then Return "-3007"
		  frmMain.lblStatus.Text = "building script..."
		  frmMain.lblStatus.Refresh
		  //Header
		  DevScr = "//Available Extern Variables and Functions" + chr(13) + chr(13)
		  DevScr = DevScr + "// DP1 = DeviceParameter1" + chr(13)
		  DevScr = DevScr + "// DP2 = DeviceParameter2" + chr(13)
		  DevScr = DevScr + "// P1 = CommandParameter1" + chr(13)
		  DevScr = DevScr + "// P2 = CommandParameter2" + chr(13)
		  DevScr = DevScr + "// P3 = CommandParameter3" + chr(13)
		  DevScr = DevScr + "// P4 = CommandParameter4" + chr(13)
		  DevScr = DevScr + "// ioResult  = Returned Value from Channel" + chr(13)
		  DevScr = DevScr + "// ScriptResult  = The Result of this Function call" + chr(13)
		  DevScr = DevScr + "// NextCmd  = The Command that is executed after this one" + chr(13)
		  DevScr = DevScr + "// ACK as boolen  = True if Acknowledge is correct, false if not" + chr(13)
		  DevScr = DevScr + "// ACKMessage  = describes the ACK/NAK" + chr(13)
		  DevScr = DevScr + "// AckCmd  = The Ack Function of this Command" + chr(13) + chr(13)
		  
		  
		  //Generate Function Calls
		  DevScr = DevScr + "// Available Commands" + chr(13)
		  DevScr = DevScr + "Select case Cmd"+chr(13)+ chr(13)
		  for c = 0 to UBound(aDevices(id).aCMD)
		    DevScr = DevScr + "   case " + chr(34) + aDevices(id).aCMD(c).CmdName +chr(34) + chr(13) + "      " + aDevices(id).aCMD(c).CmdName + chr(13)+chr(13)
		  next
		  
		  DevScr = DevScr + "End" + chr(13)
		  DevScr = DevScr + chr(13)
		  
		  DevScr = DevScr + "// Commands Subroutines" + chr(13) + chr(13)
		  
		  for c = 0 to UBound(aDevices(id).aCMD)
		    DevScr = DevScr + "// ********************************************************" + chr(13)
		    DevScr = DevScr + "Sub " + aDevices(id).aCMD(c).CmdName +"()" + chr(13)
		    //get all lines of the command script and prefix with "   "
		    s = aDevices(id).aCMD(c).CmdScript
		    for i = 1 to CountFields(s,chr(13))
		      DevScr = DevScr + "   " + NthField(s,chr(13),i) + chr(13)
		    next
		    DevScr = DevScr + "End Sub" + chr(13) 
		    DevScr = DevScr + "// ********************************************************" + chr(13)+ chr(13)
		  next
		  
		  
		  aDevices(id).Reset
		  aDevices(id).Source = DevScr
		  frmMain.lblStatus.Text = "precompile..."
		  frmMain.lblStatus.Refresh
		  aDevices(id).Precompile
		  frmMain.lblStatus.Text = "precompile...done"
		  frmMain.lblStatus.Refresh
		  
		  Return DevScr
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateCommand(Params as string) As string
		  //Params Order : DeviceName(2)CommandName(2)Scrip(2)Position(2)TabID(2)P1Name(2)P1GUIType(2)P1MinMaxDef(2)P1Mask(2)P1Default(2)
		  //                          P2Name(2)P2GUIType(2)P2MinMaxDef(2)P2Mask(2)P2Default(2)P3Name(2)P3GUIType(2)P3MinMaxDef(2)P3Mask(2)P3Default(2)
		  //                          P4Name(2)P4GUIType(2)P4MinMaxDef(2)P4Mask(2)P4Default(2)Timeout(2)AckCmd(2)NextCmd(2)AckString(2)AckLen
		  
		  dim CmdName as String
		  dim id,i As integer
		  dim DeviceName, CommandName, Script, Position, TabID, P1Name, P1GUIType, P1MinMaxDef, P1Mask, P1Default as String
		  dim P2Name, P2GUIType, P2MinMaxDef, P2Mask, P2Default, P3Name, P3GUIType, P3MinMaxDef, P3Mask,P3Default as String
		  dim P4Name, P4GUIType, P4MinMaxDef, P4Mask,P4Default, Timeout, AckCmd, NextCmd, AckString,AckLen as String
		  
		  
		  //Check for valid Parameter
		  if CountFields(Params,chr(2)) < 30 then Return "-3023"
		  DeviceName = NthField(Params,chr(2),1)
		  CommandName = NthField(Params,chr(2),2)
		  Script = NthField(Params,chr(2),3)
		  Position = NthField(Params,chr(2),4)
		  TabID = NthField(Params,chr(2),5)
		  
		  P1Name = NthField(Params,chr(2),6)
		  P1GUIType = NthField(Params,chr(2),7)
		  P1MinMaxDef = NthField(Params,chr(2),8)
		  P1Mask = NthField(Params,chr(2),9)
		  P1Default = NthField(Params,chr(2),10)
		  
		  P2Name = NthField(Params,chr(2),11)
		  P2GUIType = NthField(Params,chr(2),12)
		  P2MinMaxDef = NthField(Params,chr(2),13)
		  P2Mask = NthField(Params,chr(2),14)
		  P2Default = NthField(Params,chr(2),15)
		  
		  P3Name = NthField(Params,chr(2),16)
		  P3GUIType = NthField(Params,chr(2),17)
		  P3MinMaxDef = NthField(Params,chr(2),18)
		  P3Mask = NthField(Params,chr(2),19)
		  P3Default = NthField(Params,chr(2),20)
		  
		  P4Name = NthField(Params,chr(2),21)
		  P4GUIType = NthField(Params,chr(2),22)
		  P4MinMaxDef = NthField(Params,chr(2),23)
		  P4Mask = NthField(Params,chr(2),24)
		  P4Default = NthField(Params,chr(2),25)
		  
		  Timeout = NthField(Params,chr(2),26)
		  AckCmd = NthField(Params,chr(2),27)
		  NextCmd = NthField(Params,chr(2),28)
		  AckString = NthField(Params,chr(2),29)
		  AckLen = NthField(Params,chr(2),30)
		  
		  
		  
		  //Get ID of selected device
		  id = GetDeviceIdByName(DeviceName)
		  if Id = -1 then Return "-3007"
		  
		  //Check if Command exists
		  
		  for i = 0 to UBound(aDevices(Id).aCMD)
		    CmdName = aDevices(id).aCMD(i).CmdName
		    if CmdName = CommandName then Return "-Error: Command exists"
		  next
		  
		  
		  i = UBound(aDevices(id).aCMD) + 1
		  ReDim aDevices(id).aCMD(i)
		  aDevices(id).aCMD(i) = new TCommand
		  
		  //******* insert Record *********
		  aDevices(id).aCMD(i).DeviceID = id
		  aDevices(id).aCMD(i).CmdName = CommandName
		  aDevices(id).aCMD(i).CmdScript = Script
		  aDevices(id).aCMD(i).Position = val(Position)
		  aDevices(id).aCMD(i).TabID = TabId
		  
		  aDevices(id).aCMD(i).P1Name = P1Name
		  aDevices(id).aCMD(i).P1GUIType = val(P1GUIType)
		  aDevices(id).aCMD(i).P1MinMaxDef = P1MinMaxDef
		  aDevices(id).aCMD(i).P1Mask = P1Mask
		  aDevices(id).aCMD(i).P1Default = P1Default
		  
		  aDevices(id).aCMD(i).P2Name = P2Name
		  aDevices(id).aCMD(i).P2GUIType = val(P2GUIType)
		  aDevices(id).aCMD(i).P2MinMaxDef = P2MinMaxDef
		  aDevices(id).aCMD(i).P2Mask = P2Mask
		  aDevices(id).aCMD(i).P2Default = P2Default
		  
		  aDevices(id).aCMD(i).P3Name = P3Name
		  aDevices(id).aCMD(i).P3GUIType = val(P3GUIType)
		  aDevices(id).aCMD(i).P3MinMaxDef = P3MinMaxDef
		  aDevices(id).aCMD(i).P3Mask = P3Mask
		  aDevices(id).aCMD(i).P3Default = P3Default
		  
		  aDevices(id).aCMD(i).P4Name = P4Name
		  aDevices(id).aCMD(i).P4GUIType = val(P4GUIType)
		  aDevices(id).aCMD(i).P4MinMaxDef = P4MinMaxDef
		  aDevices(id).aCMD(i).P4Mask = P4Mask
		  aDevices(id).aCMD(i).P4Default = P4Default
		  
		  aDevices(id).aCMD(i).Timeout = val(Timeout)
		  aDevices(id).aCMD(i).AckCmd = AckCmd
		  aDevices(id).aCMD(i).NextCmd = NextCmd
		  aDevices(id).aCMD(i).AckString = AckString
		  aDevices(id).aCMD(i).AckLen = val(AckLen)
		  
		  
		  Return "0"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateDevice(Params as string) As string
		  // Parameter Order:
		  // DeviceName(2)Category(2)Helptext(2)Script(2)DP1Name(2)DP1GUIType(2)DP1MinMax(2)DP1Default(2)DP1Mask(2)DP2Name(2)DP2GUIType(2)DP2MinMax(2)DP2Default(2)DP2Mask(2)GUIID(2)Manufactor(2)DriverName
		  
		  dim DeviceName,DriverName, Category, Helptext, Script as string
		  dim DP1Name, DP1MinMaxDef,DP1Default, DP1Mask, DP2Name, DP2MinMaxDef,DP2Default, DP2Mask as string
		  Dim DP1GUIType, DP2GUIType,DeviceGUI,Manufactor as string
		  dim i as integer
		  
		  //Check for valid parameters
		  if CountFields(Params,chr(2)) < 17 then Return "-3017"
		  
		  DeviceName = NthField(Params,chr(2),1)
		  Category = NthField(Params,chr(2),2)
		  Helptext = NthField(Params,chr(2),3)
		  Script = NthField(Params,chr(2),4)
		  
		  DP1Name = NthField(Params,chr(2),5)
		  DP1GUIType = NthField(Params,chr(2),6)
		  DP1MinMaxDef = NthField(Params,chr(2),7)
		  DP1Default = NthField(Params,chr(2),8)
		  DP1Mask = NthField(Params,chr(2),9)
		  DP2Name = NthField(Params,chr(2),10)
		  DP2GUIType = NthField(Params,chr(2),11)
		  DP2MinMaxDef = NthField(Params,chr(2),12)
		  DP2Default = NthField(Params,chr(2),13)
		  DP2Mask = NthField(Params,chr(2),14)
		  DeviceGUI = NthField(Params,chr(2),15)
		  Manufactor = NthField(Params,chr(2),16)
		  DriverName = NthField(Params,chr(2),17)
		  
		  //Check if Device exists
		  for i = 0 to UBound(aDevices)
		    if aDevices(i).DeviceName = DeviceName then Return "-3002"
		  next
		  //Protect Remote Devices
		  if DeviceName = "TCPRemote" then Return "-3002"
		  if DeviceName = "UDPRemote" then Return "-3002"
		  if DeviceName = "RS232Remote" then Return "-3002"
		  
		  i = UBound(aDevices) + 1
		  Redim aDevices(i)
		  aDevices(i) = new TDevice
		  aDevices(i).DeviceName = DeviceName
		  aDevices(i).DeviceContext.DeviceName = DeviceName
		  aDevices(i).DriverName = DriverName
		  aDevices(i).GUIID = val(DeviceGUI)
		  aDevices(i).Category = Category
		  aDevices(i).Helptext = Helptext
		  aDevices(i).Source = Script
		  aDevices(i).Manufactor = Manufactor
		  
		  aDevices(i).DP1Name = DP1Name
		  aDevices(i).DP1GUIType = val(DP1GUIType)
		  aDevices(i).DP1MinMaxDef = DP1MinMaxDef
		  aDevices(i).DP1Default = DP1Default
		  aDevices(i).DP1Mask = DP1Mask
		  
		  aDevices(i).DP2Name = DP2Name
		  aDevices(i).DP2GUIType = val(DP2GUIType)
		  aDevices(i).DP2MinMaxDef = DP2MinMaxDef
		  aDevices(i).DP2Default = DP2Default
		  aDevices(i).DP2Mask = DP2Mask
		  
		  
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_AddCategory(Category as string) As string
		  dim rec as New DatabaseRecord
		  dim rs as RecordSet
		  dim ssql,s as String
		  
		  //Check if Category exists
		  //************ read all Devices ******************
		  ssql = "SELECT * FROM Categorys"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  if rs <> nil then
		    While not rs.eof
		      s = rs.Field("Name")
		      if Category  = s then Return "-3013"
		      rs.MoveNext
		    wend
		  end
		  
		  
		  //******* insert Record *********
		  rec.Column("Name") = Category
		  
		  dbDevice.InsertRecord("Categorys",rec)
		  
		  If dbDevice.error then Return "-3014" + dbDevice.ErrorMessage
		  
		  dbDevice.Commit
		  
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_CreateCommand(Params as string) As string
		  //Params Order : DeviceName(2)CommandName(2)Scrip(2)Position(2)TabID(2)P1Name(2)P1GUIType(2)P1MinMaxDef(2)P1Mask(2)P1Default(2)
		  //                          P2Name(2)P2GUIType(2)P2MinMaxDef(2)P2Mask(2)P2Default(2)P3Name(2)P3GUIType(2)P3MinMaxDef(2)P3Mask(2)P3Default(2)
		  //                          P4Name(2)P4GUIType(2)P4MinMaxDef(2)P4Mask(2)P4Default(2)Timeout(2)AckCmd(2)NextCmd(2)AckString(2)AckLen
		  
		  dim rec as New DatabaseRecord
		  dim rs as RecordSet
		  dim ssql, CmdName as String
		  dim id As integer
		  dim DeviceName, CommandName, Script, Position, TabID, P1Name, P1GUIType, P1MinMaxDef, P1Mask, P1Default as String
		  dim P2Name, P2GUIType, P2MinMaxDef, P2Mask, P2Default, P3Name, P3GUIType, P3MinMaxDef, P3Mask,P3Default as String
		  dim P4Name, P4GUIType, P4MinMaxDef, P4Mask,P4Default, Timeout, AckCmd, NextCmd, AckString,AckLen as String
		  
		  
		  //Check for valid Parameter
		  if CountFields(Params,chr(2)) < 30 then Return "--3017"
		  DeviceName = NthField(Params,chr(2),1)
		  CommandName = NthField(Params,chr(2),2)
		  Script = NthField(Params,chr(2),3)
		  Position = NthField(Params,chr(2),4)
		  TabID = NthField(Params,chr(2),5)
		  
		  P1Name = NthField(Params,chr(2),6)
		  P1GUIType = NthField(Params,chr(2),7)
		  P1MinMaxDef = NthField(Params,chr(2),8)
		  P1Mask = NthField(Params,chr(2),9)
		  P1Default = NthField(Params,chr(2),10)
		  
		  P2Name = NthField(Params,chr(2),11)
		  P2GUIType = NthField(Params,chr(2),12)
		  P2MinMaxDef = NthField(Params,chr(2),13)
		  P2Mask = NthField(Params,chr(2),14)
		  P2Default = NthField(Params,chr(2),15)
		  
		  P3Name = NthField(Params,chr(2),16)
		  P3GUIType = NthField(Params,chr(2),17)
		  P3MinMaxDef = NthField(Params,chr(2),18)
		  P3Mask = NthField(Params,chr(2),19)
		  P3Default = NthField(Params,chr(2),20)
		  
		  P4Name = NthField(Params,chr(2),21)
		  P4GUIType = NthField(Params,chr(2),22)
		  P4MinMaxDef = NthField(Params,chr(2),23)
		  P4Mask = NthField(Params,chr(2),24)
		  P4Default = NthField(Params,chr(2),25)
		  
		  Timeout = NthField(Params,chr(2),26)
		  AckCmd = NthField(Params,chr(2),27)
		  NextCmd = NthField(Params,chr(2),28)
		  AckString = NthField(Params,chr(2),29)
		  AckLen = NthField(Params,chr(2),30)
		  
		  
		  //Create new Record
		  
		  //Get ID of selected device
		  id = db_GetDeviceIdByName(DeviceName)
		  if Id = -1 then Return "-3007"
		  
		  //Check if Command exists
		  //************ read all Commands from selected device ******************
		  ssql = "SELECT Name FROM Commands WHERE DeviceID = '" + str(id) + "'"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  if rs <> nil then
		    While not rs.eof
		      CmdName = rs.Field("Name")
		      if CmdName = CommandName then Return "Error: Command exists"
		      rs.MoveNext
		    wend
		  end
		  
		  
		  //******* insert Record *********
		  rec.Column("DeviceID") = str(id)
		  rec.Column("Name") = CommandName
		  rec.Column("Script") = Script
		  rec.Column("Position") = Position
		  rec.Column("TabID") = TabId
		  
		  rec.Column("P1Name") = P1Name
		  rec.Column("P1GUIType") = P1GUIType
		  rec.Column("P1MinMaxDef") = P1MinMaxDef
		  rec.Column("P1Mask") = P1Mask
		  rec.Column("P1Default") = P1Default
		  
		  rec.Column("P2Name") = P2Name
		  rec.Column("P2GUIType") = P2GUIType
		  rec.Column("P2MinMaxDef") = P2MinMaxDef
		  rec.Column("P2Mask") = P2Mask
		  rec.Column("P2Default") = P2Default
		  
		  rec.Column("P3Name") = P3Name
		  rec.Column("P3GUIType") = P3GUIType
		  rec.Column("P3MinMaxDef") = P3MinMaxDef
		  rec.Column("P3Mask") = P3Mask
		  rec.Column("P3Default") = P3Default
		  
		  rec.Column("P4Name") = P4Name
		  rec.Column("P4GUIType") = P4GUIType
		  rec.Column("P4MinMaxDef") = P4MinMaxDef
		  rec.Column("P4Mask") = P4Mask
		  rec.Column("P4Default") = P4Default
		  
		  rec.Column("Timeout") = Timeout
		  rec.Column("AckCmd") = AckCmd
		  rec.Column("NextCmd") = NextCmd
		  rec.Column("AckString") = AckString
		  rec.Column("AckLen") = AckLen
		  
		  dbDevice.InsertRecord("Commands",rec)
		  If dbDevice.error then Return "-3016"
		  
		  dbDevice.Commit
		  Return "0"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_CreateDevice(Params as string) As string
		  // Parameter Order:
		  // DeviceName(2)Category(2)Helptext(2)Script(2)DP1Name(2)DP1GUIType(2)DP1MinMax(2)DP1Default(2)DP1Mask(2)DP2Name(2)DP2GUIType(2)DP2MinMax(2)DP2Default(2)DP2Mask(2)GUIID(2)(Manufactor
		  
		  dim rec as New DatabaseRecord
		  dim rs as RecordSet
		  dim ssql as String
		  dim DeviceName, Category, Helptext, Script,DevName as string
		  dim DP1Name, DP1MinMaxDef,DP1Default, DP1Mask, DP2Name, DP2MinMaxDef,DP2Default, DP2Mask as string
		  Dim DP1GUIType, DP2GUIType,DeviceGUI,Manufactor as string
		  
		  //Check for valid parameters
		  if CountFields(Params,chr(2)) < 14 then Return "-3018"
		  
		  DeviceName = NthField(Params,chr(2),1)
		  Category = NthField(Params,chr(2),2)
		  Helptext = NthField(Params,chr(2),3)
		  Script = NthField(Params,chr(2),4)
		  
		  DP1Name = NthField(Params,chr(2),5)
		  DP1GUIType = NthField(Params,chr(2),6)
		  DP1MinMaxDef = NthField(Params,chr(2),7)
		  DP1Default = NthField(Params,chr(2),8)
		  DP1Mask = NthField(Params,chr(2),9)
		  DP2Name = NthField(Params,chr(2),10)
		  DP2GUIType = NthField(Params,chr(2),11)
		  DP2MinMaxDef = NthField(Params,chr(2),12)
		  DP2Default = NthField(Params,chr(2),13)
		  DP2Mask = NthField(Params,chr(2),14)
		  DeviceGUI = NthField(Params,chr(2),15)
		  Manufactor = NthField(Params,chr(2),16)
		  //Create new Record
		  
		  //Check if Device exists
		  //************ read all Devices ******************
		  ssql = "SELECT * FROM Device"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  if rs <> nil then
		    While not rs.eof
		      DevName = rs.Field("Name")
		      if devName = DeviceName then Return "-3002"
		      rs.MoveNext
		    wend
		  end
		  
		  
		  //******* insert Record *********
		  rec.Column("Name") = DeviceName
		  rec.Column("GuiId") = DeviceGUI
		  rec.Column("Category") = Category
		  rec.Column("Helptext") = Helptext
		  rec.Column("Script") = Script
		  rec.Column("Manufactor") = Manufactor
		  
		  rec.Column("DP1Name") = DP1Name
		  rec.Column("DP1GUIType") = DP1GUIType
		  rec.Column("DP1MinMaxDef") = DP1MinMaxDef
		  rec.Column("DP1Default") = DP1Default
		  rec.Column("DP1Mask") = DP1Mask
		  
		  rec.Column("DP2Name") = DP2Name
		  rec.Column("DP2GUIType") = DP2GUIType
		  rec.Column("DP2MinMaxDef") = DP2MinMaxDef
		  rec.Column("DP2Default") = DP2Default
		  rec.Column("DP2Mask") = DP2Mask
		  
		  dbDevice.InsertRecord("Device",rec)
		  
		  If dbDevice.error then Return "-3016 " + dbDevice.ErrorMessage
		  
		  dbDevice.Commit
		  
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_CreateDeviceDatabase(DatabaseFilePath as string) As string
		  Dim f as FolderItem
		  Dim DevBD As REALSQLDatabase
		  dim ssql as String
		  
		  
		  try
		    f = New FolderItem(DatabaseFilePath)
		  catch
		    Return "-3011"
		  Finally
		  end
		  
		  //if database exist then delete
		  if f.Exists then f.Delete
		  
		  
		  //create new database
		  DevBD = New REALSQLdatabase
		  DevBD.databaseFile=f
		  If DevBD.CreateDatabaseFile then
		    
		    //create table Device
		    ssql = "CREATE TABLE Device(ID integer PRIMARY KEY, Name text, GuiId text, Category integer, Helptext text, Script text, DP1Name text, DP1GUIType integer, DP1MinMaxDef text,"
		    ssql = ssql + "DP1Default text, DP1Mask text, DP2Name text, DP2GUIType integer, DP2MinMaxDef text, DP2Default text, DP2Mask text, Manufactor text, Spare1 text,Spare2 text,Spare3 text,Spare4 text,Spare5 text,Spare6 text,Spare7 text,Spare8 text,Spare9 text,Spare10 text)"
		    DevBD.SQLExecute(ssql)
		    
		    //create table Category
		    ssql = "CREATE TABLE Categorys(ID integer PRIMARY KEY, Name text)"
		    DevBD.SQLExecute(ssql)
		    
		    //create table Commands
		    ssql = "CREATE TABLE Commands(ID integer PRIMARY KEY, DeviceID integer, Name text, Script text, TabID text, Timeout integer, AckCmd text, NextCmd text, Position integer,"
		    ssql = ssql + "P1Name text, P1GUIType integer, P1MinMaxDef text, P1Default text, P1Mask text,"
		    ssql = ssql + "P2Name text, P2GUIType integer, P2MinMaxDef text, P2Default text, P2Mask text,"
		    ssql = ssql + "P3Name text, P3GUIType integer, P3MinMaxDef text, P3Default text, P3Mask text,"
		    ssql = ssql + "P4Name text, P4GUIType integer, P4MinMaxDef text, P4Default text, P4Mask text,"
		    ssql = ssql + "AckString text, AckLen integer, Spare1 text,Spare2 text,Spare3 text,Spare4 text,Spare5 text,Spare6 text,Spare7 text,Spare8 text,Spare9 text,Spare10 text)"
		    DevBD.SQLExecute(ssql)
		    
		    Return "0"
		    
		  else
		    Return "-3011"
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_DeleteCommand(Params as string) As string
		  //Param Order: DeviceName(2)CommandName
		  
		  //Delete Record
		  dim ssql as string
		  dim CommandName, DeviceName as string
		  dim Id as Integer
		  
		  //Check for valid Params
		  if CountFields(Params,chr(2)) < 2 then Return "-3019"
		  
		  DeviceName = NthField(Params,chr(2),1)
		  CommandName = NthField(Params,chr(2),2)
		  
		  Id = db_GetDeviceIdByName(DeviceName)
		  if ID = -1 then Return "-3007"
		  
		  ssql = "DELETE FROM Commands WHERE DeviceID = '"+ str(Id) + "' AND Name = '" + CommandName + "'"
		  dbDevice.SQLExecute(ssql)
		  
		  If dbDevice.error then Return dbDevice.errormessage
		  
		  dbDevice.Commit
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_DeleteDevice(DeviceName as string) As string
		  //Delete Device Record
		  dim ssql as string
		  dim Id as Integer
		  
		  Id = db_GetDeviceIdByName(DeviceName)
		  if ID = -1 then Return "-3007"
		  
		  //Delete the Device
		  ssql = "DELETE FROM Device WHERE ID = '"+ str(Id) + "'"
		  dbDevice.SQLExecute(ssql)
		  If dbDevice.error then Return "Error: " + dbDevice.ErrorMessage
		  
		  dbDevice.Commit
		  
		  //Delete all commands from this device
		  ssql = "DELETE FROM Commands WHERE DeviceID = '"+ str(Id) + "'"
		  dbDevice.SQLExecute(ssql)
		  If dbDevice.error then Return "Error: " + dbDevice.ErrorMessage
		  
		  
		  If dbDevice.error then Return "-3016"
		  
		  dbDevice.Commit
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_DeleteEvent(Params as string) As string
		  //Param Order: DeviceName(2)CommandName
		  
		  //Delete Record
		  dim ssql as string
		  dim EventName, DeviceName as string
		  dim Id as Integer
		  
		  //Check for valid Params
		  if CountFields(Params,chr(2)) < 2 then Return "-3023"
		  
		  DeviceName = NthField(Params,chr(2),1)
		  EventName = NthField(Params,chr(2),2)
		  
		  Id = db_GetDeviceIdByName(DeviceName)
		  if ID = -1 then Return "-3007"
		  
		  ssql = "DELETE FROM Events WHERE DeviceID = '"+ str(Id) + "' AND Name = '" + EventName + "'"
		  dbDevice.SQLExecute(ssql)
		  
		  If dbDevice.error then Return dbDevice.errormessage
		  
		  dbDevice.Commit
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_GetCategoryList() As string
		  dim rs as RecordSet
		  dim ssql,res,Name,sID as String
		  
		  if dbDevice = nil then Return "Error: Database not found"
		  
		  //************ read all devices ******************
		  ssql = "SELECT * FROM Categorys"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  if rs <> nil then
		    While not rs.eof
		      sID = rs.Field("ID")
		      Name = rs.Field("Name")
		      res = res + sID + chr(2) + Name + chr(2)
		      rs.MoveNext
		    wend
		    //delete last chr(2)
		    res = Mid(res,1,Len(res)-1)
		    Return res
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_GetCategoryNameByID(ID as integer) As string
		  //Gets the Device Index from the database
		  Dim ssql as string
		  Dim rs as RecordSet
		  
		  
		  //************ read selected device devices ******************
		  ssql = "SELECT ID,Name FROM Categorys Where ID = '" + str(ID) + "'"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  if rs <> nil then
		    Return rs.Field("Name")
		  else
		    return "-3015"
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_GetCommandList(DeviceName as string) As string
		  //List of Commands in this Order: Position(2)CommandName(2)Position.........
		  dim rs as RecordSet
		  dim ssql,res,Position,Name,TabID,s as String
		  dim id as integer
		  
		  
		  if dbDevice = nil then Return "-3010"
		  
		  //Get ID of selected device
		  id = db_GetDeviceIdByName(DeviceName)
		  if Id = -1 then Return "-3007"
		  
		  //************ read all devices ******************
		  ssql = "SELECT Name, Position, TabID FROM Commands WHERE DeviceId = '" + str(id) + "'"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  if dbDevice.Error then Return "-3016"
		  
		  res = ""
		  if rs <> nil then
		    While not rs.eof
		      s =  rs.Field("TabID")
		      if s <> "Events" then
		        Position = rs.Field("Position")
		        Name = rs.Field("Name")
		        TabID = rs.Field("TabID")
		        res = res + Position+chr(2)+Name+chr(2)+TabID+chr(2)
		      end
		      rs.MoveNext
		    wend
		    //delete last chr(2)
		    res = Mid(res,1,Len(res)-1)
		    Return res
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_GetCommandPropertiesByName(DeviceName as string, CommandName as string) As string
		  dim rs as RecordSet
		  dim ssql, res as String
		  dim id as integer
		  
		  dim Script, Position, TabID, P1Name, P1GUIType, P1MinMaxDef, P1Mask,P1Default as String
		  dim P2Name, P2GUIType, P2MinMaxDef, P2Mask,P2Default, P3Name, P3GUIType, P3MinMaxDef, P3Mask,P3Default as String
		  dim P4Name, P4GUIType, P4MinMaxDef, P4Mask,P4Default, Timeout, AckCmd, NextCmd,AckString, AckLen as String
		  
		  if dbDevice = nil then Return "-3010"
		  
		  
		  //Get ID of selected device
		  id = db_GetDeviceIdByName(DeviceName)
		  if id = -1 then Return "-3007"
		  
		  
		  //************ read selected device Command ******************
		  ssql = "SELECT * FROM Commands Where DeviceID = '" + str(Id) + "' AND Name = '" + CommandName + "'"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  if rs <> nil then
		    CommandName = rs.Field("Name")
		    Position = rs.Field("Position")
		    Script= rs.Field("Script")
		    TabID = rs.Field("TabID")
		    
		    P1Name = rs.Field("P1Name")
		    P1GUIType = rs.Field("P1GUIType")
		    P1MinMaxDef = rs.Field("P1MinMaxDef")
		    P1Mask = rs.Field("P1Mask")
		    P1Default = rs.Field("P1Default")
		    
		    P2Name = rs.Field("P2Name")
		    P2GUIType = rs.Field("P2GUIType")
		    P2MinMaxDef = rs.Field("P2MinMaxDef")
		    P2Mask = rs.Field("P2Mask")
		    P2Default = rs.Field("P2Default")
		    
		    P3Name =  rs.Field("P3Name")
		    P3GUIType = rs.Field("P3GUIType")
		    P3MinMaxDef = rs.Field("P3MinMaxDef")
		    P3Mask = rs.Field("P3Mask")
		    P3Default = rs.Field("P3Default")
		    
		    P4Name = rs.Field("P4Name")
		    P4GUIType = rs.Field("P4GUIType")
		    P4MinMaxDef = rs.Field("P4MinMaxDef")
		    P4Mask = rs.Field("P4Mask")
		    P4Default = rs.Field("P4Default")
		    
		    Timeout = rs.Field("Timeout")
		    AckCmd = rs.Field("AckCmd")
		    NextCmd =  rs.Field("NextCmd")
		    AckString = rs.Field("AckString")
		    AckLen = rs.Field("AckLen")
		    
		    res = CommandName+chr(2)+Position+chr(2)+Script+chr(2)+TabID+chr(2)
		    res = res + P1Name+chr(2)+P1GUIType+chr(2)+P1MinMaxDef+chr(2)+P1Mask+chr(2)+P1Default+chr(2)
		    res = res + P2Name+chr(2)+P2GUIType+chr(2)+P2MinMaxDef+chr(2)+P2Mask+chr(2)+P2Default+chr(2)
		    res = res + P3Name+chr(2)+P3GUIType+chr(2)+P3MinMaxDef+chr(2)+P3Mask+chr(2)+P3Default+chr(2)
		    res = res + P4Name+chr(2)+P4GUIType+chr(2)+P4MinMaxDef+chr(2)+P4Mask+chr(2)+P4Default+chr(2)
		    res = res + Timeout+chr(2)+AckCmd+chr(2)+NextCmd+chr(2)+AckString+chr(2)+AckLen
		    
		    Return res
		  else
		    Return "-3024"
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function db_GetDeviceIdByName(Name as string) As Integer
		  //Gets the Device Index from the database
		  Dim ssql as string
		  Dim rs as RecordSet
		  Dim Id as string
		  
		  if Name = "" then Return -1
		  
		  //************ read selected device devices ******************
		  ssql = "SELECT ID FROM Device Where Name = '" + Name + "'"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  if rs <> nil then
		    id= rs.Field("ID")
		    if id = "" then return -1
		    Return val(Id)
		  else
		    return -1
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_GetDeviceList() As string
		  dim rs as RecordSet
		  dim ssql,res,Name as String
		  
		  if dbDevice = nil then Return "Error: Database not found"
		  
		  //************ read all devices ******************
		  ssql = "SELECT Name FROM Device"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  if rs <> nil then
		    While not rs.eof
		      Name = rs.Field("Name")
		      res = res + Name + chr(2)
		      rs.MoveNext
		    wend
		    //delete last chr(2)
		    res = Mid(res,1,Len(res)-1)
		    Return res
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_GetDeviceListByCategory(Category as string) As string
		  //Selects all Devices where Category match search string
		  dim rs as RecordSet
		  dim ssql,res,sName,sCategory,sID,sManufactor as String
		  
		  if dbDevice = nil then Return "Error: Database not found"
		  
		  //Find Category
		  ssql = "SELECT ID,Name FROM Categorys WHERE Name ='" + Category + "'"
		  rs = dbDevice.SQLSelect(ssql)
		  if rs <> nil then
		    sID = rs.Field("ID")
		    ssql = "SELECT ID,Name,Category,Manufactor FROM Device WHERE Category = '" + sID + "'"
		    rs = dbDevice.SQLSelect(ssql)
		    
		    if rs <> nil then
		      While not rs.eof
		        sID = rs.Field("ID")
		        sName = rs.Field("Name")
		        sCategory = rs.Field("Category")
		        sManufactor = rs.Field("Manufactor")
		        res = res + sID + chr(2) + sCategory + chr(2) + sName + chr(2) + sManufactor + chr(2)
		        rs.MoveNext
		      wend
		      //delete last chr(2)
		      res = Mid(res,1,Len(res)-1)
		      Return res
		    end
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_GetDeviceListByManufactor(Manufactor as string) As string
		  //Selects all Devices where Category match search string
		  dim rs as RecordSet
		  dim ssql,res,sName,sCategory,sID,sManufactor as String
		  
		  if dbDevice = nil then Return "Error: Database not found"
		  
		  //************ read all devices ******************
		  ssql = "SELECT ID,Name,Category,Manufactor FROM Device WHERE Manufactor LIKE '%" + Manufactor + "%'"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  if rs <> nil then
		    While not rs.eof
		      sID = rs.Field("ID")
		      sName = rs.Field("Name")
		      sCategory = rs.Field("Category")
		      sManufactor = rs.Field("Manufactor")
		      res = res + sID + chr(2) + sCategory + chr(2) + sName + chr(2) + sManufactor + chr(2)
		      rs.MoveNext
		    wend
		    //delete last chr(2)
		    res = Mid(res,1,Len(res)-1)
		    Return res
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_GetDeviceListByName(DeviceName as string) As string
		  //Selects all Devices where Category match search string
		  dim rs as RecordSet
		  dim ssql,res,sName,sCategory,sID,sManufactor as String
		  
		  if dbDevice = nil then Return "Error: Database not found"
		  
		  //************ read all devices ******************
		  ssql = "SELECT ID,Name,Category,Manufactor FROM Device WHERE Name LIKE '%" + DeviceName + "%'"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  if rs <> nil then
		    While not rs.eof
		      sID = rs.Field("ID")
		      sName = rs.Field("Name")
		      sCategory = rs.Field("Category")
		      sManufactor = rs.Field("Manufactor")
		      res = res + sID + chr(2) + sCategory + chr(2) + sName + chr(2) + sManufactor + chr(2)
		      rs.MoveNext
		    wend
		    //delete last chr(2)
		    res = Mid(res,1,Len(res)-1)
		    Return res
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_GetDevicePropertiesByName(DeviceName as string) As string
		  
		  dim rs as RecordSet
		  dim ssql as String
		  dim ID,Name,Category,Helptext,Script as string
		  dim DP1Name, DP1MinMaxDef,DP1Default, DP1Mask, DP2Name, DP2MinMaxDef,DP2Default, DP2Mask as string
		  Dim DP1GUIType, DP2GUIType,DeviceGUI,Manufactor as string
		  
		  if dbDevice = nil then Return "0"
		  
		  //************ read selected device devices ******************
		  ssql = "SELECT * FROM Device Where Name = '" + DeviceName + "'"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  
		  if rs <> nil then
		    ID =  rs.Field("ID") 
		    Name =  rs.Field("Name")
		    Category = rs.Field("Category")
		    Helptext = rs.Field("Helptext")
		    Script = rs.Field("Script")
		    Manufactor = rs.Field("Manufactor")
		    DeviceGUI = rs.Field("GuiId")
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
		    
		    Return ID+chr(2)+Name+chr(2)+DeviceName+chr(2)+Category+chr(2)+Helptext+chr(2)+Script+chr(2)+DP1Name+chr(2)+DP1GUIType+chr(2)+DP1MinMaxDef+chr(2)+DP1Default+chr(2)+DP1Mask+chr(2)+DP2Name+chr(2)+DP2GUIType+chr(2)+DP2MinMaxDef+chr(2)+DP2Default+chr(2)+DP2Mask+chr(2)+Manufactor+chr(2)+DeviceGUI
		  else
		    Return "-3007"
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_GetDevicesByCategory(Category as string) As string
		  //Returns a list of all devices in one category
		  dim rs as RecordSet
		  dim ssql,res,Name,sID as String
		  
		  if dbDevice = nil then Return "Error: Database not found"
		  
		  //Find Category
		  ssql = "SELECT ID,Name FROM Categorys WHERE Name ='" + Category + "'"
		  rs = dbDevice.SQLSelect(ssql)
		  if rs <> nil then
		    sID = rs.Field("ID")
		    ssql = "SELECT Name FROM Device WHERE Category ='"+sID + "'"
		    rs = dbDevice.SQLSelect(ssql)
		  end
		  if rs <> nil then
		    While not rs.eof
		      Name = rs.Field("Name")
		      res = res + Name + chr(2)
		      rs.MoveNext
		    wend
		    //delete last chr(2)
		    res = Mid(res,1,Len(res)-1)
		    Return res
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_GetEventList(DeviceName as string) As string
		  //List of Commands in this Order: Position(2)CommandName(2)Position.........
		  dim rs as RecordSet
		  dim ssql,res,Position,Name,TabID,s as String
		  dim id as integer
		  
		  
		  if dbDevice = nil then Return "-3010"
		  
		  //Get ID of selected device
		  id = db_GetDeviceIdByName(DeviceName)
		  if Id = -1 then Return "-3007"
		  
		  //************ read all devices ******************
		  ssql = "SELECT Name, Position, TabID FROM Commands WHERE DeviceId = '" + str(id) + "'"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  if dbDevice.Error then Return "-3016"
		  
		  res = ""
		  if rs <> nil then
		    While not rs.eof
		      s =  rs.Field("TabID")
		      if s = "Events" then
		        Position = rs.Field("Position")
		        Name = rs.Field("Name")
		        TabID = rs.Field("TabID")
		        res = res + Position+chr(2)+Name+chr(2)+TabID+chr(2)
		      end
		      rs.MoveNext
		    wend
		    //delete last chr(2)
		    res = Mid(res,1,Len(res)-1)
		    Return res
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_UpdateCommand(Params as string) As string
		  //Params Order : DeviceName(2)OldCommandName(2)NewCommandName(2)Scrip(2)Position(2)TabID(2)P1Name(2)P1GUIType(2)P1MinMaxDef(2)P1Default(2)P1Mask(2)
		  //                          P2Name(2)P2GUIType(2)P2MinMaxDef(2)P2Default(2)P2Mask(2)P3Name(2)P3GUIType(2)P3MinMaxDef(2)P3Default(2)P3Mask(2)
		  //                          P4Name(2)P4GUIType(2)P4MinMaxDef(2)P4Default(2)P4Mask(2)Timeout(2)AckCmd(2)NextCmd(2)AckString(2)AckLen
		  
		  dim rs as RecordSet
		  dim ssql as String
		  dim id As integer
		  dim DeviceName, OldCommandName, NewCommandName, Script, Position, TabID, P1Name, P1GUIType, P1MinMaxDef, P1Mask, P1Default as String
		  dim P2Name, P2GUIType, P2MinMaxDef, P2Mask, P2Default, P3Name, P3GUIType, P3MinMaxDef, P3Mask, P3Default as String
		  dim P4Name, P4GUIType, P4MinMaxDef, P4Mask, P4Default, Timeout, AckCmd, NextCmd,AckString, AckLen as String
		  
		  
		  //Check for valid Parameter
		  if CountFields(Params,chr(2)) < 31 then Return "-3020"
		  DeviceName = NthField(Params,chr(2),1)
		  OldCommandName = NthField(Params,chr(2),2)
		  NewCommandName = NthField(Params,chr(2),3)
		  Script = NthField(Params,chr(2),4)
		  Position = NthField(Params,chr(2),5)
		  TabID = NthField(Params,chr(2),6)
		  
		  P1Name = NthField(Params,chr(2),7)
		  P1GUIType = NthField(Params,chr(2),8)
		  P1MinMaxDef = NthField(Params,chr(2),9)
		  P1Mask = NthField(Params,chr(2),10)
		  P1Default = NthField(Params,chr(2),11)
		  
		  P2Name = NthField(Params,chr(2),12)
		  P2GUIType = NthField(Params,chr(2),13)
		  P2MinMaxDef = NthField(Params,chr(2),14)
		  P2Mask = NthField(Params,chr(2),15)
		  P2Default = NthField(Params,chr(2),16)
		  
		  P3Name = NthField(Params,chr(2),17)
		  P3GUIType = NthField(Params,chr(2),18)
		  P3MinMaxDef = NthField(Params,chr(2),19)
		  P3Mask = NthField(Params,chr(2),20)
		  P3Default = NthField(Params,chr(2),21)
		  
		  P4Name = NthField(Params,chr(2),22)
		  P4GUIType = NthField(Params,chr(2),23)
		  P4MinMaxDef = NthField(Params,chr(2),24)
		  P4Mask = NthField(Params,chr(2),25)
		  P4Default = NthField(Params,chr(2),26)
		  
		  Timeout = NthField(Params,chr(2),27)
		  AckCmd = NthField(Params,chr(2),28)
		  NextCmd = NthField(Params,chr(2),29)
		  AckString = NthField(Params,chr(2),30)
		  AckLen = NthField(Params,chr(2),31)
		  
		  //Get ID of selected device
		  id = db_GetDeviceIdByName(DeviceName)
		  if Id = -1 then Return "-3007"
		  
		  
		  //Update current Record
		  ssql = "SELECT * FROM Commands Where DeviceID = '" + str(id) + "' AND Name = '" + OldCommandName + "'"
		  rs = dbDevice.SQLSelect(ssql)
		  rs.Edit
		  rs.IdxField(3).Value = NewCommandName
		  rs.IdxField(4).Value = Script
		  rs.IdxField(5).Value = TabID
		  rs.IdxField(6).Value = Timeout
		  rs.IdxField(7).Value = AckCmd
		  rs.IdxField(8).Value = NextCmd
		  rs.IdxField(9).Value = Position
		  
		  rs.IdxField(10).Value = P1Name
		  rs.IdxField(11).Value = P1GUIType
		  rs.IdxField(12).Value = P1MinMaxDef
		  rs.IdxField(13).Value = P1Default
		  rs.IdxField(14).Value = P1Mask
		  
		  rs.IdxField(15).Value = P2Name
		  rs.IdxField(16).Value = P2GUIType
		  rs.IdxField(17).Value = P2MinMaxDef
		  rs.IdxField(18).Value = P2Default
		  rs.IdxField(19).Value = P2Mask
		  
		  rs.IdxField(20).Value = P3Name
		  rs.IdxField(21).Value = P3GUIType
		  rs.IdxField(22).Value = P3MinMaxDef
		  rs.IdxField(23).Value = P3Default
		  rs.IdxField(24).Value = P3Mask
		  
		  rs.IdxField(25).Value = P4Name
		  rs.IdxField(26).Value = P4GUIType
		  rs.IdxField(27).Value = P4MinMaxDef
		  rs.IdxField(28).Value = P4Default
		  rs.IdxField(29).Value = P4Mask
		  
		  rs.IdxField(30).Value = AckString
		  rs.IdxField(31).Value = AckLen
		  
		  
		  
		  rs.Update
		  
		  
		  If dbDevice.error then Return "-3016"
		  
		  dbDevice.Commit
		  
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db_UpdateDevice(Params as string) As string
		  //Params Order: 
		  // OldDeviceName(2)NewDeviceName(2)Category(2)Helptext(2)Script
		  // DP1Name(2)DP1GUIType(2)DP1MinMax(2)DP1Default(2)DP1Mask(2)DP2Name(2)DP2GUIType(2)DP2MinMax(2)DP2Default(2)DP2Mask(2)
		  dim rs as RecordSet
		  dim ssql as String
		  dim OldDeviceName, NewDeviceName,Category, Helptext, Script as string
		  dim DP1Name, DP1MinMaxDef,DP1Default, DP1Mask, DP2Name, DP2MinMaxDef,DP2Default, DP2Mask as string
		  Dim DP1GUIType, DP2GUIType,DeviceGUI,Manufactor as string
		  
		  //Check for valid Params
		  if CountFields(Params,chr(2)) < 15 then Return "-3021"
		  OldDeviceName = NthField(Params,chr(2),1)
		  NewDeviceName = NthField(Params,chr(2),2)
		  Category = NthField(Params,chr(2),3)
		  Helptext = NthField(Params,chr(2),4)
		  Script = NthField(Params,chr(2),5)
		  DP1Name = NthField(Params,chr(2),6)
		  DP1GUIType = NthField(Params,chr(2),7)
		  DP1MinMaxDef = NthField(Params,chr(2),8)
		  DP1Default = NthField(Params,chr(2),9)
		  DP1Mask = NthField(Params,chr(2),10)
		  
		  DP2Name = NthField(Params,chr(2),11)
		  DP2GUIType = NthField(Params,chr(2),12)
		  DP2MinMaxDef = NthField(Params,chr(2),13)
		  DP2Default = NthField(Params,chr(2),14)
		  DP2Mask = NthField(Params,chr(2),15)
		  DeviceGUI = NthField(Params,chr(2),16)
		  Manufactor = NthField(Params,chr(2),17)
		  
		  
		  //Update current Record
		  ssql = "SELECT * FROM Device Where Name = '" + OldDeviceName + "'"
		  rs = dbDevice.SQLSelect(ssql)
		  rs.Edit
		  rs.IdxField(2).Value = NewDeviceName
		  rs.IdxField(3).Value = DeviceGUI 
		  rs.IdxField(4).Value = Category
		  rs.IdxField(5).Value = Helptext
		  rs.IdxField(6).Value = Script
		  
		  rs.IdxField(7).Value = DP1Name
		  rs.IdxField(8).Value = DP1GUIType
		  rs.IdxField(9).Value = DP1MinMaxDef
		  rs.IdxField(10).Value = DP1Default
		  rs.IdxField(11).Value = DP1Mask
		  
		  rs.IdxField(12).Value = DP2Name
		  rs.IdxField(13).Value = DP2GUIType
		  rs.IdxField(14).Value = DP2MinMaxDef
		  rs.IdxField(15).Value = DP2Default
		  rs.IdxField(16).Value = DP2Mask
		  rs.IdxField(17).Value = Manufactor
		  rs.Update
		  
		  
		  If dbDevice.error then Return "-3016"
		  dbDevice.Commit
		  Return "0"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteCommand(Params as string) As string
		  //Param Order: DeviceName(2)CommandName
		  
		  dim CommandName, DeviceName as string
		  dim i, Id as Integer
		  
		  //Check for valid Params
		  if CountFields(Params,chr(2)) < 2 then Return "-3023"
		  
		  DeviceName = NthField(Params,chr(2),1)
		  CommandName = NthField(Params,chr(2),2)
		  
		  Id = GetDeviceIdByName(DeviceName)
		  if ID = -1 then Return "-3007"
		  
		  i = GetCommandIdByName(DeviceName,CommandName)
		  if i = -1 then Return "-1"
		  
		  
		  aDevices(ID).aCMD.Remove(i)
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ExportDevice(DatabaseFilePath as string, DevName as string) As string
		  Dim f as FolderItem
		  Dim DevBD As REALSQLDatabase
		  dim rec as New DatabaseRecord
		  dim ssql,res,CmdName as String
		  dim DevIdx,CmdIdx,i as integer
		  
		  
		  try
		    f = New FolderItem(DatabaseFilePath)
		  catch
		    Return "-3011"
		  Finally
		  end
		  
		  //if database exist then delete
		  if f.Exists then f.Delete
		  
		  
		  //create new database
		  DevBD = New REALSQLdatabase
		  DevBD.databaseFile=f
		  If DevBD.CreateDatabaseFile then
		    
		    //create table Device
		    ssql = "CREATE TABLE Device(ID integer, Name text, GuiId text, Category integer, Helptext text, Script text, DP1Name text, DP1GUIType integer, DP1MinMaxDef text,"
		    ssql = ssql + "DP1Default text, DP1Mask text, DP2Name text, DP2GUIType integer, DP2MinMaxDef text, DP2Default text, DP2Mask text, Manufactor text, Spare1 text,Spare2 text,Spare3 text,Spare4 text,Spare5 text,Spare6 text,Spare7 text,Spare8 text,Spare9 text,Spare10 text)"
		    DevBD.SQLExecute(ssql)
		    
		    //create table Category
		    ssql = "CREATE TABLE Categorys(ID integer PRIMARY KEY, Name text)"
		    DevBD.SQLExecute(ssql)
		    
		    //create table Commands
		    ssql = "CREATE TABLE Commands(ID integer PRIMARY KEY, DeviceID integer, Name text, Script text, TabID text, Timeout integer, AckCmd text, NextCmd text, Position integer,"
		    ssql = ssql + "P1Name text, P1GUIType integer, P1MinMaxDef text, P1Default text, P1Mask text,"
		    ssql = ssql + "P2Name text, P2GUIType integer, P2MinMaxDef text, P2Default text, P2Mask text,"
		    ssql = ssql + "P3Name text, P3GUIType integer, P3MinMaxDef text, P3Default text, P3Mask text,"
		    ssql = ssql + "P4Name text, P4GUIType integer, P4MinMaxDef text, P4Default text, P4Mask text,"
		    ssql = ssql + "AckString text, AckLen integer, Spare1 text,Spare2 text,Spare3 text,Spare4 text,Spare5 text,Spare6 text,Spare7 text,Spare8 text,Spare9 text,Spare10 text)"
		    DevBD.SQLExecute(ssql)
		    
		    
		    DevIdx = GetDeviceIdByName(DevName)
		    if DevIdx < 0 then Return "-3007"
		    
		    //******* insert Device *********
		    rec.Column("ID") = str(DevIdx)
		    rec.Column("Name") = aDevices(DevIdx).DriverName
		    rec.Column("GuiId") = str(aDevices(DevIdx).GUIID)
		    rec.Column("Category") = aDevices(DevIdx).Category
		    rec.Column("Helptext") = aDevices(DevIdx).Helptext
		    rec.Column("Script") = aDevices(DevIdx).Source
		    rec.Column("Manufactor") = aDevices(DevIdx).Manufactor
		    
		    rec.Column("DP1Name") = aDevices(DevIdx).DP1Name
		    rec.Column("DP1GUIType") = str(aDevices(DevIdx).DP1GUIType)
		    rec.Column("DP1MinMaxDef") = aDevices(DevIdx).DP1MinMaxDef
		    rec.Column("DP1Default") = aDevices(DevIdx).DP1Default
		    rec.Column("DP1Mask") = aDevices(DevIdx).DP1Mask
		    
		    rec.Column("DP2Name") = aDevices(DevIdx).DP2Name
		    rec.Column("DP2GUIType") = str(aDevices(DevIdx).DP2GUIType)
		    rec.Column("DP2MinMaxDef") = aDevices(DevIdx).DP2MinMaxDef
		    rec.Column("DP2Default") = aDevices(DevIdx).DP2Default
		    rec.Column("DP2Mask") = aDevices(DevIdx).DP2Mask
		    
		    DevBD.InsertRecord("Device",rec)
		    If DevBD.error then Return "-3016 " + dbDevice.ErrorMessage
		    
		    //************* insert Commands
		    rec = Nil
		    rec = new DatabaseRecord
		    
		    res = GetCommandList(DevName)
		    for i =2 to CountFields(res,chr(2)) step 3
		      CmdName = NthField(res,chr(2),i)
		      CmdIdx = GetCommandIdByName(DevName,CmdName)
		      if CmdIdx >=0 then
		        rec.Column("DeviceID") = str(DevIdx)
		        rec.Column("Name") = aDevices(DevIdx).aCMD(CmdIdx).CmdName
		        rec.Column("Script") = aDevices(DevIdx).aCMD(CmdIdx).CmdScript
		        rec.Column("Position") = str(aDevices(DevIdx).aCMD(CmdIdx).Position)
		        rec.Column("TabID") = aDevices(DevIdx).aCMD(CmdIdx).TabID
		        
		        rec.Column("P1Name") = aDevices(DevIdx).aCMD(CmdIdx).P1Name
		        rec.Column("P1GUIType") = str(aDevices(DevIdx).aCMD(CmdIdx).P1GUIType)
		        rec.Column("P1MinMaxDef") = aDevices(DevIdx).aCMD(CmdIdx).P1MinMaxDef
		        rec.Column("P1Mask") = aDevices(DevIdx).aCMD(CmdIdx).P1Mask
		        rec.Column("P1Default") = aDevices(DevIdx).aCMD(CmdIdx).P1Default
		        
		        rec.Column("P2Name") = aDevices(DevIdx).aCMD(CmdIdx).P2Name
		        rec.Column("P2GUIType") = str(aDevices(DevIdx).aCMD(CmdIdx).P2GUIType)
		        rec.Column("P2MinMaxDef") = aDevices(DevIdx).aCMD(CmdIdx).P2MinMaxDef
		        rec.Column("P2Mask") = aDevices(DevIdx).aCMD(CmdIdx).P2Mask
		        rec.Column("P2Default") = aDevices(DevIdx).aCMD(CmdIdx).P2Default
		        
		        rec.Column("P3Name") = aDevices(DevIdx).aCMD(CmdIdx).P3Name
		        rec.Column("P3GUIType") = str(aDevices(DevIdx).aCMD(CmdIdx).P3GUIType)
		        rec.Column("P3MinMaxDef") = aDevices(DevIdx).aCMD(CmdIdx).P3MinMaxDef
		        rec.Column("P3Mask") = aDevices(DevIdx).aCMD(CmdIdx).P3Mask
		        rec.Column("P3Default") = aDevices(DevIdx).aCMD(CmdIdx).P3Default
		        
		        rec.Column("P4Name") = aDevices(DevIdx).aCMD(CmdIdx).P4Name
		        rec.Column("P4GUIType") = str(aDevices(DevIdx).aCMD(CmdIdx).P4GUIType)
		        rec.Column("P4MinMaxDef") = aDevices(DevIdx).aCMD(CmdIdx).P4MinMaxDef
		        rec.Column("P4Mask") = aDevices(DevIdx).aCMD(CmdIdx).P4Mask
		        rec.Column("P4Default") = aDevices(DevIdx).aCMD(CmdIdx).P4Default
		        
		        rec.Column("Timeout") = str(aDevices(DevIdx).aCMD(CmdIdx).Timeout)
		        rec.Column("AckCmd") = aDevices(DevIdx).aCMD(CmdIdx).AckCmd
		        rec.Column("NextCmd") = aDevices(DevIdx).aCMD(CmdIdx).NextCmd
		        rec.Column("AckString") = aDevices(DevIdx).aCMD(CmdIdx).AckString
		        rec.Column("AckLen") = str(aDevices(DevIdx).aCMD(CmdIdx).AckLen)
		        
		        DevBD.InsertRecord("Commands",rec)
		        If DevBD.error then Return "-3016"
		        DevBD.Commit
		        
		      end
		    next
		    
		    //************* insert Events
		    rec = Nil
		    rec = new DatabaseRecord
		    
		    res = GetEventList(DevName)
		    for i =2 to CountFields(res,chr(2)) step 3
		      CmdName = NthField(res,chr(2),i)
		      CmdIdx = GetCommandIdByName(DevName,CmdName)
		      if CmdIdx >=0 then
		        rec.Column("DeviceID") = str(DevIdx)
		        rec.Column("Name") = aDevices(DevIdx).aCMD(CmdIdx).CmdName
		        rec.Column("Script") = aDevices(DevIdx).aCMD(CmdIdx).CmdScript
		        rec.Column("Position") = str(aDevices(DevIdx).aCMD(CmdIdx).Position)
		        rec.Column("TabID") = aDevices(DevIdx).aCMD(CmdIdx).TabID
		        
		        rec.Column("P1Name") = aDevices(DevIdx).aCMD(CmdIdx).P1Name
		        rec.Column("P1GUIType") = str(aDevices(DevIdx).aCMD(CmdIdx).P1GUIType)
		        rec.Column("P1MinMaxDef") = aDevices(DevIdx).aCMD(CmdIdx).P1MinMaxDef
		        rec.Column("P1Mask") = aDevices(DevIdx).aCMD(CmdIdx).P1Mask
		        rec.Column("P1Default") = aDevices(DevIdx).aCMD(CmdIdx).P1Default
		        
		        rec.Column("P2Name") = aDevices(DevIdx).aCMD(CmdIdx).P2Name
		        rec.Column("P2GUIType") = str(aDevices(DevIdx).aCMD(CmdIdx).P2GUIType)
		        rec.Column("P2MinMaxDef") = aDevices(DevIdx).aCMD(CmdIdx).P2MinMaxDef
		        rec.Column("P2Mask") = aDevices(DevIdx).aCMD(CmdIdx).P2Mask
		        rec.Column("P2Default") = aDevices(DevIdx).aCMD(CmdIdx).P2Default
		        
		        rec.Column("P3Name") = aDevices(DevIdx).aCMD(CmdIdx).P3Name
		        rec.Column("P3GUIType") = str(aDevices(DevIdx).aCMD(CmdIdx).P3GUIType)
		        rec.Column("P3MinMaxDef") = aDevices(DevIdx).aCMD(CmdIdx).P3MinMaxDef
		        rec.Column("P3Mask") = aDevices(DevIdx).aCMD(CmdIdx).P3Mask
		        rec.Column("P3Default") = aDevices(DevIdx).aCMD(CmdIdx).P3Default
		        
		        rec.Column("P4Name") = aDevices(DevIdx).aCMD(CmdIdx).P4Name
		        rec.Column("P4GUIType") = str(aDevices(DevIdx).aCMD(CmdIdx).P4GUIType)
		        rec.Column("P4MinMaxDef") = aDevices(DevIdx).aCMD(CmdIdx).P4MinMaxDef
		        rec.Column("P4Mask") = aDevices(DevIdx).aCMD(CmdIdx).P4Mask
		        rec.Column("P4Default") = aDevices(DevIdx).aCMD(CmdIdx).P4Default
		        
		        rec.Column("Timeout") = str(aDevices(DevIdx).aCMD(CmdIdx).Timeout)
		        rec.Column("AckCmd") = aDevices(DevIdx).aCMD(CmdIdx).AckCmd
		        rec.Column("NextCmd") = aDevices(DevIdx).aCMD(CmdIdx).NextCmd
		        rec.Column("AckString") = aDevices(DevIdx).aCMD(CmdIdx).AckString
		        rec.Column("AckLen") = str(aDevices(DevIdx).aCMD(CmdIdx).AckLen)
		        
		        DevBD.InsertRecord("Commands",rec)
		        If DevBD.error then Return "-3016"
		        DevBD.Commit
		        
		      end
		    next
		    Return "0"
		  else
		    Return "-3011"
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetCommandIdByName(DeviceName as string, CmdName as string) As integer
		  dim devIdx, CmdIdx as integer
		  
		  
		  devIdx = GetDeviceIdByName(DeviceName)
		  if devIdx = -1 then Return -1
		  
		  for CmdIdx = 0 to UBound(aDevices(devIdx).aCMD)
		    if aDevices(devIdx).aCMD(CmdIdx).CmdName = CmdName then Return CmdIdx
		  next
		  Return -1
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCommandList(DeviceName as string) As string
		  //List of Commands in this Order: Position(2)CommandName(2)TabID(2)Position.........
		  dim res,Position,Name,TabID as String
		  dim id,i as integer
		  
		  
		  //Get ID of selected device
		  id = GetDeviceIdByName(DeviceName)
		  if Id = -1 then Return "-3007"
		  
		  res = ""
		  for i = 0 to UBound(aDevices(id).aCMD)
		    if aDevices(id).aCMD(i).TabID<> "Events" then
		      Position = str(aDevices(id).aCMD(i).Position)
		      Name = aDevices(id).aCMD(i).CMDName
		      TabID = aDevices(id).aCMD(i).TabID
		      res = res + Position+chr(2)+Name+chr(2)+TabID+chr(2)
		    end
		  next
		  //delete last chr(2)
		  res = Mid(res,1,Len(res)-1)
		  Return res
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCommandProperties(DeviceName as string, CMDName as string) As string
		  dim id,i as integer
		  dim res as string
		  dim CommandName, Script, Position, TabID, P1Name, P1GUIType, P1MinMaxDef, P1Mask,P1Default as String
		  dim P2Name, P2GUIType, P2MinMaxDef, P2Mask,P2Default, P3Name, P3GUIType, P3MinMaxDef, P3Mask,P3Default as String
		  dim P4Name, P4GUIType, P4MinMaxDef, P4Mask,P4Default, Timeout, AckCmd, NextCmd,AckString, AckLen as String
		  
		  
		  //Get ID of selected device
		  id = GetDeviceIdByName(DeviceName)
		  if id = -1 then Return "-3007"
		  
		  i = DevMan.GetCommandIdByName(DeviceName,CMDName)
		  if i = -1 then Return "-3024"
		  
		  CommandName = aDevices(id).aCMD(i).CMDName
		  Position = str(aDevices(id).aCMD(i).Position)
		  Script = aDevices(id).aCMD(i).CmdScript
		  TabID = aDevices(id).aCMD(i).TabID
		  
		  P1Name = aDevices(id).aCMD(i).P1Name
		  P1GUIType = str(aDevices(id).aCMD(i).P1GUIType)
		  P1MinMaxDef = aDevices(id).aCMD(i).P1MinMaxDef
		  P1Mask = aDevices(id).aCMD(i).P1Mask
		  P1Default = aDevices(id).aCMD(i).P1Default
		  
		  P2Name = aDevices(id).aCMD(i).P2Name
		  P2GUIType = str(aDevices(id).aCMD(i).P2GUIType)
		  P2MinMaxDef = aDevices(id).aCMD(i).P2MinMaxDef
		  P2Mask = aDevices(id).aCMD(i).P2Mask
		  P2Default = aDevices(id).aCMD(i).P2Default
		  
		  P3Name = aDevices(id).aCMD(i).P3Name
		  P3GUIType = str(aDevices(id).aCMD(i).P3GUIType)
		  P3MinMaxDef = aDevices(id).aCMD(i).P3MinMaxDef
		  P3Mask = aDevices(id).aCMD(i).P3Mask
		  P3Default = aDevices(id).aCMD(i).P3Default
		  
		  P4Name = aDevices(id).aCMD(i).P4Name
		  P4GUIType = str(aDevices(id).aCMD(i).P4GUIType)
		  P4MinMaxDef = aDevices(id).aCMD(i).P4MinMaxDef
		  P4Mask = aDevices(id).aCMD(i).P4Mask
		  P4Default = aDevices(id).aCMD(i).P4Default
		  
		  Timeout = str(aDevices(id).aCMD(i).Timeout)
		  AckCmd = aDevices(id).aCMD(i).AckCmd
		  NextCmd =  aDevices(id).aCMD(i).NextCmd
		  AckString = aDevices(id).aCMD(i).AckString
		  AckLen = str(aDevices(id).aCMD(i).AckLen)
		  
		  res = CommandName+chr(2)+Position+chr(2)+Script+chr(2)+TabID+chr(2)
		  res = res + P1Name+chr(2)+P1GUIType+chr(2)+P1MinMaxDef+chr(2)+P1Mask+chr(2)+P1Default+chr(2)
		  res = res + P2Name+chr(2)+P2GUIType+chr(2)+P2MinMaxDef+chr(2)+P2Mask+chr(2)+P2Default+chr(2)
		  res = res + P3Name+chr(2)+P3GUIType+chr(2)+P3MinMaxDef+chr(2)+P3Mask+chr(2)+P3Default+chr(2)
		  res = res + P4Name+chr(2)+P4GUIType+chr(2)+P4MinMaxDef+chr(2)+P4Mask+chr(2)+P4Default+chr(2)
		  res = res + Timeout+chr(2)+AckCmd+chr(2)+NextCmd+chr(2)+AckString+chr(2)+AckLen
		  
		  
		  Return res
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDeviceHelp(DeviceName as string) As string
		  dim i as integer
		  
		  i = GetDeviceIdByName(DeviceName)
		  if i = -1 then Return "-3007"
		  
		  Return aDevices(i).Helptext
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDeviceIdByName(DeviceName as string) As Integer
		  //get the device indexs of a aDevices() from DeviceManager
		  
		  dim i as integer
		  
		  
		  for i = 0 to UBound(aDevices)
		    if aDevices(i).DeviceName = DeviceName then Return i
		  next
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDeviceList() As string
		  dim i as integer
		  dim s as string
		  
		  for i = 0 to UBound(aDevices)
		    s = s + aDevices(i).DeviceName + chr(2)
		  next
		  s = DeleteLastChar(s,chr(2))
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDevicePropertiesByName(DeviceName as string) As string
		  dim iId as integer
		  dim ID,Name,DriverName,Category,Helptext,Script as string
		  dim DP1Name, DP1MinMaxDef,DP1Default, DP1Mask, DP2Name, DP2MinMaxDef,DP2Default, DP2Mask as string
		  Dim DP1GUIType, DP2GUIType,Manufactor,DeviceGUI as string
		  
		  iId = DevMan.GetDeviceIdByName(DeviceName)
		  if iId = -1 then Return "-3007"
		  
		  ID = str(iId)
		  Name =  aDevices(iID).DeviceName
		  DriverName = aDevices(iID).DriverName
		  Category = aDevices(iID).Category
		  Helptext = aDevices(iID).Helptext
		  Script = aDevices(iID).Source
		  
		  DP1Name = aDevices(iID).DP1Name
		  DP1GUIType = str(aDevices(iID).DP1GUIType)
		  DP1MinMaxDef = aDevices(iID).DP1MinMaxDef
		  DP1Default = aDevices(iID).DP1Default
		  DP1Mask = aDevices(iID).DP1Mask
		  
		  DP2Name = aDevices(iID).DP2Name
		  DP2GUIType = str(aDevices(iID).DP2GUIType)
		  DP2MinMaxDef = aDevices(iID).DP2MinMaxDef
		  DP2Default = aDevices(iID).DP2Default
		  DP2Mask = aDevices(iID).DP2Mask
		  Manufactor = aDevices(iID).Manufactor
		  DeviceGUI = str(aDevices(iID).GUIID)
		  Return ID+chr(2)+DriverName+chr(2)+Name+chr(2)+Category+chr(2)+Helptext+chr(2)+Script+chr(2)+DP1Name+chr(2)+DP1GUIType+chr(2)+DP1MinMaxDef+chr(2)+DP1Default+chr(2)+DP1Mask+chr(2)+DP2Name+chr(2)+DP2GUIType+chr(2)+DP2MinMaxDef+chr(2)+DP2Default+chr(2)+DP2Mask+chr(2)+Manufactor+chr(2)+DeviceGUI
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetEventHandlerFromParams(DevName as string, Cmd as string, Channel as string, DP1 as string, DP2 as string, P1 as string, P2 as string , P3 as string , P4 as string,TermChar as string) As string
		  //Diese Funktion liefert den Tasknamen zurück, der bei Auftreten eines Events abgefeuert werden soll.
		  //Die Funktion wurde eingefuehrt um Device Treibern das Ausloesen von Events zu ermoeglichen
		  dim i as integer
		  
		  for i = 0 to UBound(EventList)
		    //MsgBox(EventList(i).ChannelName+":"+ Channel +":"+ EventList(i).DeviceName +":"+ DevName +":"+ EventList(i).DP1 +":"+ DP1 +":"+ EventList(i).DP2 +":"+DP2 +":"+ EventList(i).EventName +":"+ Cmd +":"+ EventList(i).P1+":"+ P1 +":"+ EventList(i).P2 +":"+ P2 +":"+ EventList(i).P3+":"+ P3 +":"+ EventList(i).P4+":"+ P4 +":"+ EventList(i).TermChar +":"+ TermChar )
		    if EventList(i).ChannelName = Channel and EventList(i).DeviceName = DevName and EventList(i).DP1 = DP1 and EventList(i).DP2 = DP2 and EventList(i).EventName = Cmd and EventList(i).P1 = P1 and EventList(i).P2 = P2 and EventList(i).P3 = P3 and EventList(i).P4 = P4 and EventList(i).TermChar = TermChar then
		      //MsgBox("return "+EventList(i).CuesetName)
		      Return EventList(i).CuesetName
		    end
		  next
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetEventList(DeviceName as string) As string
		  //List of Commands in this Order: Position(2)CommandName(2)TabID(2)Position.........
		  dim res,Position,Name,TabID as String
		  dim id,i as integer
		  
		  
		  //Get ID of selected device
		  id = GetDeviceIdByName(DeviceName)
		  if Id = -1 then Return "-3007"
		  
		  res = ""
		  for i = 0 to UBound(aDevices(id).aCMD)
		    if aDevices(id).aCMD(i).TabID = "Events" then
		      Position = str(aDevices(id).aCMD(i).Position)
		      Name = aDevices(id).aCMD(i).CMDName
		      TabID = aDevices(id).aCMD(i).TabID
		      res = res + Position+chr(2)+Name+chr(2)+TabID+chr(2)
		    end
		  next
		  //delete last chr(2)
		  res = Mid(res,1,Len(res)-1)
		  Return res
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetIoChannels(DeviceName as string) As string
		  dim i as Integer
		  
		  i = GetDeviceIdByName(DeviceName)
		  if i = -1 then Return "-3007"
		  
		  Return aDevices(i).Channels
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetScript(DeviceName as string) As string
		  dim i as integer
		  
		  i = GetDeviceIdByName(DeviceName)
		  if i = -1 then Return "-3007"
		  
		  Return aDevices(i).Source
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HandleChannelEvent(ChannelName as string, Data as string)
		  dim i,c as integer
		  dim cres as TResult
		  dim b as boolean
		  
		  
		  //Check if we have an EventHandler
		  for i = 0 to UBound(EventList)
		    if EventList(i).ChannelName = ChannelName then
		      cres = DevMan.RunCommand("DirectAccessModeCommand",EventList(i).DeviceName,EventList(i).ChannelName,EventList(i).EventName,EventList(i).DP1,EventList(i).DP2,EventList(i).P1,EventList(i).P2,EventList(i).P3,EventList(i).P4,Data)
		      
		      if cres.ErrorNum = 0 then 
		        c = ScrMan.GetCuesetIdByName(EventList(i).CuesetName)
		        if c >= 0 then
		          'if ScrMan.aCuesets(c).Blocked = False then
		          'ScrMan.HandleEngineEvent("DevMan", EventList(i).DeviceName, ChannelName,"Event",EventList(i).CuesetName,EventList(i).EventName)
		          '//ScriptResult vom vorherigen Kommando uebertragen
		          ScrMan.aCuesets(c).CuesetContext.IOResult = cres.Resultmsg
		          'res = ScrMan.RunCueset(EventList(i).CuesetName,1)
		          //Events wieder einschalten
		          b = IOMan.SetEnableEvents(ChannelName,true)
		          exit sub
		          'end
		        end
		      end
		    end
		  next
		  
		  //Events wieder einschalten
		  b = IOMan.SetEnableEvents(ChannelName,true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HandleCompileError(Device as string, Line as integer, ErrorNum as integer, ErrorMsg as string)
		  scrMan.HandleEngineEvent("DevMan", Device, "NoChannel","CompilerError",str(Line)+ chr(2) + str(ErrorNum)+ chr(2) + ErrorMsg,"")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HandleRuntimeError(Device as string, Line as integer, ErrorMsg as string)
		  scrMan.HandleEngineEvent("DevMan", Device,"NoChannel", "RuntimeError",str(Line)+ chr(2) + ErrorMsg,"")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ImportDevice(DatabaseFilePath as string, DevName as string) As string
		  //Creates a new Device from DeviceDataBase
		  dim DevDB as New REALSQLDatabase
		  dim rs as RecordSet
		  dim rsCmd as RecordSet
		  dim ssql,res,s as String
		  dim f as FolderItem
		  dim ID,DeviceName,DriverName,Category,Helptext,DeviceScript as string
		  dim DP1Name, DP1MinMaxDef,DP1Default, DP1Mask, DP2Name, DP2MinMaxDef,DP2Default, DP2Mask as string
		  Dim DP1GUIType, DP2GUIType,DeviceGUI,Manufactor as string
		  dim CmdName,CmdScript as string
		  dim P1Name, P1MinMaxDef,P1Default, P1Mask,P1GUIId as string
		  dim P2Name, P2MinMaxDef,P2Default, P2Mask,P2GUIId as string
		  dim P3Name, P3MinMaxDef,P3Default, P3Mask,P3GUIId as string
		  dim P4Name, P4MinMaxDef,P4Default, P4Mask,P4GUIId as string
		  dim Timeout,AckCmd,AckString,AckLen,NextCmd,Position,TabID as string
		  
		  // database
		  try
		    f = GetFolderItem( DatabaseFilePath )
		    if f.Exists then
		      DevDB = nil
		      
		      DevDB=New REALSQLdatabase
		      DevDB.databaseFile=f
		      If not DevDB.Connect then Return "-3028"
		      
		    else
		      Return "-3028"
		    end
		  Exception
		    Return "-3028"
		  end
		  
		  if DevDB = nil then Return "-3028"
		  
		  
		  //************ read Devices ******************
		  ssql = "SELECT * FROM Device"
		  rs = DevDB.SQLSelect(ssql)
		  
		  
		  if rs <> nil then
		    //Get Device
		    while not rs.EOF
		      //Get Device Properties
		      ID =  rs.Field("ID")
		      DeviceName = DevName
		      //DriverName =  rs.Field("DriverName")
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
		      
		      
		      //Create new device
		      s = DeviceName+chr(2)+Category+chr(2)+Helptext+chr(2)+DeviceScript+chr(2)+DP1Name+chr(2)+DP1GUIType+chr(2)+DP1MinMaxDef+chr(2)+DP1Default+chr(2)+DP1Mask+chr(2)+DP2Name+chr(2)+DP2GUIType+chr(2)+DP2MinMaxDef+chr(2)+DP2Default+chr(2)+DP2Mask+chr(2)+DeviceGUI+chr(2)+Manufactor+chr(2)+DriverName
		      res = DevMan.db_CreateDevice(s)
		      
		      
		      '//************ read selected device Command ******************
		      ssql = "SELECT * FROM Commands Where DeviceID = '" + Id +"'"
		      rsCmd = DevDB.SQLSelect(ssql)
		      
		      
		      if rsCmd <> nil then
		        While not rsCmd.EOF
		          res = ""
		          cmdName =  rsCmd.Field("Name") 
		          CmdScript = rsCmd.Field("Script")
		          Position = rsCmd.Field("Position")
		          TabID = rsCmd.Field("TabID")
		          
		          P1Name = rsCmd.Field("P1Name")
		          P1GUIId = rsCmd.Field("P1GUIType")
		          P1MinMaxDef = rsCmd.Field("P1MinMaxDef")
		          P1Mask = rsCmd.Field("P1Mask")
		          P1Default = rsCmd.Field("P1Default")
		          
		          P2Name = rsCmd.Field("P2Name")
		          P2GUIId = rsCmd.Field("P2GUIType")
		          P2MinMaxDef = rsCmd.Field("P2MinMaxDef")
		          P2Mask = rsCmd.Field("P2Mask")
		          P2Default = rsCmd.Field("P2Default")
		          
		          P3Name =  rsCmd.Field("P3Name")
		          P3GUIId = rsCmd.Field("P3GUIType")
		          P3MinMaxDef = rsCmd.Field("P3MinMaxDef")
		          P3Mask = rsCmd.Field("P3Mask")
		          P3Default = rsCmd.Field("P3Default")
		          
		          P4Name = rsCmd.Field("P4Name")
		          P4GUIId = rsCmd.Field("P4GUIType")
		          P4MinMaxDef = rsCmd.Field("P4MinMaxDef")
		          P4Mask = rsCmd.Field("P4Mask")
		          P4Default = rsCmd.Field("P4Default")
		          
		          Timeout = rsCmd.Field("Timeout")
		          AckCmd = rsCmd.Field("AckCmd")
		          NextCmd =  rsCmd.Field("NextCmd")
		          AckString =  rsCmd.Field("AckString")
		          AckLen = rsCmd.Field("AckLen")
		          
		          res = DevName+chr(2)+CmdName+chr(2)+CmdScript+chr(2)+Position+chr(2)+TabID+chr(2)+P1Name+chr(2)+P1GUIid+chr(2)+P1MinMaxDef+chr(2)+P1Mask+chr(2)+P1Default+chr(2)
		          res = res + P2Name+chr(2)+P2GUIid+chr(2)+P2MinMaxDef+chr(2)+P2Mask+chr(2)+P2Default+chr(2)+P3Name+chr(2)+P3GUIid+chr(2)+P3MinMaxDef+chr(2)+P3Mask+chr(2)+P3Default+chr(2)
		          res = res + P4Name+chr(2)+P4GUIid+chr(2)+P4MinMaxDef+chr(2)+P4Mask+chr(2)+P4Default+chr(2)+Timeout+chr(2)+AckCmd+chr(2)+NextCmd+chr(2)+AckString+chr(2)+AckLen
		          res = db_CreateCommand(res)
		          rsCmd.MoveNext
		        wend
		        
		      end
		      
		      
		      rs.MoveNext
		    wend
		  end
		  
		  
		  DevDB.Close
		  return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LoadDeviceFromDB(DeviceName as string) As string
		  //Creates a new Device from DeviceDataBase
		  dim i,c as integer
		  dim rs as RecordSet
		  dim ssql,s as String
		  dim ID,Name,Category,Helptext,DeviceScript as string
		  dim DP1Name, DP1MinMaxDef,DP1Default, DP1Mask, DP2Name, DP2MinMaxDef,DP2Default, DP2Mask as string
		  Dim DP1GUIType, DP2GUIType,DeviceGUI,Manufactor as string
		  
		  if dbDevice = nil then Return "-3010"
		  
		  
		  //************ read selected device devices ******************
		  ssql = "SELECT * FROM Device Where Name = '" + DeviceName + "'"
		  rs = dbDevice.SQLSelect(ssql)
		  
		  
		  if rs <> nil then
		    //Get Device Properties
		    ID =  rs.Field("ID")
		    Name =  rs.Field("Name")
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
		    
		    //Create new device
		    i = UBound(aDevices) + 1
		    Redim aDevices(i)
		    aDevices(i) = new TDevice
		    aDevices(i).DriverName = Name
		    
		    aDevices(i).Category = Category
		    aDevices(i).Helptext = Helptext
		    aDevices(i).Source = DeviceScript
		    aDevices(i).GUIID = val(DeviceGUI)
		    
		    aDevices(i).DP1Name = DP1Name
		    aDevices(i).DP1GUIType = val(DP1GUIType)
		    aDevices(i).DP1MinMaxDef = DP1MinMaxDef
		    aDevices(i).DP1Default = DP1Default
		    aDevices(i).DP1Mask = DP1Mask
		    
		    aDevices(i).DP2Name = DP2Name
		    aDevices(i).DP2GUIType = val(DP2GUIType)
		    aDevices(i).DP2MinMaxDef = DP2MinMaxDef
		    aDevices(i).DP2Default = DP2Default
		    aDevices(i).DP2Mask = DP2Mask
		    aDevices(i).Manufactor = Manufactor
		    
		    //************ read selected device Command ******************
		    ssql = "SELECT * FROM Commands Where DeviceID = '" + str(Id) +"'"
		    rs = dbDevice.SQLSelect(ssql)
		    
		    if rs <> nil then
		      While not rs.EOF
		        c = UBound(aDevices(i).aCMD)+1
		        Redim aDevices(i).aCMD(c)
		        aDevices(i).aCMD(c) = New TCommand
		        
		        aDevices(i).aCMD(c).CmdName = rs.Field("Name")
		        aDevices(i).aCMD(c).Position = val(rs.Field("Position"))
		        aDevices(i).aCMD(c).CmdScript = rs.Field("Script")
		        aDevices(i).aCMD(c).TabID = rs.Field("TabID")
		        
		        aDevices(i).aCMD(c).P1Name = rs.Field("P1Name")
		        aDevices(i).aCMD(c).P1GUIType = val(rs.Field("P1GUIType"))
		        aDevices(i).aCMD(c).P1MinMaxDef = rs.Field("P1MinMaxDef")
		        aDevices(i).aCMD(c).P1Mask = rs.Field("P1Mask")
		        aDevices(i).aCMD(c).P1Default = rs.Field("P1Default")
		        
		        aDevices(i).aCMD(c).P2Name = rs.Field("P2Name")
		        aDevices(i).aCMD(c).P2GUIType = val(rs.Field("P2GUIType"))
		        aDevices(i).aCMD(c).P2MinMaxDef = rs.Field("P2MinMaxDef")
		        aDevices(i).aCMD(c).P2Mask = rs.Field("P2Mask")
		        aDevices(i).aCMD(c).P2Default = rs.Field("P2Default")
		        
		        aDevices(i).aCMD(c).P3Name =  rs.Field("P3Name")
		        aDevices(i).aCMD(c).P3GUIType = val(rs.Field("P3GUIType"))
		        aDevices(i).aCMD(c).P3MinMaxDef = rs.Field("P3MinMaxDef")
		        aDevices(i).aCMD(c).P3Mask = rs.Field("P3Mask")
		        aDevices(i).aCMD(c).P3Default = rs.Field("P3Default")
		        
		        aDevices(i).aCMD(c).P4Name = rs.Field("P4Name")
		        aDevices(i).aCMD(c).P4GUIType = val(rs.Field("P4GUIType"))
		        aDevices(i).aCMD(c).P4MinMaxDef = rs.Field("P4MinMaxDef")
		        aDevices(i).aCMD(c).P4Mask = rs.Field("P4Mask")
		        aDevices(i).aCMD(c).P4Default = rs.Field("P4Default")
		        
		        aDevices(i).aCMD(c).Timeout = val(rs.Field("Timeout"))
		        aDevices(i).aCMD(c).AckCmd = rs.Field("AckCmd")
		        aDevices(i).aCMD(c).NextCmd =  rs.Field("NextCmd")
		        aDevices(i).aCMD(c).AckString =  rs.Field("AckString")
		        s = rs.Field("AckLen")
		        aDevices(i).aCMD(c).AckLen =  val(s)
		        rs.MoveNext
		      Wend
		      
		      //precompile the script
		      //aDevices(i).Precompile
		      Return "0"
		    else
		      Return "-3007"
		    end
		    
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OpenDatabase() As string
		  dim f as FolderItem
		  
		  
		  //devices database
		  f = GetFolderItem(dbDeviceDatabaseName)
		  if f.Exists then
		    dbDevice = nil
		    //open new database
		    dbDevice=New REALSQLdatabase
		    dbDevice.databaseFile=f
		    If dbDevice.Connect then
		      Return "0"
		    else
		      Return "-3009"
		    end
		  else
		    Return "-3010"
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveDevice(DeviceName as string) As string
		  dim i,c As Integer
		  
		  i = GetDeviceIdByName(DeviceName)
		  
		  if i = -1 then
		     Return "-3007"
		  else
		    //Remove Commands
		    for c = UBound(aDevices(i).aCMD) DownTo 0
		      aDevices(i).aCMD.Remove(c)
		    Next
		    
		    //Remove Device
		    aDevices.Remove(i)
		    Return "0"
		  end
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RunCommand(CuesetName as string, DeviceName as string, ChannelList as string, CmdName as string, DP1 as string, DP2 as string, P1 as string, P2 as string, P3 as string, P4 as string, IORes as string) As TResult
		  Dim cres as New TResult
		  dim devIdx,CmdIdx,CsIdx,i as integer
		  
		  //Get Device ID
		  devIdx = GetDeviceIdByName(DeviceName)
		  if devIdx = -1 then 
		    cres.ErrorNum = -3007
		    cres.Resultmsg = "Device not found"
		    ScrMan.HandleEngineEvent("DevMan", DeviceName, ChannelList, "NAK", "Device not found ",CmdName)
		    Return cres
		  end
		  
		  
		  //Check if Device is blocked
		  if aDevices(devIdx).Blocked then
		    cres.ErrorNum = -3012
		    cres.Resultmsg = "Device is Blocked"
		    ScrMan.HandleEngineEvent("DevMan", aDevices(devIdx).DeviceName, ChannelList, "NAK", "Device is Blocked ",CmdName)
		     Return cres
		  end
		  
		  aDevices(devIdx).Blocked = true
		  CsIdx = ScrMan.GetCuesetIdByName(CuesetName)
		  if CsIdx >=0 then
		    ScrMan.aCuesets(CsIdx).CurrentUsedChannels = ChannelList
		    ScrMan.aCuesets(CsIdx).CurrentUsedDevice = DeviceName
		  end
		  
		  //Repeat if NextCommand present
		  do
		    'if CsIdx >=0 then
		    'if cres = nil then
		    'cres.ErrorNum = -3029
		    'cres.Resultmsg = "Command interupted"
		    'end
		    'end
		    
		    CmdIdx = GetCommandIdByName(DeviceName,CmdName)
		    if CmdIdx = -1 then 
		      cres.ErrorNum = -3024
		      cres.Resultmsg = "Command not found"
		      ScrMan.HandleEngineEvent("DevMan", aDevices(devIdx).DeviceName, ChannelList, "NAK", "Command not found ",CmdName)
		      aDevices(devIdx).Blocked = false
		      Return cres
		    end
		    
		    //Device Context zum Command laden
		    aDevices(devIdx).DeviceContext.Cmd = CmdName
		    aDevices(devIdx).DeviceContext.AckCmd = aDevices(devIdx).aCMD(CmdIdx).AckCmd
		    aDevices(devIdx).DeviceContext.NextCmd = aDevices(devIdx).aCMD(CmdIdx).NextCmd
		    aDevices(devIdx).DeviceContext.AckLen = aDevices(devIdx).aCMD(CmdIdx).AckLen
		    aDevices(devIdx).DeviceContext.AckString = aDevices(devIdx).aCMD(CmdIdx).AckString
		    aDevices(devIdx).DeviceContext.Timeout = aDevices(devIdx).aCMD(CmdIdx).Timeout
		    aDevices(devIdx).DeviceContext.DP1 = DP1
		    aDevices(devIdx).DeviceContext.DP2 = DP2
		    aDevices(devIdx).DeviceContext.P1 = P1
		    aDevices(devIdx).DeviceContext.P2 = P2
		    aDevices(devIdx).DeviceContext.P3 = P3
		    aDevices(devIdx).DeviceContext.P4 = P4
		    aDevices(devIdx).DeviceContext.ACK = false
		    aDevices(devIdx).DeviceContext.ScriptResult = ""
		    aDevices(devIdx).DeviceContext.IOResult = ioRes
		    aDevices(devIdx).DeviceContext.ChannelList = ChannelList
		    
		    aDevices(devIdx).DeviceContext.DP1Default = aDevices(devIdx).DP1Default
		    aDevices(devIdx).DeviceContext.DP2Default = aDevices(devIdx).DP2Default
		    aDevices(devIdx).DeviceContext.P1Default = aDevices(devIdx).aCMD(CmdIdx).P1Default
		    aDevices(devIdx).DeviceContext.P2Default = aDevices(devIdx).aCMD(CmdIdx).P2Default
		    aDevices(devIdx).DeviceContext.P3Default = aDevices(devIdx).aCMD(CmdIdx).P3Default
		    aDevices(devIdx).DeviceContext.P4Default = aDevices(devIdx).aCMD(CmdIdx).P4Default
		    
		    //******** Run the Command ***************
		    aDevices(devIdx).Run
		    
		    //Save eventually new default parameter (wird für eyevis benoetigt)
		    aDevices(devIdx).DP1Default = aDevices(devIdx).DeviceContext.DP1Default
		    aDevices(devIdx).DP2Default = aDevices(devIdx).DeviceContext.DP2Default
		    aDevices(devIdx).aCMD(CmdIdx).P1Default = aDevices(devIdx).DeviceContext.P1Default
		    aDevices(devIdx).aCMD(CmdIdx).P2Default = aDevices(devIdx).DeviceContext.P2Default
		    aDevices(devIdx).aCMD(CmdIdx).P3Default = aDevices(devIdx).DeviceContext.P3Default
		    aDevices(devIdx).aCMD(CmdIdx).P4Default = aDevices(devIdx).DeviceContext.P4Default
		    
		    if CsIdx > -1 then ScrMan.aCuesets(CsIdx).CuesetContext.IOResult = aDevices(devIdx).DeviceContext.ScriptResult
		    
		    //Send the Command if not Event
		    if aDevices(devIdx).DeviceContext.ScriptResult <> "" then
		      if aDevices(devIdx).aCMD(CmdIdx).TabID <> "Events" then
		        //Nur Play und Stop Kommanmdos sollen mit SyncBox ablaufen
		        if CmdName = "Play" or CmdName = "PlayNoAck" or CmdName = "Stop" or CmdName = "StopNoAck" then
		          cres = IOMan.WriteChannels(ChannelList, aDevices(devIdx).DeviceContext.ScriptResult, aDevices(devIdx).DeviceContext.Timeout, aDevices(devIdx).DeviceContext.AckString, aDevices(devIdx).DeviceContext.AckLen,true)
		        else
		          cres = IOMan.WriteChannels(ChannelList, aDevices(devIdx).DeviceContext.ScriptResult, aDevices(devIdx).DeviceContext.Timeout, aDevices(devIdx).DeviceContext.AckString, aDevices(devIdx).DeviceContext.AckLen,false)
		        end
		      end
		      
		      
		      if cres <> nil then
		        if cres.ErrorNum = 0 then
		          //Process Acknowledge
		          aDevices(devIdx).DeviceContext.IOResult = cres.Resultmsg
		          aDevices(devIdx).DeviceContext.Cmd = aDevices(devIdx).aCMD(CmdIdx).AckCmd
		          
		          //Process ACK if present
		          if aDevices(devIdx).aCMD(CmdIdx).AckCmd <> "" then 
		            aDevices(devIdx).DeviceContext.ACK = false
		            aDevices(devIdx).DeviceContext.ScriptResult = ""
		            aDevices(devIdx).DeviceContext.ChannelList = ChannelList
		            
		            aDevices(devIdx).DeviceContext.DP1Default = aDevices(devIdx).DP1Default
		            aDevices(devIdx).DeviceContext.DP2Default = aDevices(devIdx).DP2Default
		            aDevices(devIdx).DeviceContext.P1Default = aDevices(devIdx).aCMD(CmdIdx).P1Default
		            aDevices(devIdx).DeviceContext.P2Default = aDevices(devIdx).aCMD(CmdIdx).P2Default
		            aDevices(devIdx).DeviceContext.P3Default = aDevices(devIdx).aCMD(CmdIdx).P3Default
		            aDevices(devIdx).DeviceContext.P4Default = aDevices(devIdx).aCMD(CmdIdx).P4Default
		            
		            aDevices(devIdx).Run
		            
		            //Save eventually new default parameter (wird für eyevis benoetigt)
		            aDevices(devIdx).DP1Default = aDevices(devIdx).DeviceContext.DP1Default
		            aDevices(devIdx).DP2Default = aDevices(devIdx).DeviceContext.DP2Default
		            aDevices(devIdx).aCMD(CmdIdx).P1Default = aDevices(devIdx).DeviceContext.P1Default
		            aDevices(devIdx).aCMD(CmdIdx).P2Default = aDevices(devIdx).DeviceContext.P2Default
		            aDevices(devIdx).aCMD(CmdIdx).P3Default = aDevices(devIdx).DeviceContext.P3Default
		            aDevices(devIdx).aCMD(CmdIdx).P4Default = aDevices(devIdx).DeviceContext.P4Default
		            
		            if CsIdx > -1 then ScrMan.aCuesets(CsIdx).CuesetContext.IOResult = aDevices(devIdx).DeviceContext.ScriptResult
		          end
		        else
		          aDevices(devIdx).DeviceContext.ScriptResult = cres.Resultmsg
		          if CsIdx > -1 then ScrMan.aCuesets(CsIdx).CuesetContext.IOResult = aDevices(devIdx).DeviceContext.ScriptResult
		          aDevices(devIdx).DeviceContext.ACK = false
		          aDevices(devIdx).DeviceContext.NextCmd = ""
		        end
		        //ACK Message nehmen und an ScrMan weiterleiten
		        if (aDevices(devIdx).DeviceContext.ACK = true) and (aDevices(devIdx).DeviceContext.NextCmd = "") then
		          ScrMan.HandleEngineEvent("DevMan", aDevices(devIdx).DeviceName, ChannelList, "ACK", aDevices(devIdx).DeviceContext.ScriptResult,CmdName)
		          cres.ErrorNum = 0
		          //Script Result wird an Event Handler Cueset geliefert wenn Cmd ein Event ist
		          cres.Resultmsg = aDevices(devIdx).DeviceContext.ScriptResult
		        end
		        if (aDevices(devIdx).DeviceContext.ACK = true) and (aDevices(devIdx).DeviceContext.NextCmd <> "") then
		          ScrMan.HandleEngineEvent("DevMan", aDevices(devIdx).DeviceName, ChannelList, "iACK", aDevices(devIdx).DeviceContext.ScriptResult,CmdName)
		        end
		        if aDevices(devIdx).DeviceContext.ACK = false then
		          ScrMan.HandleEngineEvent("DevMan", aDevices(devIdx).DeviceName, ChannelList, "NAK", aDevices(devIdx).DeviceContext.ScriptResult,CmdName)
		          cres.ErrorNum = -3030
		          cres.Resultmsg = aDevices(devIdx).DeviceContext.ScriptResult
		        end
		        'else
		        'IOMan.UnBlockChannels(ChannelList)
		        'aDevices(devIdx).Blocked = False
		      end
		    else
		      cres.ErrorNum = 0
		      cres.Resultmsg= aDevices(devIdx).DeviceContext.P1Default
		      ScrMan.HandleEngineEvent("DevMan", aDevices(devIdx).DeviceName, ChannelList, "ACK",aDevices(devIdx).DeviceContext.P1Default,CmdName)
		    end
		    if aDevices(devIdx).DeviceContext.NextCmd <> "" then CmdName =  aDevices(devIdx).DeviceContext.NextCmd
		  loop until (aDevices(devIdx).DeviceContext.NextCmd = "") or (aDevices(devIdx).Blocked = False)
		  aDevices(devIdx).Blocked = False
		  if CsIdx >= 0 then
		    ScrMan.aCuesets(CsIdx).CurrentUsedChannels = ""
		    ScrMan.aCuesets(CsIdx).CurrentUsedDevice = ""
		  end
		  'if cres = nil then
		  'cres.ErrorNum = -3029
		  'cres.Resultmsg = "Command interupted"
		  'end
		  Return cres
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetDeviceName(DeviceID as integer, DeviceName as string) As string
		  dim i as integer
		  
		  //Check if DeviceID in valid range
		  if (UBound(aDevices) >= DeviceID) and (DeviceID > -1) then
		    //Check if Devicename exists
		    for i = 0 to UBound(aDevices)
		      if aDevices(i).DeviceName = DeviceName then Return "-3002"
		    next
		    aDevices(DeviceID).DeviceName = DeviceName
		    aDevices(DeviceID).DeviceContext.DeviceName = DeviceName
		    Return "0"
		  else
		    Return "-3026"
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetIoChannels(DeviceName as string, ChannelList as string) As string
		  dim i as Integer
		  
		  i = GetDeviceIdByName(DeviceName)
		  if i = -1 then Return "-3007"
		  
		  aDevices(i).Channels = ChannelList
		  Return "0"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnblockAllDevices()
		  dim i as integer
		  
		  for i = 0 to UBound(DevMan.aDevices)
		    DevMan.aDevices(i).Blocked = false
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateDevice(Params as string) As string
		  //Params Order: 
		  // OldDeviceName(2)NewDeviceName(2)Category(2)Helptext(2)Script
		  // DP1Name(2)DP1GUIType(2)DP1MinMax(2)DP1Default(2)DP1Mask(2)DP2Name(2)DP2GUIType(2)DP2MinMax(2)DP2Default(2)DP2Mask(2)
		  
		  dim OldDeviceName, NewDeviceName,Category, Helptext, Script as string
		  dim DP1Name, DP1MinMaxDef,DP1Default, DP1Mask, DP2Name, DP2MinMaxDef,DP2Default, DP2Mask as string
		  Dim DP1GUIType, DP2GUIType,DeviceGUI,Manufactor as string
		  dim i as integer
		  
		  
		  //Check for valid Params
		  if CountFields(Params,chr(2)) < 15 then Return "-3023"
		  OldDeviceName = NthField(Params,chr(2),1)
		  NewDeviceName = NthField(Params,chr(2),2)
		  Category = NthField(Params,chr(2),3)
		  Helptext = NthField(Params,chr(2),4)
		  Script = NthField(Params,chr(2),5)
		  DP1Name = NthField(Params,chr(2),6)
		  DP1GUIType = NthField(Params,chr(2),7)
		  DP1MinMaxDef = NthField(Params,chr(2),8)
		  DP1Default = NthField(Params,chr(2),9)
		  DP1Mask = NthField(Params,chr(2),10)
		  
		  DP2Name = NthField(Params,chr(2),11)
		  DP2GUIType = NthField(Params,chr(2),12)
		  DP2MinMaxDef = NthField(Params,chr(2),13)
		  DP2Default = NthField(Params,chr(2),14)
		  DP2Mask = NthField(Params,chr(2),15)
		  DeviceGUI = NthField(Params,chr(2),16)
		  Manufactor = NthField(Params,chr(2),17)
		  
		  //Protect Remote Devices
		  if NewDeviceName = "TCPRemote" then Return "-3002"
		  if NewDeviceName = "UDPRemote" then Return "-3002"
		  if NewDeviceName = "RS232Remote" then Return "-3002"
		  
		  //Update current Device
		  i = GetDeviceIdByName(OldDeviceName)
		  if i > -1 then
		    aDevices(i).DeviceName = NewDeviceName
		    aDevices(i).GUIID = val(DeviceGUI )
		    aDevices(i).Category = Category
		    aDevices(i).Helptext = Helptext
		    aDevices(i).Source = Script
		    
		    aDevices(i).DP1Name = DP1Name
		    aDevices(i).DP1GUIType = val(DP1GUIType)
		    aDevices(i).DP1MinMaxDef = DP1MinMaxDef
		    aDevices(i).DP1Default = DP1Default
		    aDevices(i).DP1Mask = DP1Mask
		    
		    aDevices(i).DP2Name = DP2Name
		    aDevices(i).DP2GUIType = val(DP2GUIType)
		    aDevices(i).DP2MinMaxDef = DP2MinMaxDef
		    aDevices(i).DP2Default = DP2Default
		    aDevices(i).DP2Mask = DP2Mask
		    
		    aDevices(i).Manufactor = Manufactor
		    Return "0"
		  else
		    Return "-1"
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub VacuumDeviceTemplates()
		  dim ssql as string
		  dim rs as RecordSet
		  
		  if dbDevice = nil then exit
		  
		  ssql = "VACUUM Device"
		  rs = dbDevice.SQLSelect(ssql)
		  If dbDevice.error then
		    app.MouseCursor = System.Cursors.StandardPointer
		    MsgBox dbDevice.errormessage
		    exit
		  end
		  dbDevice.Commit
		  
		  
		  ssql = "VACUUM Categorys"
		  rs = dbDevice.SQLSelect(ssql)
		  If dbDevice.error then
		    app.MouseCursor = System.Cursors.StandardPointer
		    MsgBox dbDevice.errormessage
		    exit
		  end
		  dbDevice.Commit
		  
		  ssql = "VACUUM Commands"
		  rs = dbDevice.SQLSelect(ssql)
		  If dbDevice.error then
		    app.MouseCursor = System.Cursors.StandardPointer
		    MsgBox dbDevice.errormessage
		    exit
		  end
		  dbDevice.Commit
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		aDevices(-1) As TDevice
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dbDevice As RealSqLDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		dbDeviceDatabaseName As string = "Devices.rsd"
	#tag EndProperty

	#tag Property, Flags = &h0
		EventList(-1) As TEventListItem
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="dbDeviceDatabaseName"
			Group="Behavior"
			InitialValue="Devices.rsd"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
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
