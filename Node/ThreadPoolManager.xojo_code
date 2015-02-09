#tag Module
Protected Module ThreadPoolManager
	#tag Method, Flags = &h0
		Sub FinishedThread(sName as string)
		  for i as integer = 0 to UBound(aThreads)
		    
		    if aThreads(i) = sName then
		      aThreads(i) = ""
		      Scrman.SetBlockStatus(sName,false)
		    end
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetFreeThreadFromPool() As integer
		  for i as Integer = 0 to UBound( mThreadPool )
		    if mThreadPool( i ).State = Thread.NotRunning then
		      // We have a freebie
		      
		      Return i
		    end if
		  next
		  
		  return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InitializePool(numWorkers as Integer)
		  for i as Integer = 0 to numWorkers - 1
		    mThreadPool.Append( new ThreadPoolThread )
		    aThreads.Append("")
		  next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RunThread(wrk as iWorkItem, sName as string) As string
		  
		  //Check that task is not running
		  for i as integer = 0 to UBound(aThreads)
		    if aThreads(i) = sName then 
		      Return "Task is running"
		    end
		  next
		  
		  // Check to see if we've got any items in our work queue
		  if UBound( mThreadPool) >=0 then
		    // Check to see if we've got any free threads in the pool
		    //dim freeThread as ThreadPoolThread = GetFreeThreadFromPool
		    dim freeThread as integer = GetFreeThreadFromPool
		    
		    if freeThread > -1 then
		      Scrman.SetBlockStatus(sName,true)
		      // We have a thread free, so we want to tell it
		      // to do some work
		      mThreadPool(freeThread).SetWorker( wrk)
		      
		      //Cuesetnamen in Threadliste speichern
		      aThreads(freeThread) = sName
		      
		      // And run the thread
		      //freeThread.Run
		      mThreadPool(freeThread).Run
		      
		      'frmMain.lblStatus.Text = "Starting workitem " + str(freeThread + 1)+"..."
		      Return "OK"
		    end
		  end
		  'frmMain.lblStatus.Text ="No Free Threads"
		  
		  Return "No Free Threads"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopThread(sName as string)
		  for i as integer = 0 to UBound(aThreads)
		    
		    if aThreads(i) = sName then
		      mThreadPool(i).Kill
		      
		      Scrman.SetBlockStatus(sName,false)
		      aThreads(i) = ""
		      
		    end
		    
		  next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		aThreads(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mThreadPool(-1) As ThreadPoolThread
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
End Module
#tag EndModule
