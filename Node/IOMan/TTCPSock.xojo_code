#tag Class
Protected Class TTCPSock
Inherits TCPSocket
	#tag Event
		Sub DataAvailable()
		  if FireDataAvailable = true then
		    
		    Dim strData as String
		    
		    strData = me.ReadAll
		    IOMan.HandleChannelEvent(me.name,"Data",strData)
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub Error()
		  'me.Connect
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function EmptyBuff() As string
		  
		  Return me.ReadAll
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		FireDataAvailable As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Address"
			Visible=true
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FireDataAvailable"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
