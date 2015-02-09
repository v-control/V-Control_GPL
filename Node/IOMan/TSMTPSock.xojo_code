#tag Class
Protected Class TSMTPSock
Inherits SMTPSocket
	#tag Event
		Sub MessageSent(Email as EmailMessage)
		  MsgInProgress = false
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SendMsg(Msg as string)
		  Dim Subj,Body,Recipient,AttachFile as string
		  Dim mail as EmailMessage
		  dim Attach as EmailAttachment
		  
		  
		  if CountFields(msg,chr(2)) > 2 then
		    Recipient = NthField(msg,chr(2),1)
		    Subj = NthField(msg,chr(2),2)
		    Body = NthField(msg,chr(2),3)
		    
		    if CountFields(msg,chr(2)) = 4 then
		      AttachFile = NthField(msg,chr(2),4)
		      Attach = new EmailAttachment
		      Attach.LoadFromFile(GetFolderItem(AttachFile))
		      
		    end
		    
		    mail = New EmailMessage
		    mail.fromAddress= me.fromAddress
		    mail.subject=Subj
		    mail.bodyPlainText = Body
		    if Attach <> nil then mail.Attachments.Append(Attach)
		    
		    mail.addRecipient Recipient
		    
		    //send the mail
		    me.messages.append mail //add email to list of messages
		    me.Connect
		    me.SendMail //send message
		    MsgInProgress = true
		    While MsgInProgress = true
		      app.SleepCurrentThread(100)
		      'app.DoEvents
		    wend
		  end
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		FireDataAvailable As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		fromAddress As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MsgInProgress As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Address"
			Visible=true
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BytesAvailable"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BytesLeftToSend"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FireDataAvailable"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="fromAddress"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Handle"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsConnected"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastErrorCode"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalAddress"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MsgInProgress"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemoteAddress"
			Group="Behavior"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Username"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
