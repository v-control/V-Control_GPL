#tag Module
Protected Module TimerEvents
	#tag Method, Flags = &h0
		Function AddTimerEvent(iInterval as integer, strEventName as string, Cuesetname as string) As integer
		  dim i as integer
		  
		  for i = 0 to UBound(aTimerEvents)
		    if aTimerEvents(i).EventName = strEventName then Return -4010
		  next
		  
		  i = UBound(aTimerEvents) + 1
		  ReDim aTimerEvents(i)
		  aTimerEvents(i) = New TTimerEvent
		  aTimerEvents(i).EventName = strEventName
		  aTimerEvents(i).CuesetName = Cuesetname
		  aTimerEvents(i).Period = iInterval
		  aTimerEvents(i).Mode = 2
		  aTimerEvents(i).Enabled = true
		  aTimerEvents(i).Reset
		  Return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearAllTimerEvents()
		  dim i as integer
		  
		  for i = UBound(aTimerEvents) DownTo 0
		    aTimerEvents(i).Enabled = false
		    aTimerEvents.Remove(i)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteTimerEvent(strEventname as string) As integer
		  dim i as Integer
		  
		  for i = 0 to UBound(aTimerEvents)
		    if aTimerEvents(i).EventName = strEventname then
		      aTimerEvents(i).Enabled = False
		      aTimerEvents.Remove(i)
		      Return 0
		    end
		  next
		  
		  Return -4011
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableTimerEvent(strEventname as string)
		  dim i as Integer
		  
		  for i = 0 to UBound(aTimerEvents)
		    if aTimerEvents(i).EventName = strEventname then
		      aTimerEvents(i).Mode = 0
		    end
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableTimerEvent(strEventname as string)
		  dim i as Integer
		  
		  for i = 0 to UBound(aTimerEvents)
		    if aTimerEvents(i).EventName = strEventname then
		      aTimerEvents(i).mode = 2
		    end
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetAllTimerEvents() As string
		  dim i as integer
		  dim res as string
		  
		  res = ""
		  for i = 0 to UBound(aTimerEvents)
		    res = res + str(aTimerEvents(i).Period) + chr(2) + aTimerEvents(i).EventName + chr(2) + aTimerEvents(i).CuesetName + chr(3)
		  next
		  
		  res = DeleteLastChar(res,chr(3))
		  
		  Return res
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAllTimerEvents(strEventList as string)
		  dim i,c,ires as integer
		  dim res,strInterval,strEventName, strCuesetName as string
		  
		  ClearAllTimerEvents
		  
		  for i = 1 to CountFields(strEventList,chr(3))
		    res = NthField(strEventList,chr(3),i)
		    c = InStr(res,chr(2))
		    if c > 0 then
		      strInterval = NthField(res,chr(2),1)
		      strEventName = NthField(res,chr(2),2)
		      strCuesetName = NthField(res,chr(2),3)
		      ires = AddTimerEvent(val(strInterval),strEventName,strCuesetName)
		    end
		  next
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateTimerEvent(iInterval as integer, strEventName as string, Cuesetname as string) As integer
		  dim i as integer
		  
		  for i = 0 to UBound(aTimerEvents)
		    if aTimerEvents(i).EventName = strEventName then
		      aTimerEvents(i) = New TTimerEvent
		      aTimerEvents(i).EventName = strEventName
		      aTimerEvents(i).CuesetName = Cuesetname
		      aTimerEvents(i).Period = iInterval
		      aTimerEvents(i).Mode = 2
		      aTimerEvents(i).Enabled = true
		      aTimerEvents(i).Reset
		      Return 0
		    end
		  next
		  
		  Return -4011
		  
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		aTimerEvents(-1) As TTimerEvent
	#tag EndProperty

	#tag Property, Flags = &h0
		sKeyBuffer As string
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
			Name="sKeyBuffer"
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
