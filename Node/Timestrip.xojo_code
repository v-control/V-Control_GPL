#tag Module
Protected Module Timestrip
	#tag Method, Flags = &h0
		Sub InitTimestrip()
		  
		  dim i as integer
		  
		  //Disable Column Sort
		  for i = 0 to frmMain.lstTimestrip.ColumnCount-1
		    frmMain.lstTimestrip.ColumnSortDirection(i) = 0
		  next 
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BlockTimestripUpdate As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Framerate As Integer = 25
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BlockTimestripUpdate"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Framerate"
			Group="Behavior"
			InitialValue="25"
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
