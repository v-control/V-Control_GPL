#tag Class
Protected Class ThreadPoolThread
Inherits Thread
	#tag Event
		Sub Run()
		  // Tell the item that it's about to do
		  // some work
		  mWorkItem.InitializeItem
		  
		  // Now do our work
		  mWorkItem.DoWork
		  
		  // Then finalize the work item
		  mWorkItem.WorkCompleted
		  
		  // Remove our work item so that
		  // it can be destroyed properly
		  mWorkItem = nil
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SetWorker(item as iWorkItem)
		  mWorkItem = item
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mWorkItem As iWorkItem
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
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
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
