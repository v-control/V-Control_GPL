#tag Class
Protected Class TDeviceContext
	#tag Method, Flags = &h0
		Function BCDToTCString(BCDString as string) As string
		  dim hhR,mmR,ssR,ffR as integer
		  dim hhTenR,hhOneR,mmTenR,mmOneR,ssTenR,ssOneR,ffTenR,ffOneR as integer
		  
		  if len(BCDString) <> 4 then Return "00-00-00-00"
		  
		  hhR = Asc(Mid(BCDString, 4, 1))
		  mmR = Asc(Mid(BCDString, 3, 1))
		  ssR = Asc(Mid(BCDString, 2, 1))
		  ffR = Asc(Mid(BCDString, 1, 1))
		  'Bei Doremi Harddiskrecorder wird fälschlicherweise das 8. Bit
		  'mit gesetzt. Dadurch wird aus TC 00:00:00:00 dann 00:00:00:80
		  'um das zu verhindern wird
		  hhR = hhR And 127
		  ffR = ffR And 127
		  
		  hhTenR = hhR / 16
		  hhOneR = hhR - hhTenR * 16
		  mmTenR = mmR / 16
		  mmOneR = mmR - mmTenR * 16
		  ssTenR = ssR / 16
		  ssOneR = ssR - ssTenR * 16
		  ffTenR = ffR / 16
		  ffOneR = ffR - ffTenR * 16
		  
		  'für NTSC DropFrame
		  If ffTenR = 4 Then
		    ffTenR = 0
		    ffR = ffR - (4 * 16)
		  End If
		  If ffTenR = 5 Then
		    ffTenR = 1
		    ffR = ffR - (4 * 16)
		  End If
		  If ffTenR = 6 Then
		    ffTenR = 2
		    ffR = ffR - (4 * 16)
		  End If
		  If ffTenR = 7 Then
		    ffTenR = 3
		    ffR = ffR - (4 * 16)
		  End If
		  
		  Return str(hhTenR) + str(hhOneR) + "-" + str(mmTenR) + str(mmOneR) + "-" + str(ssTenR) + str(ssOneR) + "-" + str(ffTenR) + str(ffOneR)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Bitand(p1 as integer, p2 as integer) As integer
		  Return Bitwise.BitAnd(p1,p2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChangeCMD_Code(CommandName as string, Parameter as string, NewVal as string)
		  dim Cidx,Didx as Integer
		  
		  
		  Cidx = DevMan.GetCommandIdByName(DeviceName,CommandName)
		  
		  if Cidx >= 0 then
		    Didx = DevMan.GetDeviceIdByName(DeviceName)
		    if Didx >= 0 then
		      if Parameter = "P1" then DevMan.aDevices(DIdx).aCMD(Cidx).P1Default = NewVal
		      if Parameter = "P2" then DevMan.aDevices(DIdx).aCMD(Cidx).P2Default = NewVal
		      if Parameter = "P3" then DevMan.aDevices(DIdx).aCMD(Cidx).P3Default = NewVal
		      if Parameter = "P4" then DevMan.aDevices(DIdx).aCMD(Cidx).P4Default = NewVal
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChangeCMD_MinMax(CommandName as string, Parameter as string, NewVal as string)
		  dim Cidx,Didx as Integer
		  
		  
		  Cidx = DevMan.GetCommandIdByName(DeviceName,CommandName)
		  
		  if Cidx >= 0 then
		    Didx = DevMan.GetDeviceIdByName(DeviceName)
		    if Didx >= 0 then
		      if Parameter = "P1" then DevMan.aDevices(DIdx).aCMD(Cidx).P1MinMaxDef = NewVal
		      if Parameter = "P2" then DevMan.aDevices(DIdx).aCMD(Cidx).P2MinMaxDef = NewVal
		      if Parameter = "P3" then DevMan.aDevices(DIdx).aCMD(Cidx).P3MinMaxDef = NewVal
		      if Parameter = "P4" then DevMan.aDevices(DIdx).aCMD(Cidx).P4MinMaxDef = NewVal
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckSum8Bit(chkString as string) As integer
		  Return HelpFunctions.CheckSum8Bit(chkString)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delay(DelayTime as string)
		  App.SleepCurrentThread(val(DelayTime))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FloatStringToStr(fString as string) As string
		  //converts a string representing a float value ("1.2302")  to a four byte float string
		  
		  Dim mb As MemoryBlock = New MemoryBlock(4)
		  dim s,stmp as string
		  dim FloatVal as Single
		  
		  'fString = ReplaceAll(fString,",",".")
		  FloatVal = CDbl(fString)
		  mb.SingleValue(0) = FloatVal
		  // automatic conversion between memoryblock and strings!!   =)
		  s = mb
		  stmp = mid(s,4,1)+mid(s,3,1)+mid(s,2,1)+mid(s,1,1)
		  return stmp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FramecodeToTimecode(Frames As integer, fps as integer) As string
		  Return FramesToTC(Frames,fps)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetGlobalVar(VarName as string) As string
		  dim i as integer
		  
		  i = scrMan.GetGlobalVarIdByName(VarName)
		  
		  if i >= 0 then 
		    Return scrMan.aGlobalVar(i).Value
		  else
		    Return ""
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HexToStr(value as string) As string
		  Return HexStringToString(value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetGlobalVar(VarName as string, Value as string) As string
		  dim i as integer
		  
		  i = scrMan.GetGlobalVarIdByName(VarName)
		  if i >= 0 then
		    if scrMan.aGlobalVar(i).Blocked = True then Return "-4008"
		    scrMan.aGlobalVar(i).Value = Value
		    Return "0"
		  else
		    Return "-4007"
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowMessage(Msg as string)
		  frmMain.HandleEngineEvent("scrMan","","","ShowMessage",Msg,"")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SingleToStr(FloatVal as single) As string
		  //converts a single (i.e. 0.023) to a four byte float string
		  
		  Dim mb As MemoryBlock = New MemoryBlock(4)
		  dim s,stmp as string
		  
		  mb.SingleValue(0) = FloatVal
		  // automatic conversion between memoryblock and strings!!   =)
		  s = mb
		  stmp = mid(s,4,1)+mid(s,3,1)+mid(s,2,1)+mid(s,1,1)
		  return stmp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StartEvent(DevName as string, Cmd as string, Channel as string, DP1 as string, DP2 as string, P1 as string, P2 as string , P3 as string , P4 as string,TermChar as string)
		  dim res,res2 as string
		  
		  res = DevMan.GetEventHandlerFromParams(DevName, Cmd, Channel, DP1, DP2, P1, P2 , P3 , P4,TermChar)
		  if res <> "" then
		    res2 = ScrMan.RunCueset(res,1)
		    //Show the fired event in the Eventlist
		    if res2 = "0" then ScrMan.HandleEngineEvent("DevMan", DevName, Channel,"Event",res,Cmd)
		  end
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
		Function TCStringToBCD(TCString as string) As string
		  Dim hhTen, hhOne, mmTen, mmOne, ssTen, ssOne, ffTen, ffOne as integer
		  Dim hh, mm, ss, ff as integer
		  
		  if len(TCString) <> 11 then Return chr(0)+chr(0)+chr(0)+chr(0)
		  
		  'Timecode in 8 nibbles aufteilen
		  
		  hhTen = Val(Mid(TCString, 1, 1))
		  If hhTen <> 0 Then hhTen = hhTen * 15 + hhTen
		  hhOne = Val(Mid(TCString, 2, 1))
		  
		  mmTen = Val(Mid(TCString, 4, 1))
		  If mmTen <> 0 Then mmTen = mmTen * 15 + mmTen
		  mmOne = Val(Mid(TCString, 5, 1))
		  
		  ssTen = Val(Mid(TCString, 7, 1))
		  If ssTen <> 0 Then ssTen = ssTen * 15 + ssTen
		  ssOne = Val(Mid(TCString, 8, 1))
		  
		  ffTen = Val(Mid(TCString, 10, 1))
		  If ffTen <> 0 Then ffTen = ffTen * 15 + ffTen
		  ffOne = Val(Mid(TCString, 11, 1))
		  
		  hh = hhTen + hhOne
		  mm = mmTen + mmOne
		  ss = ssTen + ssOne
		  ff = ffTen + ffOne
		  
		  Return chr(ff) + Chr(ss) + Chr(mm) + Chr(hh)
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		ACK As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		AckCmd As string
	#tag EndProperty

	#tag Property, Flags = &h0
		AckLen As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//specifies the command that handle the Acknowledge
		#tag EndNote
		AckString As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ChannelList As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Cmd As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DeviceName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DP1 As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DP1Default As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DP2 As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DP2Default As string
	#tag EndProperty

	#tag Property, Flags = &h0
		IOResult As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//specifies the next command for a command sequence
			// i.e. if an init sequence of a device need more than one command, it is possible to
			//build a chain of commands using NextCmd
			
		#tag EndNote
		NextCmd As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P1 As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P1Default As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P2 As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P2Default As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P3 As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P3Default As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P4 As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P4Default As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ScriptResult As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Timeout As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ACK"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AckCmd"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AckLen"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AckString"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ChannelList"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cmd"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DeviceName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DP1"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DP1Default"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DP2"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DP2Default"
			Group="Behavior"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NextCmd"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P1"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P1Default"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P2"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P2Default"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P3"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P3Default"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P4"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P4Default"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScriptResult"
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
			Name="Timeout"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
