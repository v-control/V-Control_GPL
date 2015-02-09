#tag Class
Protected Class TTCPServer
Inherits ServerSocket
	#tag Event
		Function AddSocket() As TCPSocket
		  dim i as integer
		  dim ret as TClientSock = new TClientSock( curSocket )
		  
		  i = UBound(aClientSocks) + 1
		  ReDim aClientSocks(i)
		  
		  aClientSocks(i) = ret
		  curSocket = curSocket + 1
		  
		  return ret
		End Function
	#tag EndEvent


	#tag Property, Flags = &h0
		aClientSocks(-1) As TClientSock
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected curSocket As Integer = 0
	#tag EndProperty


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
			Name="MaximumSocketsConnected"
			Visible=true
			Group="Behavior"
			InitialValue="10"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumSocketsAvailable"
			Visible=true
			Group="Behavior"
			InitialValue="2"
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
			Name="Port"
			Visible=true
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
	#tag EndViewBehavior
End Class
#tag EndClass
