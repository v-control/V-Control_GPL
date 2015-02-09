#tag Class
Protected Class TCommand
	#tag Property, Flags = &h0
		#tag Note
			//specifies the command that handle the Acknowledge
		#tag EndNote
		AckCmd As string
	#tag EndProperty

	#tag Property, Flags = &h0
		AckLen As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		AckString As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//Name of the command
		#tag EndNote
		CmdName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//The command that is sent to the device
		#tag EndNote
		CmdScript As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//The Device this command is associated with
		#tag EndNote
		DeviceID As Integer
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
		P1Default As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//Type of the Parameters GUI
		#tag EndNote
		P1GUIType As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//Input Mask
			
		#tag EndNote
		P1Mask As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//Min Max definition
		#tag EndNote
		P1MinMaxDef As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//Parameter Name
		#tag EndNote
		P1Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P2Default As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P2GUIType As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		P2Mask As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P2MinMaxDef As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P2Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P3Default As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P3GUIType As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		P3Mask As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P3MinMaxDef As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P3Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P4Default As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P4GUIType As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		P4Mask As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P4MinMaxDef As string
	#tag EndProperty

	#tag Property, Flags = &h0
		P4Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//Rheienfolge auf dem Tab
		#tag EndNote
		Position As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			The Tab where the command is visible
		#tag EndNote
		TabID As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//Specifies Timeout of the command in ms
		#tag EndNote
		Timeout As Integer
	#tag EndProperty


	#tag ViewBehavior
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
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AckString"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CmdName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CmdScript"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DeviceID"
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
			Name="P1Default"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P1GUIType"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P1Mask"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P1MinMaxDef"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P1Name"
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
			Name="P2GUIType"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P2Mask"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P2MinMaxDef"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P2Name"
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
			Name="P3GUIType"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P3Mask"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P3MinMaxDef"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P3Name"
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
			Name="P4GUIType"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P4Mask"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P4MinMaxDef"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="P4Name"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Position"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabID"
			Group="Behavior"
			InitialValue="0"
			Type="string"
			EditorType="MultiLineEditor"
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
