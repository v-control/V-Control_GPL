#tag Class
Protected Class TUDPServer
Inherits UDPSocket
	#tag Event
		Sub DataAvailable()
		  
		  dim stx,etx as string
		  dim dat as Datagram
		  
		  
		  dat = me.Read
		  RecBuffer = RecBuffer + dat.Data
		  
		  stx = leftB(RecBuffer,1)
		  etx = rightB(RecBuffer,1)
		  
		  if stx <> chr(4) then
		    RecBuffer = ""
		  end
		  
		  if etx = chr(6) then
		    dat.Data = NodeIF.CmdDispatcher(RecBuffer,"UDP",dat.Address)
		    RecBuffer = ""
		    
		    me.Write(dat)
		  end
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SendMsg(msg as string)
		  dim dat as Datagram
		  
		  
		  dat.Address = me.BroadcastAddress
		  dat.Port = me.Port
		  dat.Data = msg
		  
		  me.Write(dat)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected RecBuffer As string
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
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
