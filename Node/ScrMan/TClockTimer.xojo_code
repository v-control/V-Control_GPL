#tag Class
Protected Class TClockTimer
	#tag Method, Flags = &h0
		Sub Constructor(Framerate As integer, StartTC as string, EndTC as string)
		  
		  ifps = Framerate
		  
		  StartFrame = TCToFrames(StartTC,ifps)
		  EndFrame = TCToFrames(EndTC,ifps)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTimer() As integer
		  
		  dim CurrentFrame_uS,Difference_uS as Double
		  
		  'app.DoEvents
		  CurrentFrame_uS = Microseconds
		  Difference_uS = CurrentFrame_uS - Initial_uS
		  
		  
		  if Difference_uS > 0 then
		    dim ms,fdur as integer
		    ms = Difference_uS / 1000
		    fdur = 1/ifps*1000
		    Difference_uS = ms \ fdur
		    elapsedFrames = CurrentStartFrame + Difference_uS
		    //Reset the Timer to StartTC
		    if elapsedFrames >= EndFrame then 
		      //Wenn Task beendet werden soll (LoopStatus = False) dann -1 zurückgeben
		      if LoopStatus = false then Return -1
		      elapsedFrames = StartFrame
		      CurrentStartFrame = StartFrame
		      Initial_uS = CurrentFrame_uS
		    end
		  else
		    Initial_uS = CurrentFrame_uS
		  end
		  
		  
		  Return elapsedFrames
		  
		  
		  
		  'dim CurrentFramePosition,Difference as Double
		  '
		  'app.DoEvents
		  'CurrentFramePosition = Ticks
		  'Difference = CurrentFramePosition - oldFramePosition
		  '
		  '
		  'if Difference > 0 then
		  ''dim ms,fdur as integer
		  ''ms = Difference * 1000/60
		  ''fdur = 1/ifps*1000
		  ''Difference = ms \ fdur
		  'Difference = Difference / 2
		  'elapsedFrames = elapsedFrames +Difference
		  '//Reset the Timer to StartTC
		  'if elapsedFrames >= EndFrame then elapsedFrames = StartFrame
		  'end
		  '
		  '
		  'oldFramePosition = CurrentFramePosition
		  '
		  'Return elapsedFrames
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StartTimer(Timecode as string)
		  elapsedFrames =  TCToFrames(Timecode,ifps)
		  CurrentStartFrame = elapsedFrames
		  
		  //oldFramePosition = Ticks
		  Initial_uS = Microseconds
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CurrentStartFrame As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private elapsedFrames As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private EndFrame As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ifps As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Initial_uS As double
	#tag EndProperty

	#tag Property, Flags = &h0
		LoopStatus As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StartFrame As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LoopStatus"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
