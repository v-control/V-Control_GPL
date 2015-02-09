#tag Class
Protected Class HTTPServer
Inherits ServerSocket
	#tag Event
		Function AddSocket() As TCPSocket
		  '' Create a new HTTPConnection socket
		  '' to pass back to the server
		  'dim s as httpConnection
		  's = new httpConnection
		  '
		  '' Be sure to set it's root directory
		  '' so that it can serve the pages correctly
		  's.rootDir = rootDir
		  '
		  '' Hand it back to the server
		  'return s
		  
		  dim ret as HTTPConnection
		  
		  ret = new HTTPConnection( me.rootDir )
		  
		  dim i as integer
		  //Clean up
		  for i = UBound(ahttpClients) DownTo 0
		    if ahttpClients(i) <> nil then 
		      if ahttpClients(i).WasClosed = true then 
		        ahttpClients.Remove(i)
		      end
		    end
		    
		  next
		  
		  //Add Socket
		  i = UBound(ahttpClients)
		  if i = -1 then i = 0
		  ReDim ahttpClients(i+1)
		  ahttpClients(i) = ret
		  
		  
		  return ahttpClients(i)
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Error(ErrorCode as Integer)
		  ' We got some sort of error, so report it
		  ' back to the user
		  MsgBox "Server Error: " + str( ErrorCode )
		  
		   
		  me.Listen
		  
		  
		  ' Give a visual indication to the user that they
		  ' can restart the server if they'd like
		  'me.Listen
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		ahttpClients() As HTTPConnection
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			This holds the root directory that the server is
			holding on to.  All connections will be using this
			as the base directory in which to find the content
			
		#tag EndNote
		rootDir As string
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
			Name="rootDir"
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
