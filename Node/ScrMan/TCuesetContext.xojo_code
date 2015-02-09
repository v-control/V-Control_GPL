#tag Class
Protected Class TCuesetContext
	#tag Method, Flags = &h0
		Sub CallAsFunction(Cuesetname as string)
		  dim i,x,devidx as integer
		  dim strChannels as string
		  
		  
		  app.YieldToNextThread //Muss sein da sonst kein Task.Kill möglich
		  i = GetCuesetIdByName(CuesetName)
		  if i >= 0 then
		    if aCuesets(i).IsBlocked = False then
		      aCuesets(i).IsBlocked = true
		      //Get the index of this Cueset
		      x = GetCuesetIdByName(me.Name)
		      //Diesen Cueset markieren das ein CallAsFunction laeuft
		      aCuesets(x).ChildCueset = Cuesetname
		      scrMan.HandleEngineEvent("ScrMan","Cueset","NoChannels","FunctionMsg",Cuesetname+";START","")
		      aCuesets(i).ChildCueset = ""
		      aCuesets(i).Run
		      //Rescourcen freigeben
		      devidx = DevMan.GetDeviceIdByName(aCuesets(i).CurrentUsedDevice)
		      if devidx >= 0 then DevMan.aDevices(devidx).Blocked = false
		      strChannels = aCuesets(i).CurrentUsedChannels
		      IOMan.UnBlockChannels(strChannels)
		      
		      aCuesets(i).IsBlocked = false
		      scrMan.HandleEngineEvent("ScrMan","Cueset","NoChannels","FunctionMsg",Cuesetname+";STOP","")
		      
		    end
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CallAsThread(Cuesetname as string)
		  dim res as string
		  
		  app.YieldToNextThread  //Muss sein da sonst kein Task.Kill möglich
		  res = ScrMan.RunCueset(Cuesetname,1)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckSum8Bit(chkString as string) As integer
		  Return HelpFunctions.CheckSum8Bit(chkString)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CheckSync()
		  //Checks if the MasterClock Device and the Chase devices are in sync
		  
		  dim ChasePos as integer
		  dim diff as integer
		  
		  MasterTCPosition = GetMasterPosition
		  if UBound(aChaseDevices) < 0 then
		    Return
		  end
		  
		  ChasePos = GetChasePosition
		  diff = MasterTCPosition-ChasePos
		  frmMain.lblStatus2.Text = "Chasediff: " + str(diff)
		  
		  if MasterTCPosition + pty_MaxChaseDifference < Chasepos or MasterTCPosition -pty_MaxChaseDifference > ChasePos then
		        ResyncChaseDevices(MasterTCPosition)
		  Else
		    bResync = false
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delay(DelayTime As String)
		  
		  
		  dim i,count as integer
		  
		  
		  count = val(DelayTime) 
		  if count < 10 then count = 10
		  count = count / 10
		  i = 0
		  While i < count
		    i = i + 1
		    App.SleepCurrentThread(10)
		  wend
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableTimerEvent(sTimerName as string)
		  TimerEvents.DisableTimerEvent(sTimerName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableTimerEvent(sTimerName as string)
		  TimerEvents.EnableTimerEvent(sTimerName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FramecodeToTimecode(Frames As integer) As string
		  Return FramesToTC(Frames,fps)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetChasePosition() As integer
		  dim cres as TResult
		  Dim ChaseDevice as string
		  
		  
		  if UBound(aChaseDevices) >=0 then 
		    ChaseDevice = aChaseDevices(0)
		    
		    cres = DevMan.RunCommand(Name,ChaseDevice,ChasePositionChannel,"GetPosition","","","","","","","")
		    if cres.ErrorNum = 0 then
		      
		      Return TCToFrames(cres.Resultmsg,fps)
		    end
		  else
		    Return 0
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDayOfMonth() As integer
		  dim d as new Date
		  dim ires as integer
		  
		  ires = d.Day
		  Return ires
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDayOfWeek() As integer
		  dim d as new Date
		  dim ires as integer
		  
		  ires = d.DayOfWeek
		  Return ires
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetGlobalVar(VarName as string) As String
		  dim res as string
		  
		  
		  res = ScrMan.GetGlobalVar(VarName)
		  
		  Return res
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetHour() As integer
		  dim d as new Date
		  dim ires as integer
		  
		  ires = d.Hour
		  Return ires
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetMasterPosition() As integer
		  dim cres as TResult
		  dim i as integer
		  
		  if instr(MasterTimeDevice,"Internal Timecode") > 0 then
		    Delay("20")
		    i = ClockTimer.GetTimer
		    //wenn ClockTimer.GetTimer < 0 dann Cueset stoppen da Loop auf false
		    if i < 0 then 
		      //Scrman.StopCueset(Name)
		      i = GetCuesetIdByName(Name)
		      
		      Return 0
		    end
		    ScrMan.HandleEngineEvent("ScrMan", Name,"" ,"PositionChange",FramecodeToTimecode(i),"")
		    'app.DoEvents
		    Return i
		  else
		    cres = DevMan.RunCommand(Name,MasterTimeDevice,MasterTimeChannel,"GetPosition","","","","","","","")
		    if cres.ErrorNum = 0 then
		      //Show the Position in Timestrip
		      ScrMan.HandleEngineEvent("ScrMan", Name,"" ,"PositionChange",cres.Resultmsg, "")
		      Return TCToFrames(cres.Resultmsg,fps)
		    end
		    
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetMinute() As integer
		  dim d as new Date
		  dim ires as integer
		  
		  ires = d.Minute
		  Return ires
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetMonth() As integer
		  dim d as new Date
		  dim ires as integer
		  
		  ires = d.Month
		  Return ires
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSecond() As integer
		  dim d as new Date
		  dim ires as integer
		  
		  ires = d.Second
		  Return ires
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTime() As string
		  dim d as new Date
		  dim res as string
		  
		  
		  res = d.LongTime
		  Return res
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetYear() As integer
		  dim d as new Date
		  dim ires as integer
		  
		  ires = d.Year
		  Return ires
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HexToStr(value as string) As string
		  Return HexStringToString(value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InitChaser()
		  dim i,x as integer
		  dim MasterTimeDeviceString,s as string
		  
		  
		  
		  i = GetCuesetIdByName(Name)
		  
		  if i >= 0 then
		    //The device that delivers the timecode source for the Timestrip
		    MasterTimeDeviceString = nthField(aCuesets(i).CuesetParams,chr(2),1)
		    //Get the current Framerate
		    fps = val(nthField(aCuesets(i).CuesetParams,chr(2),2))
		    if fps = 0 then fps = 25
		    if fps = 1 then fps = 30
		    //Set the MasterTime Device
		    if MasterTimeDeviceString <> "" then
		      MasterTimeDevice = nthField(MasterTimeDeviceString,":",1)
		      MasterTimeChannel = nthField(MasterTimeDeviceString,":",2)
		    end
		    PrerollFrames= val(nthField(aCuesets(i).CuesetParams,chr(2),3))
		    //lese Vorzeichen für relativ offset
		    x = val(nthField(aCuesets(i).CuesetParams,chr(2),4))
		    if x = 0 then 
		      x = 1
		    else
		      x = -1
		    end
		    //lsese relativ offset
		    RelativeOffset = TCToFrames(nthField(aCuesets(i).CuesetParams,chr(2),5),fps)
		    RelativeOffset = RelativeOffset * x
		    
		    StartTC = nthField(aCuesets(i).CuesetParams,chr(2),6)
		    EndTC = nthField(aCuesets(i).CuesetParams,chr(2),7)
		    
		    //Set the Loop Status
		    s = nthField(aCuesets(i).CuesetParams,chr(2),8)
		    if s = "0" then
		      bLoop = false
		    else
		      bLoop = true
		    end
		    
		    for x = UBound(aChaseDevices) DownTo 0
		      aChaseDevices.Remove(x)
		      aChaseChannels.Remove(x)
		    next
		     
		    //Set the Chase Devices
		    for x = 9 to CountFields(aCuesets(i).CuesetParams,chr(2)) step 2
		      aChaseDevices.Append(NthField(aCuesets(i).CuesetParams,chr(2),x))
		      //SetChaseChannels
		      aChaseChannels.Append(NthField(aCuesets(i).CuesetParams,chr(2),x+1))
		      //Der erste Channel ist der ChasePositionChannel, nur dieser fragt ein Chase Device Position ab
		      if x = 9 then
		        s = aChaseChannels(0)
		        s = NthField(s,",",1)
		        ChasePositionChannel = s
		      end
		    next
		    
		    
		    
		    if instr(MasterTimeDevice ,"Internal Timecode") > 0 then
		      if ClockTimer <> nil then ClockTimer = Nil
		      ClockTimer = New TClockTimer(fps,StartTC,EndTC)
		      ClockTimer.LoopStatus = bLoop
		      if CurrentStartTC <> "" then
		        ClockTimer.StartTimer(CurrentStartTC)
		      else
		        ClockTimer.StartTimer(StartTC)
		      end
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResyncChaseDevices(Position as integer)
		  dim cres as TResult
		  dim TC as string
		  dim i,pos,OldPos,MaxDevices,Counter as integer
		  
		  
		  bResync = true
		  TC = FramesToTC(Position+PrerollFrames,fps)
		  //TC = FramesToTCFullSeconds(Position+PrerollFrames,fps)
		  Position = TCToFrames(TC,fps)
		  
		  MaxDevices = UBound(aChaseDevices)
		  
		  //Resync the Chase Devices
		  
		  //Cue Up Chase Devices
		  for i = 0 to MaxDevices
		    cres = DevMan.RunCommand(Name,aChaseDevices(i),aChaseChannels(i),"CueUpNoAck","","",TC,"","","","")
		  next
		  
		  
		  //Wait for MasterClock
		  OldPos = GetMasterPosition
		  pos = OldPos
		  Counter = 0
		  while pos < Position -pty_ChaseBallistic
		    pos = GetMasterPosition
		    
		    if instr(MasterTimeDevice,"Internal Timecode") < 1 then
		      //TC Stop erkennen
		      if pos = OldPos or pos +PrerollFrames+2 < OldPos or pos - (PrerollFrames+2) > OldPos then 
		        Counter = Counter + 1
		        if counter > 4 then
		          Return
		        end
		      end
		    end
		  wend
		  
		  //Play Chase Devices
		  
		  for i = 0 to MaxDevices
		    cres = DevMan.RunCommand(Name,aChaseDevices(i),aChaseChannels(i),"PlayNoAck","","","","","","","")
		  next
		  Delay("50")
		  bResync = False
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunCmd(Device as string, DeviceChannels as string, Command as string, dp1 as string, dp2 as string, p1 as string, p2 as string, p3 as string, p4 as string)
		  dim cres as TResult
		  
		  app.YieldToNextThread  //Muss sein da sonst kein Task.Kill möglich
		  cres = DevMan.RunCommand(Name,Device,DeviceChannels,Command,dp1,dp2,p1,p2,p3,p4,"")
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunTimestripCue(Device as string, DeviceChannels as string, Command as string, Params as string)
		  dim cres as TResult
		  dim sDP1,sDP2,sP1,sP2,sP3,sP4,Seperator as string
		  
		  app.YieldToNextThread  //Muss sein da sonst kein Task.Kill möglich
		  
		  Seperator = chr(34)+","+chr(34)
		  sDP1 = NthField(Params,Seperator,1)
		  sDP2 = NthField(Params,Seperator,2)
		  sP1 = NthField(Params,Seperator,3)
		  sP2 = NthField(Params,Seperator,4)
		  sP3 = NthField(Params,Seperator,5)
		  sP4 = NthField(Params,Seperator,6)
		  
		  
		  cres = DevMan.RunCommand(Name,Device,DeviceChannels,Command,sdp1,sdp2,sp1,sp2,sp3,sp4,"")
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGlobalVar(VarName as string, Value as string)
		  dim res as string
		  
		  
		  res = ScrMan.SetGlobalVar(VarName,Value)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShellExecuteAsFunction(Params as string)
		  dim sh as new Shell
		  
		  app.YieldToNextThread  //Muss sein da sonst kein Task.Kill möglich
		  
		  sh.Mode = 0
		  sh.Execute(Params)
		  sh.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShellExecuteAsThread(Params as string)
		  dim sh as new Shell
		  
		  app.YieldToNextThread  //Muss sein da sonst kein Task.Kill möglich
		  sh.Mode = 1
		  sh.Execute(Params)
		  sh.Close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowLineNum(LineNum as integer)
		  ScrMan.HandleEngineEvent("ScrMan", Name,"" ,"LineChange",str(LineNum), "")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowMessage(Msg as string)
		  frmMain.HandleEngineEvent("scrMan","","","ShowMessage",Msg,"")
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowTimestripRow(LineNum as integer)
		  ScrMan.HandleEngineEvent("ScrMan", Name,"" ,"TimestripLineChange",str(LineNum), "")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopAllTasks()
		  Scrman.StopAllExceptOne(me.Name)
		  Delay("200")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopTask(TaskName as string)
		  ScrMan.StopCueset(TaskName)
		  Delay("200")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function strCheckSum8Bit(chkString as string) As string
		  Return HelpFunctions.strCheckSum8Bit(chkString)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StrToHex(value as string) As string
		  return StringToHexString(value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TimecodeToFramecode(TC as string) As integer
		  Return TCToFrames(TC,fps)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		aChaseChannels(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		aChaseDevices(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		aTimestrip(-1,-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		bLoop As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		bResync As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ChasePositionChannel As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ClockTimer As TClockTimer
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentStartTC As string
	#tag EndProperty

	#tag Property, Flags = &h0
		EndTC As string
	#tag EndProperty

	#tag Property, Flags = &h0
		fps As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IOResult As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MasterTCPosition As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MasterTimeChannel As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MasterTimeDevice As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		PrerollFrames As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RelativeOffset As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Script As string
	#tag EndProperty

	#tag Property, Flags = &h0
		StartLine As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		StartTC As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="bLoop"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="bResync"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ChasePositionChannel"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentStartTC"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EndTC"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="fps"
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
			Name="IOResult"
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
			Name="MasterTCPosition"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MasterTimeChannel"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MasterTimeDevice"
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
			Name="PrerollFrames"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RelativeOffset"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Script"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StartLine"
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StartTC"
			Group="Behavior"
			Type="string"
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
End Class
#tag EndClass
