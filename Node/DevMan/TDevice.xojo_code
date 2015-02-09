#tag Class
Protected Class TDevice
Inherits RbScript
	#tag Event
		Sub CompilerError(line As Integer, errorNumber As Integer, errorMsg As String)
		  DevMan.HandleCompileError(me.DeviceName,Line,errorNumber, errorMsg)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Print(msg As String)
		  MsgBox("Message from " + DeviceName + ": " + msg)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub RuntimeError(line As Integer, error As RuntimeException)
		  DevMan.HandleRuntimeError(me.DeviceName,line,error.Message)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  DeviceContext = New TDeviceContext
		  me.Context = DeviceContext
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		aCMD(-1) As TCommand
	#tag EndProperty

	#tag Property, Flags = &h0
		Blocked As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Category As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Channels As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DeviceContext As TDeviceContext
	#tag EndProperty

	#tag Property, Flags = &h0
		DeviceName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DP1Default As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DP1GUIType As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DP1Mask As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DP1MinMaxDef As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DP1Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DP2Default As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DP2GUIType As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DP2Mask As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DP2MinMaxDef As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DP2Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DriverName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		GUIID As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Helptext As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Manufactor As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Blocked"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Category"
			Group="Behavior"
			InitialValue="0"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Channels"
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
			Name="DP1Default"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DP1GUIType"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DP1Mask"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DP1MinMaxDef"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DP1Name"
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
			Name="DP2GUIType"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DP2Mask"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DP2MinMaxDef"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DP2Name"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DriverName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GUIID"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Helptext"
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
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Manufactor"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Source"
			Visible=true
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
