#tag Class
Protected Class TCalendarEventTimer
Inherits Timer
	#tag Event
		Sub Action()
		  dim d as new date
		  dim params,strTime,strBaseEvent,strCueset,res as String
		  dim i as Integer
		  
		  
		  if EventListCal = nil then EventListCal = new Dictionary
		  if BaseEvents = nil then BaseEvents = new Dictionary
		  
		  if EventListCal.HasKey(d.ShortDate) then
		    params = EventListCal.Value(d.ShortDate)
		    for i = 1 to CountFields(params,chr(2)) step 2
		      strBaseEvent = NthField(params,chr(2),i)
		      strTime = NthField(params,chr(2),i+1)
		      if strTime = d.LongTime then
		        if BaseEvents.HasKey(strBaseEvent) then
		          strCueset = NthField(BaseEvents.Value(strBaseEvent),chr(2),4)
		          ScrMan.HandleEngineEvent("DevMan","Calendar",NthField(BaseEvents.Value(strBaseEvent),chr(2),2)+" "+NthField(BaseEvents.Value(strBaseEvent),chr(2),1),"Event",strCueset,strBaseEvent)
		          res = RunCueset(strCueset,1)
		        end
		      end
		    next
		  end
		  
		End Sub
	#tag EndEvent


	#tag ViewBehavior
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
			Name="Mode"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Off"
				"1 - Single"
				"2 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Period"
			Visible=true
			Group="Behavior"
			InitialValue="1000"
			Type="Integer"
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
	#tag EndViewBehavior
End Class
#tag EndClass
