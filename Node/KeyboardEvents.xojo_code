#tag Module
Protected Module KeyboardEvents
	#tag Method, Flags = &h0
		Function AddKeyboardEvent(keystring as string, strEventName as string, Cuesetname as string) As integer
		  dim i as integer
		  
		  for i = 0 to UBound(aKeyboardEvents)
		    if aKeyboardEvents(i).EventName = strEventName then Return -4010
		  next
		  
		  i = UBound(aKeyboardEvents) + 1
		  ReDim aKeyboardEvents(i)
		  aKeyboardEvents(i) = New TKeyboardEvent
		  aKeyboardEvents(i).EventName = strEventName
		  aKeyboardEvents(i).CuesetName = Cuesetname
		  aKeyboardEvents(i).sKey = keystring
		  Return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CheckKeyboardEvent(sKey as string)
		  dim i as integer
		  dim res as string
		  
		  
		  
		  sKey = ConvertKeycodeToKeyname(sKey)
		  sKeyBuffer = sKeyBuffer + sKey + " "
		  
		  if frmCatchKeyboardEvents.Visible then frmCatchKeyboardEvents.lblKeys.Text = sKeyBuffer
		  
		  for i = 0 to UBound(aKeyboardEvents)
		    if aKeyboardEvents(i).sKey = sKeyBuffer then
		      sKeyBuffer = ""
		      ScrMan.HandleEngineEvent("DevMan","Keyboard",sKeyBuffer,"Event",aKeyboardEvents(i).Cuesetname,aKeyboardEvents(i).EventName)
		      res = RunCueset(aKeyboardEvents(i).Cuesetname,1)
		    end
		  next
		  IF InStr(sKeyBuffer,"ENTER") > 0 then  sKeyBuffer = ""
		  if Len(sKeyBuffer) > 1000 then  sKeyBuffer = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearAllKeyboardEvents()
		  dim i as integer
		  
		  for i = UBound(aKeyboardEvents) DownTo 0
		    aKeyboardEvents.Remove(i)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertKeycodeToKeyname(KeyCode as string) As string
		  dim HexKeyCode as string
		  
		  //If printable character then return character
		  if (asc(KeyCode) > 32) and (asc(KeyCode) <= 126) then Return KeyCode
		  
		  //If not printable character then convert to HexCode
		  HexKeyCode = StringToHexString(KeyCode)
		  
		  if TargetLinux then
		    //If possible, translate Hexcode to Keyname
		    if HexKeyCode = "03" then Return "NumPad_Enter"
		    
		    if HexKeyCode = "08" then Return "BackSpace"
		    if HexKeyCode = "09" then Return "TAB"
		    
		    if HexKeyCode = "0D" then Return "ENTER"
		    
		    if HexKeyCode = "20" then Return "SPACE"
		    
		    if HexKeyCode = "1B" then Return "ESC"
		    
		    if HexKeyCode = "7F" then Return "DEL"
		    
		    if HexKeyCode = "BE" then Return "F1"
		    if HexKeyCode = "BF" then Return "F2"
		    if HexKeyCode = "C0" then Return "F3"
		    if HexKeyCode = "C1" then Return "F4"
		    if HexKeyCode = "C2" then Return "F5"
		    if HexKeyCode = "C3" then Return "F6"
		    if HexKeyCode = "C4" then Return "F7"
		    if HexKeyCode = "C5" then Return "F8"
		    if HexKeyCode = "C6" then Return "F9"
		    if HexKeyCode = "C7" then Return "F10"
		    if HexKeyCode = "C8" then Return "F11"
		    if HexKeyCode = "C9" then Return "F12"
		    
		    if asc(KeyCode) = 126 then Return "DEL"
		  end
		  
		  if TargetWin32 then
		    //If possible, translate Hexcode to Keyname
		    if HexKeyCode = "01" then Return "Pos1"
		    
		    if HexKeyCode = "03" then Return "NumPad_Enter"
		    if HexKeyCode = "04" then Return "End"
		    
		    if HexKeyCode = "05" then Return "Insert"
		    if HexKeyCode = "08" then Return "BackSpace"
		    if HexKeyCode = "09" then Return "TAB"
		    
		    if HexKeyCode = "0B" then Return "PageUp"
		    if HexKeyCode = "0C" then Return "PageDown"
		    if HexKeyCode = "0D" then Return "ENTER"
		    
		    if HexKeyCode = "20" then Return "SPACE"
		    
		    if HexKeyCode = "1B" then Return "ESC"
		    if HexKeyCode = "1C" then Return "Left"
		    if HexKeyCode = "1D" then Return "Right"
		    if HexKeyCode = "1E" then Return "Up"
		    if HexKeyCode = "1F" then Return "Down"
		    if HexKeyCode = "7F" then Return "DEL"
		    
		    if HexKeyCode = "C8" then Return "F1"
		    if HexKeyCode = "C9" then Return "F2"
		    if HexKeyCode = "CA" then Return "F3"
		    if HexKeyCode = "CB" then Return "F4"
		    if HexKeyCode = "CC" then Return "F5"
		    if HexKeyCode = "CD" then Return "F6"
		    if HexKeyCode = "CE" then Return "F7"
		    if HexKeyCode = "CF" then Return "F8"
		    if HexKeyCode = "D0" then Return "F9"
		    if HexKeyCode = "D1" then Return "F10"
		    if HexKeyCode = "D2" then Return "F11"
		    if HexKeyCode = "D3" then Return "F12"
		    
		    
		  end
		  
		  if TargetMacOS then
		    //If possible, translate Hexcode to Keyname
		    
		    
		    
		    
		    if HexKeyCode = "03" then Return "NumPad_Enter"
		    
		    if HexKeyCode = "08" then Return "BackSpace"
		    if HexKeyCode = "09" then Return "TAB"
		    
		    if HexKeyCode = "0D" then Return "ENTER"
		    
		    if HexKeyCode = "20" then Return "SPACE"
		    
		    if HexKeyCode = "1B" then Return "ESC"
		    
		    
		    if HexKeyCode = "7F" then Return "DEL"
		    
		    if HexKeyCode = "BE" then Return "F1"
		    if HexKeyCode = "BF" then Return "F2"
		    if HexKeyCode = "C0" then Return "F3"
		    if HexKeyCode = "C1" then Return "F4"
		    if HexKeyCode = "C2" then Return "F5"
		    if HexKeyCode = "C3" then Return "F6"
		    if HexKeyCode = "C4" then Return "F7"
		    if HexKeyCode = "C5" then Return "F8"
		    if HexKeyCode = "C6" then Return "F9"
		    if HexKeyCode = "C7" then Return "F10"
		    if HexKeyCode = "C8" then Return "F11"
		    if HexKeyCode = "C9" then Return "F12"
		    
		    if asc(KeyCode) = 126 then Return "DEL"
		  end
		  Return HexKeyCode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteKeyboardEvent(strEventname as string) As integer
		  dim i as Integer
		  
		  for i = 0 to UBound(aKeyboardEvents)
		    if aKeyboardEvents(i).EventName = strEventname then
		      aKeyboardEvents.Remove(i)
		      Return 0
		    end
		  next
		  
		  Return -4011
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetAllKeyboardEvents() As string
		  dim i as integer
		  dim res as string
		  
		  res = ""
		  for i = 0 to UBound(aKeyboardEvents)
		    res = res + aKeyboardEvents(i).sKey + chr(2) + aKeyboardEvents(i).EventName + chr(2) + aKeyboardEvents(i).CuesetName + chr(3)
		  next
		  
		  res = DeleteLastChar(res,chr(3))
		  
		  Return res
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAllKeyboardEvents(strEventList as string)
		  dim i,c,ires as integer
		  dim res,strInterval,strEventName, strCuesetName as string
		  
		  ClearAllKeyboardEvents
		  
		  for i = 1 to CountFields(strEventList,chr(3))
		    res = NthField(strEventList,chr(3),i)
		    c = InStr(res,chr(2))
		    if c > 0 then
		      strInterval = NthField(res,chr(2),1)
		      strEventName = NthField(res,chr(2),2)
		      strCuesetName = NthField(res,chr(2),3)
		      ires = AddKeyboardEvent(strInterval,strEventName,strCuesetName)
		    end
		  next
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateKeyboardEvent(keystring as string, strEventName as string, Cuesetname as string) As integer
		  dim i as integer
		  
		  for i = 0 to UBound(aKeyboardEvents)
		    if aKeyboardEvents(i).EventName = strEventName then
		      aKeyboardEvents(i) = New TKeyboardEvent
		      aKeyboardEvents(i).EventName = strEventName
		      aKeyboardEvents(i).CuesetName = Cuesetname
		      aKeyboardEvents(i).sKey = keystring
		      Return 0
		    end
		  next
		  
		  Return -4011
		  
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		aKeyboardEvents(-1) As TKeyboardEvent
	#tag EndProperty

	#tag Property, Flags = &h0
		sKeyBuffer_keyboard As string
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
			Name="sKeyBuffer_keyboard"
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
End Module
#tag EndModule
