#tag Class
Protected Class TUndoStore
	#tag Method, Flags = &h0
		Function GetUndo() As string
		  dim res as string
		  
		  if UBound(StoredStack) > -1 then
		    res = StoredStack(UBound(StoredStack))
		    StoredStack.Remove(UBound(StoredStack))
		    Return res
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetUndo(strUndo as string)
		  
		  if UBound(StoredStack) < 10 then
		    StoredStack.Append(strUndo)
		  else
		    StoredStack.Remove(0)
		    StoredStack.Append(strUndo)
		  end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private StoredStack(-1) As string
	#tag EndProperty


	#tag ViewBehavior
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
End Class
#tag EndClass
