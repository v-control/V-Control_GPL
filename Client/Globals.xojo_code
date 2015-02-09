#tag Module
Protected Module Globals
	#tag Method, Flags = &h0
		Function AddRemoteUser(UserName as string, Password as string, Rights as integer) As boolean
		  dim ru as TRemoteUser
		  dim i as integer
		  
		  for i = 0 to UBound(aRemoteUsers)
		    if aRemoteUsers(i).UserName = UserName then Return false
		  next
		  
		  ru = new TRemoteUser
		  ru.UserName = UserName
		  ru.Password = Password
		  ru.Rights = Rights
		  aRemoteUsers.Append(ru)
		  Return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProjectHasChanged(Status as boolean)
		  ProjectChanged = Status
		  if Status = true then
		    frmMain.lblStatus.Text = "Project unsaved"
		  else
		    frmMain.lblStatus.Text = "Project saved"
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadIni()
		  Dim f,fDocRoot as FolderItem
		  Dim MyIni as New TIniFile
		  dim res,DocRootDefault as string
		  dim b as boolean
		  
		  f = GetFolderItem ( IniFileName)
		  b = MyIni.OpenIni(f)
		  
		  ptyStartDelayed = MyIni.iniReadBool("StartDelayed",false)
		  
		  LastTopPosition = MyIni.iniReadInt ( "LastTopPosition",200 )
		  if LastTopPosition < 0 then LastTopPosition = 0
		  if LastTopPosition > Screen(0).Height-100 then LastTopPosition = Screen(0).Height/2
		  
		  LastLeftPosition = MyIni.iniReadInt ( "LastLeftPosition",50 )
		  if LastLeftPosition < 0 then LastLeftPosition = 0
		  if LastLeftPosition > Screen(0).Width-100 then LastLeftPosition = Screen(0).Width/2
		  
		  LastHeight = MyIni.iniReadInt ("LastHeight",700 )
		  if LastHeight < 600 then LastHeight = 700
		  LastWidth = MyIni.iniReadInt ( "LastWidth",1000 )
		  if LastWidth < 850 then LastWidth = 1000
		  
		  LastTopPositionPlaylist = MyIni.iniReadInt ( "LastTopPositionPlaylist",200 )
		  if LastTopPositionPlaylist < 0 then LastTopPosition = 0
		  if LastTopPositionPlaylist > Screen(0).Height-100 then LastTopPositionPlaylist = Screen(0).Height/2
		  
		  LastLeftPositionPlaylist = MyIni.iniReadInt ( "LastLeftPositionPlaylist",100 )
		  if LastLeftPositionPlaylist < 0 then LastLeftPositionPlaylist = 0
		  if LastLeftPositionPlaylist > Screen(0).Width-100 then LastLeftPositionPlaylist = Screen(0).Width/2
		  
		  LastHeightPlaylist = MyIni.iniReadInt ( "LastHeightPlaylist",550 )
		  if LastHeightPlaylist < 550 then LastHeightPlaylist=550
		  
		  LastWidthPlaylist = MyIni.iniReadInt ( "LastWidthPlaylist",480 )
		  if LastWidthPlaylist < 480 then LastWidthPlaylist = 480
		  
		  pt_PlaylistTextsize = MyIni.iniReadInt("PlaylistTextSize",12)
		  pt_PlaylistColumnWidth = MyIni.iniReadString("PlaylistColumnWidths","15%, 40%, 1*")
		  Globals.ptyModalPlaylist = MyIni.iniReadBool(  "PlaylistModal", false)
		  Globals.ptyStartWithPlaylist = MyIni.iniReadBool( "StartWithPlaylist", false)
		  
		  CuesetEditReadOnly = MyIni.iniReadBool("CuesetEditReadOnly",false)
		  Autoload = MyIni.iniReadString(  "Autoload","")
		  ColorSyntax = MyIni.iniReadBool("ColorSyntax", true)
		  ColorKeywords = MyIni.iniReadBool( "ColorKeywords", true)
		  ColorNumberString = MyIni.iniReadBool("ColorNumberStrings", false)
		  ColorRemarks = MyIni.iniReadBool( "ColorRemarks", true)
		  
		  EditorTextsize = MyIni.iniReadInt ( "EditorTextsize",12 )
		  EditFont = MyIni.iniReadString( "EditFont","")
		  
		  bLoggAck = MyIni.iniReadBool( "LoggAck", false)
		  bLogToFile = MyIni.iniReadBool( "LogToFile", false)
		  
		  lstCueColumnWidths = MyIni.iniReadString("lstCueColumnWidths","5%,20%,20%,20%")
		  lstAckColumnWidths = MyIni.iniReadString("lstAckColumnWidths","")
		  lstEventsColumnWidths = MyIni.iniReadString("lstEventsColumnWidths","60,60,60,80,0,40,40,40,40,40,40")
		  
		  pty_Autostart = MyIni.iniReadString( "AutostartTask","")
		  
		  Globals.ptyBroadcastWaitForTC =  MyIni.iniReadBool( "BroadcastWaitForTC",false )
		  Globals.ptyBroadcastTC_Port = MyIni.iniReadInt("BroadcastTC_Port",6060)
		  if Globals.ptyBroadcastWaitForTC = True then
		    frmMain.UDPTC.Port = Globals.ptyBroadcastTC_Port
		    frmMain.UDPTC.Connect
		  end
		  Globals.ptyBroadcastTCRate = MyIni.iniReadInt( "BroadcastTC_Rate",4)
		  
		  //RemoteServices
		  remoteTCPPort = MyIni.iniReadInt( "RemoteTCP_Port", 10101 )
		  remoteTCPMaxClients = MyIni.iniReadInt("RemoteTCP_MaxClients", 5 )
		  remoteTCPServiceEnabled = MyIni.iniReadBool("RemoteTCP_Enabled", false )
		  
		  remoteUDPPort = MyIni.iniReadInt("RemoteUDP_Port", 10102 )
		  remoteUDPServiceEnabled = MyIni.iniReadBool("RemoteUDP_Enabled", false )
		  
		  remoteRS232Port = MyIni.iniReadString("RemoteRS232_Port", "" )
		  remoteRS232Baud = MyIni.iniReadInt( "RemoteRS232_Baud", 8 )
		  remoteRS232DataBits = MyIni.iniReadInt("RemoteRS232_DataBits", 3 )
		  remoteRS232StopBits = MyIni.iniReadInt("RemoteRS232_StopBits", 0 )
		  remoteRS232Parity = MyIni.iniReadInt("RemoteRS232_Parity", 0 )
		  remoteRS232ServiceEnabled = MyIni.iniReadBool("RemoteRS232_Enabled", false )
		  
		  remoteHTTPPort = MyIni.iniReadInt("RemoteHTTP_Port", 8080 )
		  remoteHTTPMaxClients = MyIni.iniReadInt("RemoteHTTP_MaxClients", 5 )
		  //Set default Document Root Directory
		  if TargetLinux then fDocRoot = GetFolderItem("httpRoot/index.htm")
		  if TargetWin32 then fDocRoot = GetFolderItem("httpRoot\index.htm")
		  if TargetMacOS  then fDocRoot = GetFolderItem("httpRoot/index.htm")
		  if fDocRoot <> nil then
		    DocRootDefault = fDocRoot.AbsolutePath
		    DocRootDefault = mid(DocRootDefault,1,len(DocRootDefault)-9)
		    if TargetMacOS  then DocRootDefault = ReplaceAll(DocRootDefault,"/",":")
		  end
		  remoteHTTPDocumentRoot = MyIni.iniReadString( "RemoteHTTP_DocumentRoot", DocRootDefault )
		  remoteHTTPServiceEnabled = MyIni.iniReadBool("RemoteHTTP_Enabled", false )
		  Globals.pty_LicenseOK = MyIni.iniReadBool( "License_check", false )
		  
		  
		  pty_EnableKeyboardEvents = MyIni.iniReadBool("KeyboardEvents_Enabled", false )
		  pty_MaxChaseDifference =MyIni.iniReadInt( "MaxChaseDiff", 20 )
		  pty_ChaseBallistic =MyIni.iniReadInt( "ChaseBallistic", 5 )
		  
		  ptyUserAuth = MyIni.iniReadBool("UserAuth_Enabled", false)
		  res = ReadRemoteUsers
		  frmMain.lblStatus.Text = "ini readed"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadRemoteUsers() As string
		  Dim f as FolderItem
		  dim ssql as String
		  dim UserDB as REALSQLDatabase
		  dim rs as RecordSet
		  dim RemoteUser as TRemoteUser
		  dim r as integer
		  
		  // database
		  try
		    f = GetFolderItem( Globals.RemoteUserDB )
		    if f <> nil then
		      UserDB=New REALSQLdatabase
		      UserDB.databaseFile=f
		      If not UserDB.Connect then Return "-4008"
		      
		    else
		      Return "-4007"
		    end
		  Exception
		    Return "-4007"
		  end
		  
		  if UserDB = nil then Return "-4008"
		  
		  
		  //************ read Users ******************
		  ssql = "SELECT * FROM users"
		  rs = UserDB.SQLSelect(ssql)
		  
		  
		  
		  if rs <> nil then
		    //Get Record
		    while not rs.EOF
		      RemoteUser = nil
		      RemoteUser = New TRemoteUser
		      RemoteUser.UserName = rs.Field("UserName")
		      RemoteUser.Password = rs.Field("UserPassword")
		      r = val(rs.Field("UserRights"))
		      RemoteUser.Rights = r
		      Globals.aRemoteUsers.Append(RemoteUser)
		      rs.MoveNext
		    wend
		  end
		  
		  
		  
		  UserDB.Close
		  HandleEngineEvent("ScrMan","","","Message","Remote Users loaded","")
		  
		  
		  return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteIni()
		  
		  Dim f as FolderItem
		  Dim MyIni as New TIniFile
		  dim res as String
		  
		  
		  MyIni.iniWriteBool( "StartDelayed", ptyStartDelayed )
		  MyIni.iniWriteInt( "LastHeight", LastHeight )
		  MyIni.iniWriteInt( "LastLeftPosition", LastLeftPosition )
		  MyIni.iniWriteInt( "LastTopPosition", LastTopPosition )
		  MyIni.iniWriteInt( "LastWidth", LastWidth )
		  MyIni.iniWriteInt( "LastHeightPlaylist", LastHeightPlaylist )
		  MyIni.iniWriteInt( "LastLeftPositionPlaylist", LastLeftPositionPlaylist )
		  MyIni.iniWriteInt( "LastTopPositionPlaylist", LastTopPositionPlaylist )
		  MyIni.iniWriteInt( "LastWidthPlaylist", LastWidthPlaylist )
		  
		  MyIni.iniWriteInt("PlaylistTextSize",pt_PlaylistTextsize)
		  MyIni.iniWriteString( "PlaylistColumnWidths",pt_PlaylistColumnWidth)
		  MyIni.iniWriteBool( "PlaylistModal", Globals.ptyModalPlaylist)
		  MyIni.iniWriteBool( "StartWithPlaylist", Globals.ptyStartWithPlaylist)
		  
		  MyIni.iniWriteBool( "CuesetEditReadOnly", CuesetEditReadOnly )
		  MyIni.iniWriteString( "Autoload",Autoload )
		  MyIni.iniWriteBool( "ColorSyntax", ColorSyntax )
		  MyIni.iniWriteBool( "ColorKeywords", ColorKeywords )
		  MyIni.iniWriteBool( "ColorNumberStrings", ColorNumberString )
		  MyIni.iniWriteBool( "ColorRemarks", ColorRemarks )
		  MyIni.iniWriteString( "EditFont",EditFont )
		  MyIni.iniWriteInt( "EditorTextsize",EditorTextsize )
		  
		  MyIni.iniWriteBool( "LoggAck", bLoggAck )
		  MyIni.iniWriteBool( "LogToFile", bLogToFile )
		  MyIni.iniWriteBool( "BroadcastWaitForTC", Globals.ptyBroadcastWaitForTC)
		  MyIni.iniWriteInt( "BroadcastTC_Port",Globals.ptyBroadcastTC_Port)
		  MyIni.iniWriteInt( "BroadcastTC_Rate",Globals.ptyBroadcastTCRate)
		  
		  MyIni.iniWriteString( "lstCueColumnWidths",lstCueColumnWidths )
		  MyIni.iniWriteString( "lstAckColumnWidths",lstAckColumnWidths )
		  MyIni.iniWriteString( "lstEventsColumnWidths",lstEventsColumnWidths )
		  
		  MyIni.iniWriteString("AutostartTask",pty_Autostart)
		  
		  //RemoteServices
		  MyIni.iniWriteInt( "RemoteTCP_Port", remoteTCPPort )
		  MyIni.iniWriteInt( "RemoteTCP_MaxClients", remoteTCPMaxClients )
		  MyIni.iniWriteBool( "RemoteTCP_Enabled", remoteTCPServiceEnabled )
		  
		  MyIni.iniWriteInt( "RemoteUDP_Port", remoteUDPPort )
		  MyIni.iniWriteBool( "RemoteUDP_Enabled", remoteUDPServiceEnabled )
		  
		  MyIni.iniWriteString( "RemoteRS232_Port", remoteRS232Port )
		  MyIni.iniWriteInt( "RemoteRS232_Baud", remoteRS232Baud )
		  MyIni.iniWriteInt( "RemoteRS232_DataBits", remoteRS232DataBits )
		  MyIni.iniWriteInt( "RemoteRS232_StopBits", remoteRS232StopBits )
		  MyIni.iniWriteInt( "RemoteRS232_Parity", remoteRS232Parity )
		  MyIni.iniWriteBool( "RemoteRS232_Enabled", remoteRS232ServiceEnabled )
		  
		  MyIni.iniWriteInt( "RemoteHTTP_Port", remoteHTTPPort )
		  MyIni.iniWriteInt( "RemoteHTTP_MaxClients", remoteHTTPMaxClients )
		  MyIni.iniWriteString( "RemoteHTTP_DocumentRoot", remoteHTTPDocumentRoot )
		  MyIni.iniWriteBool( "RemoteHTTP_Enabled", remoteHTTPServiceEnabled )
		  MyIni.iniWriteBool( "License_check", Globals.pty_LicenseOK)
		  
		  MyIni.iniWriteBool( "KeyboardEvents_Enabled", pty_EnableKeyboardEvents)
		  MyIni.iniWriteBool( "UserAuth_Enabled", Globals.ptyUserAuth)
		  
		  MyIni.iniWriteInt(  "MaxChaseDiff", pty_MaxChaseDifference )
		  MyIni.iniWriteInt( "ChaseBallistic", pty_ChaseBallistic)
		  
		  f = GetFolderItem ( IniFileName)
		  MyIni.writeini(f)
		  res = WriteRemoteUsers
		  frmMain.lblStatus.Text = "ini written"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WriteRemoteUsers() As string
		  Dim f as FolderItem
		  dim ssql as String
		  dim UserDB as REALSQLDatabase
		  
		  
		  //**************************** - CREATE DATABASE - ******************************************************
		  try
		    f = New FolderItem(Globals.RemoteUserDB)
		  catch
		    Return "-4005"
		  Finally
		  end
		  
		  //if database exist then delete
		  if f.Exists then f.Delete
		  
		  
		  //create new database
		  UserDB = New REALSQLdatabase
		  UserDB.databaseFile=f
		  If UserDB.CreateDatabaseFile then
		    
		    //create table users
		    ssql = "CREATE TABLE users(UserName text, UserPassword text,UserRights integer)"
		    UserDB.SQLExecute(ssql)
		    
		  else
		    Return "-4006"
		  end
		  
		  //**************************** - WRITE DATABASE - ******************************************************
		  
		  dim rec as New DatabaseRecord
		  dim i as integer
		  
		  //******* write table Ini *********
		  for i = 0 to UBound(Globals.aRemoteUsers)
		    // Database Version
		    rec.Column("UserName") = Globals.aRemoteUsers(i).UserName
		    rec.Column("UserPassword") = Globals.aRemoteUsers(i).Password
		    rec.Column("UserRights") = str(Globals.aRemoteUsers(i).Rights)
		    UserDB.InsertRecord("users",rec)
		    UserDB.Commit
		  next
		  
		  
		  UserDB.Close
		  HandleEngineEvent("ScrMan","","","Message","RemoteUsers saved","")
		  Return "0"
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		aRemoteUsers(-1) As TRemoteuser
	#tag EndProperty

	#tag Property, Flags = &h0
		Autoload As string
	#tag EndProperty

	#tag Property, Flags = &h0
		bLoggAck As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		bLogToFile As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ColorKeywords As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ColorNumberString As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ColorRemarks As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//wenn true dann werden scripte mit color syntax angezeigt
		#tag EndNote
		ColorSyntax As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		CompileErrorOccured As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// if false, Cuesets can be edited by hand
		#tag EndNote
		CuesetEditReadOnly As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentScript As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentSelectedCommand As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentSelectedCueset As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentSelectedDevice As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentSelectedEvent As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentSelectedTimestrip As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//Indicates if the DeviceManager handels Devices in the
			//Device Database (true) or the Script Database (false)
			
		#tag EndNote
		db_Mode As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		EditFont As string
	#tag EndProperty

	#tag Property, Flags = &h0
		EditorTextsize As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IniFileName As string = "v-control.ini"
	#tag EndProperty

	#tag Property, Flags = &h0
		InterpreterPath As string = "Interpreter.bas"
	#tag EndProperty

	#tag Property, Flags = &h0
		LastHeight As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastHeightPlaylist As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastLeftPosition As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastLeftPositionPlaylist As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastTopPosition As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastTopPositionPlaylist As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastWidth As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastWidthPlaylist As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		lstAckColumnWidths As string
	#tag EndProperty

	#tag Property, Flags = &h0
		lstCueColumnWidths As string
	#tag EndProperty

	#tag Property, Flags = &h0
		lstEventsColumnWidths As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ProjectChanged As boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		ptyBroadcastTCRate As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ptyBroadcastTC_Port As Integer = 6060
	#tag EndProperty

	#tag Property, Flags = &h0
		ptyBroadcastWaitForTC As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ptyCallButtonWindowOpen As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ptyModalPlaylist As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ptyOnClose As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ptySelectedFromTaskSelector As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ptyStartDelayed As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ptyStartWithPlaylist As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ptyUserAuth As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		pty_AddChaseOrTCSource As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		pty_Autostart As string
	#tag EndProperty

	#tag Property, Flags = &h0
		pty_ChaseBallistic As Integer = 6
	#tag EndProperty

	#tag Property, Flags = &h0
		pty_EnableKeyboardEvents As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		pty_LicenseOK As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		pty_ListBackColor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		pty_MaxChaseDifference As Integer = 8
	#tag EndProperty

	#tag Property, Flags = &h0
		pt_AllowSyncPlayback As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		pt_AppVersion As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		pt_eMail As string
	#tag EndProperty

	#tag Property, Flags = &h0
		pt_MaxChannels As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		pt_MaxThreads As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		pt_PlaylistColumnWidth As string
	#tag EndProperty

	#tag Property, Flags = &h0
		pt_PlaylistOpen As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		pt_PlaylistTextsize As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		pt_UserName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RemoteUserDB As string = "users.db"
	#tag EndProperty

	#tag Property, Flags = &h0
		StopAllTasksBeforePlaying As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		TimestripInterpreterPath As string = "Timestrip.bas"
	#tag EndProperty


	#tag Constant, Name = cnt_AppVersion, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cnt_ProgamName, Type = String, Dynamic = False, Default = \"V-Control 3.7.16", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cnt_ScriptDatabaseVersion, Type = String, Dynamic = False, Default = \"3.0.5", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Autoload"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="bLoggAck"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="bLogToFile"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorKeywords"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorNumberString"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorRemarks"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorSyntax"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CompileErrorOccured"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CuesetEditReadOnly"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentScript"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentSelectedCommand"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentSelectedCueset"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentSelectedDevice"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentSelectedEvent"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentSelectedTimestrip"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="db_Mode"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EditFont"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EditorTextsize"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IniFileName"
			Group="Behavior"
			InitialValue="v-control.ini"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InterpreterPath"
			Group="Behavior"
			InitialValue="interpreter.bas"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastHeight"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastHeightPlaylist"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastLeftPosition"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastLeftPositionPlaylist"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastTopPosition"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastTopPositionPlaylist"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastWidthPlaylist"
			Group="Behavior"
			InitialValue="0"
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
			Name="lstAckColumnWidths"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="lstCueColumnWidths"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="lstEventsColumnWidths"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProjectChanged"
			Group="Behavior"
			InitialValue="False"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ptyBroadcastTCRate"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ptyBroadcastTC_Port"
			Group="Behavior"
			InitialValue="6060"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ptyBroadcastWaitForTC"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ptyCallButtonWindowOpen"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ptyModalPlaylist"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ptyOnClose"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ptySelectedFromTaskSelector"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ptyStartDelayed"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ptyStartWithPlaylist"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ptyUserAuth"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pty_AddChaseOrTCSource"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pty_Autostart"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pty_ChaseBallistic"
			Group="Behavior"
			InitialValue="6"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pty_EnableKeyboardEvents"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pty_LicenseOK"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pty_ListBackColor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pty_MaxChaseDifference"
			Group="Behavior"
			InitialValue="8"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pt_AllowSyncPlayback"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pt_AppVersion"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pt_eMail"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pt_MaxChannels"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pt_MaxThreads"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pt_PlaylistColumnWidth"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pt_PlaylistOpen"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pt_PlaylistTextsize"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pt_UserName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemoteUserDB"
			Group="Behavior"
			InitialValue="users.db"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StopAllTasksBeforePlaying"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimestripInterpreterPath"
			Group="Behavior"
			InitialValue="Timestrip.bas"
			Type="string"
			EditorType="MultiLineEditor"
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
