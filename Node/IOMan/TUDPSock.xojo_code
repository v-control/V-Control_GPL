#tag Class
Protected Class TUDPSock
Inherits UDPSocket
	#tag Event
		Sub DataAvailable()
		  if FireDataAvailable = true then
		    Dim strData as String
		    dim msg as new Datagram
		    
		    msg = me.Read
		    strData = msg.Data
		    IOMan.HandleChannelEvent(me.name,"Data",strData)
		  end
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function EmptyBuff() As string
		  dim msg as new Datagram
		  
		  
		  While me.PacketsAvailable > 0
		    msg = me.Read
		    me.Poll
		    'app.DoEvents
		  wend
		  
		  if msg <> nil then Return msg.Data
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		FireDataAvailable As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Target As string
	#tag EndProperty


	#tag ViewBehavior
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
			Name="RouterHops"
			Visible=true
			Group="Behavior"
			InitialValue="32"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SendToSelf"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Target"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
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
