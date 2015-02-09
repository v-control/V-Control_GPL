#tag Class
Protected Class TCueset
Inherits RbScript
Implements iWorkItem
	#tag Event
		Sub CompilerError(line As Integer, errorNumber As Integer, errorMsg As String)
		  ScrMan.HandleEngineEvent("ScrMan","Cueset","NoChannel","CompilerError",str(Line)+ chr(2) + str(ErrorNumber)+ chr(2) + ErrorMsg,"")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  
		  CuesetContext = New TCuesetContext
		  me.Context = CuesetContext
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoWork()
		  // Part of the WorkItem interface.
		  'me.Blocked = true
		  scrMan.HandleEngineEvent("ScrMan","Cueset","NoChannels","CuesetMsg",mName+";START","")
		  me.Run
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InitializeItem()
		  // Part of the WorkItem interface.
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WorkCompleted()
		  // Part of the WorkItem interface.
		  
		  dim devidx as integer
		  
		  
		  //Rescourcen freigeben
		  
		  devidx = GetDeviceIdByName(CurrentUsedDevice)
		  if devidx >= 0 then
		    DevMan.aDevices(devidx).Blocked = false
		    IOMan.UnBlockChannels(CurrentUsedChannels)
		  end
		  
		  scrMan.HandleEngineEvent("ScrMan","Cueset","NoChannels","CuesetMsg",mName+";STOP","")
		  ThreadPoolManager.FinishedThread(mName)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ChildCueset As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CuesetContext As TCuesetContext
	#tag EndProperty

	#tag Property, Flags = &h0
		CuesetParams As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentUsedChannels As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentUsedDevice As string
	#tag EndProperty

	#tag Property, Flags = &h0
		IsBlocked As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mName As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mScript As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mStartLine As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mThreadID As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mName = value
			  CuesetContext.Name = value
			End Set
		#tag EndSetter
		Name As string
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mScript
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mScript = value
			  CuesetContext.Script = Value
			End Set
		#tag EndSetter
		Script As string
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mStartLine
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mStartLine = value
			  CuesetContext.StartLine = value
			End Set
		#tag EndSetter
		StartLine As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Type As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ChildCueset"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CuesetParams"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentUsedChannels"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentUsedDevice"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsBlocked"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Script"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Source"
			Visible=true
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StartLine"
			Group="Behavior"
			InitialValue="0"
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
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
