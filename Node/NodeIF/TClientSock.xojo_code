#tag Class
Protected Class TClientSock
Inherits TCPSocket
	#tag Event
		Sub Connected()
		  ScrMan.HandleEngineEvent("NodeIF","TCPRemote","Client:"+str(ID),"Message","Connected","")
		End Sub
	#tag EndEvent

	#tag Event
		Sub DataAvailable()
		  dim sres as string
		  dim stx,etx as string
		  
		  RecBuffer = RecBuffer + me.ReadAll
		  
		  
		  //This is a Flash Policy is requested
		  if RecBuffer = "<policy-file-request/>"+chr(0) then
		    RecBuffer = ""
		    //Compose the policy file
		    sres = "<?xml version=" + """" + "1.0" + """" + "?>" +chr(13)+chr(10)
		    sres = sres + "<!DOCTYPE cross-domain-policy SYSTEM "+""""+"/xml/dtds/cross-domain-policy.dtd"+""""+">" +chr(13)+chr(10)
		    sres = sres + "<cross-domain-policy>"
		    sres = sres + "<site-control permitted-cross-domain-policies="+""""+"master-only"+""""+"/>" +chr(13)+chr(10)
		    sres = sres + "<allow-access-from domain="+""""+"*"+""""+" to-ports="+""""+"2000"+""""+"/>" +chr(13)+chr(10)
		    sres = sres + "</cross-domain-policy>" +chr(13)+chr(10) +chr(13)+chr(10)+chr(0)
		    //send policy file
		    me.Write(sres)
		    
		  else
		    
		    stx = leftB(RecBuffer,1)
		    etx = rightB(RecBuffer,1)
		    
		    if stx <> chr(4) then
		      RecBuffer = ""
		    end
		    
		    if etx = chr(6) then
		      sres = NodeIF.CmdDispatcher(RecBuffer,"TCP",me.RemoteAddress)
		      RecBuffer = ""
		      me.Write(sres)
		    end
		    
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub Error()
		  ScrMan.HandleEngineEvent("NodeIF","TCPRemote","Client:"+str(ID),"Message","Connection Lost","")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(SocketNum as integer)
		  ID = SocketNum
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendMsg(msg as string)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ID As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RecBuffer As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Address"
			Visible=true
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
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
			Name="RecBuffer"
			Group="Behavior"
			Type="string"
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
