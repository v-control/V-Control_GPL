#tag Class
Protected Class TChannel
	#tag Property, Flags = &h0
		#tag Note
			If blocked then Channel in use
			
		#tag EndNote
		Blocked As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Channel Name
			
		#tag EndNote
		Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Channel Parameter
			Baud, Port etc.
		#tag EndNote
		Parameter As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			0 = Serial, 1 = TCP, 2 = UDP
			
		#tag EndNote
		Type As integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Blocked"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
			Name="Parameter"
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
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
