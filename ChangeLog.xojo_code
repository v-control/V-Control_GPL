#tag Module
Protected Module ChangeLog
	#tag Note, Name = 3.6.1
		
		1. Chasemode in Timeline works better
		2. New Driver: Cpmm-Tex MTX Series Matrix
		
		
	#tag EndNote

	#tag Note, Name = 3.6.2
		1. Resize some GUI for better fitting
		2. change Toggle Button in Playlist "Stop All Cuesets before playing a new" to checkbox
		3. Stop Task now also stops all sub tasks (call as function)
		4. Change TIniFile to make inis more robust
		5. Ini file is not written at exit
		6. New Menu Configure->Save Window Positions saves the current window positions (and write ini file)
		
		
	#tag EndNote

	#tag Note, Name = 3.63
		
		If command produces "Timeout" then the "Timeout" string is in IOResult
		Status message if ini file is written or read
		devMan:GetGlobalVar and SetGlobalVar for device driver
		devMan:Wenn Scriptresult = "" wird normalerweise kein Wert zurückgeliefert. In diesem Fall wird P1Default als Rückgabewert verwendet. Dies ist wichtig für die neue Funktion "GetGlobalVar", die verwendet werden kann um einen gespeicherten Wert zurückzuliefern.
	#tag EndNote

	#tag Note, Name = 3.64
		
		Timeline funktioniert wieder (mit 2012r2.1 compiliert)
	#tag EndNote

	#tag Note, Name = 3.7.00
		Licensed under GPLv3
		Remove License Keys
		Remove Wibu
		
		TCI70 Driver updated
		
		
	#tag EndNote

	#tag Note, Name = 3.7.10
		Bugfix: If a task with CallAsFunction statement is killed, V-Control could hang in an endless loop to kill the task. This is solved now
		
	#tag EndNote

	#tag Note, Name = 3.7.11
		In some commands that contain binary values > 127 the UTF encoding convert theese bytes to an UTF char. This is solved in the device drivers by using chrB() instead of chr()
		Driver update DVS: CueUp Command does not hang anymore if the desired position is not reachable.
		Driver update Doremi: CueUp Command does not hang anymore if the desired position is not reachable.
		Driver update Bonsai Drive: CueUp Command does not hang anymore if the desired position is not reachable.
		Driver update Turbo iDDR: CueUp Command does not hang anymore if the desired position is not reachable.
		
		GUI: The Device Editor is now resizeable
		Aborting saving the Acknowledge List to file no longer leads to a Nil exception
		
	#tag EndNote

	#tag Note, Name = 3.7.13
		Threads are not allowed to make GUI updates any more. Instead of making GUI updates, 
		the thread statuses are written to a list (EngineEventList). A Timer reads this list and updates the GUI as 
		instructed in this list. A new label "Engine Event Message Stack" under the Acknowledge list shows the number of waiting messages in the queue.
		
		HexCalc window closes now on V-Control shutdown if the window was visible.
		
		PromptMessage command removed
		
		Timer Events can now be disabled or enabeled by script or cuelist. 
		
		New Main Menu item "Events-> Disable All Timer Events"
		New Main Menu item "Events-> Enable All Timer Events"
		
		New Contextual Menu Item in Cuelists "Disable Timer Event"
		New Contextual Menu Item in Cuelists "Enable Timer Event"
		
		New Contextual Menu Item in Scipts "Disable Timer Event"
		New Contextual Menu Item in Scipts "Enable Timer Event"
		
		
	#tag EndNote

	#tag Note, Name = 3.7.14
		
		New: The integrated webserver supports websockets
		New: Playlist fires Timestrips as well
		New: Remote protocol for the playlist (Up / Down / Fire)
		New: 45 CallButtons in addition to Playlist
		Fix: Playlist and CallButton windows now remember the "Stop All before playing a new one" checkbox status
		Fix: Calendar could show wrong weekdays or crash
		Fix: V-Control crash during termination if Webserver is active
	#tag EndNote

	#tag Note, Name = 3.7.15
		New, improved driver for Barco Encore contributed by Jonas Stade
		New Driver for Image Pro controlled via Network
		New Driver for Parco PDS 902 by Jonas Stade
		Updated Driver: DVS Pronto has two new commands PlayClip and PlayClipCountdown
		Updated Driver: Microsoft Powerpoint Driver update to work with V-ControlRemotePC 1.4 and above
	#tag EndNote

	#tag Note, Name = 3.7.16
		
		New remote Command devGetChannelList(DeviceName)
		
		New Date Script Commands (Noch in Doku einfügen)
		- GetYear: Result integer
		- GetMonth: Result integer
		- GetDayOfMonth: Result integer
		- GetDayOfWeek: Result integer (Sunday=0, Monday = 1...)
		- GetHour: Result integer
		- GetMinute: Result integer
		- GetSeconds: Result integer 
		
		New Driver: Christie Phoenix Node
		
		Updated Driver: The old VLC driver was removed. We have now two new VLC drivers, VLC for Linux and VLC for Windows.
		Updated Driver: Watchout (Driver supports Aux Timelines and Goto Timecode now)
		Updated Driver: There was a bug in the Encore driver (No Timeout specified). This bug could lead to a broken RS232 connection. Solved now
		
		
	#tag EndNote


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
