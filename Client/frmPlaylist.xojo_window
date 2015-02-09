#tag Window
Begin Window frmPlaylist
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   482
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   True
   Title           =   "Playlist"
   Visible         =   True
   Width           =   552
   Begin ListBox lstItems
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   True
      ColumnWidths    =   "15%,40%"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   True
      EnableDragReorder=   False
      GridLinesHorizontal=   1
      GridLinesVertical=   3
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   408
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Key	Cueset	Comment"
      Italic          =   False
      Left            =   169
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   "0"
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   48
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   383
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin ListBox lstAvailable
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   True
      EnableDragReorder=   False
      GridLinesHorizontal=   2
      GridLinesVertical=   3
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   422
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Available Tasks"
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   "0"
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   48
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   163
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Label lblStatus
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   167
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   "0"
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   0
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   461
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   385
   End
   Begin CheckBox chkStopAll
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Stop all Tasks before starting a new one"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   13
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   "0"
      State           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   13
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   403
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  globals.LastLeftPositionPlaylist = me.Left
		  globals.LastTopPositionPlaylist = me.Top
		  globals.LastWidthPlaylist = me.Width
		  Globals.LastHeightPlaylist = me.Height
		  Globals.pt_PlaylistColumnWidth = lstItems.ColumnWidths
		  pt_PlaylistOpen = false
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  RunTask(Key)
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  'Copyright (C) 2007-2014 Dierk Walter VMAN www.vman.cc
		  '
		  'V-Control is free software: you can redistribute it and/or modify
		  'it under the terms of the GNU General Public License as published by
		  'the Free Software Foundation, either version 3 of the License, or
		  '(at your option) any later version.
		  '
		  'This program is distributed in the hope that it will be useful,
		  'but WITHOUT ANY WARRANTY; without even the implied warranty of
		  'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		  'GNU General Public License for more details.
		  '
		  'You should have received a copy of the GNU General Public License
		  'along with this program.  If not, see <http://www.gnu.org/licenses/>.
		  
		  dim i as integer
		  
		  lstItems.ColumnSortDirection(0) = 0
		  lstItems.ColumnSortDirection(1) = 0
		  lstItems.ColumnSortDirection(2) = 0
		  lstItems.TextSize = Globals.pt_PlaylistTextsize
		  lstItems.ColumnWidths = pt_PlaylistColumnWidth
		  
		  for i = 0 to frmMain.lstCuesets.ListCount-1
		    lstAvailable.AddRow(frmMain.lstCuesets.Cell(i,0))
		  next
		  for i = 0 to frmMain.lstCuelists.ListCount-1
		    lstAvailable.AddRow(frmMain.lstCuelists.Cell(i,0))
		  next
		  
		  for i = 0 to UBound(ScrMan.aPlaylistItems)
		    lstItems.AddRow("")
		    lstItems.Cell(i,0) = ScrMan.aPlaylistItems(i).Keycode
		    lstItems.Cell(i,1) = ScrMan.aPlaylistItems(i).CuesetName
		    lstItems.Cell(i,2) = ScrMan.aPlaylistItems(i).Comment
		  next
		  
		  me.Left = globals.LastLeftPositionPlaylist
		  me.Top = globals.LastTopPositionPlaylist
		  me.Width = globals.LastWidthPlaylist
		  me.Height = Globals.LastHeightPlaylist
		  
		  pt_PlaylistOpen = true
		  chkStopAll.Value = Globals.StopAllTasksBeforePlaying
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub LineDown()
		  if lstItems.ListIndex < lstItems.ListCount-1 then lstItems.ListIndex = lstItems.ListIndex+1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LineUp()
		  if lstItems.ListIndex > 0 then lstItems.ListIndex = lstItems.ListIndex-1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RebuildPlaylist()
		  dim i as integer
		  
		  for i = UBound(ScrMan.aPlaylistItems) DownTo 0
		    ScrMan.aPlaylistItems(i) = nil
		    ScrMan.aPlaylistItems.Remove(i)
		  next
		  for i = 0 to lstItems.ListCount-1
		    Redim ScrMan.aPlaylistItems(i)
		    ScrMan.aPlaylistItems(i) = New TPlaylistItem
		    ScrMan.aPlaylistItems(i).Keycode = lstItems.Cell(i,0)
		    ScrMan.aPlaylistItems(i).CuesetName = lstItems.Cell(i,1)
		    ScrMan.aPlaylistItems(i).Comment = lstItems.Cell(i,2)
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunTask(Code as string)
		  dim i as integer
		  dim cs,oldcs as string
		  dim sKeyBuffer as string
		  
		  if chkStopAll.Value = true then
		    frmMain.StopAllCuesets
		    app.SleepCurrentThread(100)
		  end
		  
		  if Code = " " then
		    cs = lstItems.Cell(lstItems.ListIndex,1)
		    //Search in Cuesets
		    for i = 0 to frmMain.lstCuesets.ListCount-1
		      if cs = frmMain.lstCuesets.Cell(i,0) then
		        oldcs = CurrentSelectedCueset
		        CurrentSelectedCueset = cs
		        frmMain.RunCueset
		        CurrentSelectedCueset = oldcs
		        if lstItems.ListIndex < lstItems.ListCount-1 then lstItems.ListIndex = lstItems.ListIndex+1
		      end
		    next
		    //Search in Cuelists
		    for i = 0 to frmMain.lstCuelists.ListCount-1
		      if cs = frmMain.lstCuelists.Cell(i,0) then
		        oldcs = CurrentSelectedCueset
		        CurrentSelectedCueset = cs
		        frmMain.RunCueset
		        CurrentSelectedCueset = oldcs
		        if lstItems.ListIndex < lstItems.ListCount-1 then lstItems.ListIndex = lstItems.ListIndex+1
		      end
		    next
		    //Search in Timelines
		    for i = 0 to frmMain.lstTimestrips.ListCount-1
		      if cs = frmMain.lstTimestrips.Cell(i,0) then
		        oldcs = CurrentSelectedCueset
		        CurrentSelectedCueset = cs
		        frmMain.RunCueset
		        CurrentSelectedCueset = oldcs
		        if lstItems.ListIndex < lstItems.ListCount-1 then lstItems.ListIndex = lstItems.ListIndex+1
		      end
		    next
		    
		    exit
		  end
		  
		  
		  sKeyBuffer = ConvertKeycodeToKeyname(Code)
		  
		  lblStatus.Text = sKeyBuffer
		  
		  for i = 0 to UBound(ScrMan.aPlaylistItems)
		    if ScrMan.aPlaylistItems(i).Keycode = sKeyBuffer then
		      
		      cs = lstItems.Cell(i,1)
		      oldcs = CurrentSelectedCueset
		      CurrentSelectedCueset = cs
		      frmMain.RunCueset
		      CurrentSelectedCueset = oldcs
		      lstItems.ListIndex = i
		      exit
		    end
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		bEditKeycode As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		DragSourcelstItems As boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events lstItems
	#tag Event
		Sub Open()
		  Me.AcceptTextDrop
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  dim i as integer
		  
		  If Obj.TextAvailable then
		    
		    if DragSourcelstItems = false then
		      if me.ListIndex < 0 then
		        Me.AddRow("")
		        me.Cell(me.ListCount-1,1) = obj.text
		        me.ListIndex = me.ListCount-1
		      else
		        me.InsertRow(me.ListIndex,"")
		        me.Cell(me.ListIndex-1,1) = obj.Text
		        me.ListIndex = me.ListIndex-1
		      end
		    else
		      //Wenn von lstItems gedragt wurde
		      if me.ListIndex < 0 then
		        Me.AddRow("")
		        me.Cell(me.ListCount-1,0) = NthField(obj.text,chr(2),1)
		        me.Cell(me.ListCount-1,1) = NthField(obj.text,chr(2),2)
		        me.Cell(me.ListCount-1,2) = NthField(obj.text,chr(2),3)
		        me.ListIndex = me.ListCount-1
		      else
		        me.InsertRow(me.ListIndex,"")
		        me.Cell(me.ListIndex-1,0) = NthField(obj.text,chr(2),1)
		        me.Cell(me.ListIndex-1,1) = NthField(obj.text,chr(2),2)
		        me.Cell(me.ListIndex-1,2) = NthField(obj.text,chr(2),3)
		        me.ListIndex = me.ListIndex-1
		      end
		      //Remove the Source Line Object
		      i = val(NthField(obj.Text,chr(2),4))
		      if i < me.ListIndex then 
		        me.RemoveRow(i)
		      else
		        me.RemoveRow(i+1)
		      end
		    end
		    //rebuild aPlaylistItems
		    
		    RebuildPlaylist
		  end 
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndEvent
	#tag Event
		Function DragRow(drag As DragItem, row As Integer) As Boolean
		  DragSourcelstItems = true
		  Drag.Text=Me.cell(Row,0) +chr(2) + Me.cell(Row,1) +chr(2) + Me.cell(Row,2) + chr(2) + str(row)
		  Return True //allow the drag
		End Function
	#tag EndEvent
	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  lstItems.ListIndex = lstItems.RowFromXY(x,y)
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  if not me.Enabled then exit
		  
		  Dim m1 as New MenuItem
		  Dim m2 as New MenuItem
		  Dim m3 as New MenuItem
		  
		  m1.Text= "Edit Key"
		  m2.Text= "Edit Comment"
		  m3.Text= "Delete Playlist Item"
		  
		  base.append m1
		  base.append m2
		  base.append m3
		  
		  Return true //display the contextual menu
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  //rebuild aPlaylistItems
		  dim i as integer
		  
		  for i = UBound(ScrMan.aPlaylistItems) DownTo 0
		    ScrMan.aPlaylistItems(i) = nil
		    ScrMan.aPlaylistItems.Remove(i)
		  next
		  for i = 0 to lstItems.ListCount-1
		    Redim ScrMan.aPlaylistItems(i)
		    ScrMan.aPlaylistItems(i) = New TPlaylistItem
		    ScrMan.aPlaylistItems(i).Keycode = lstItems.Cell(i,0)
		    ScrMan.aPlaylistItems(i).CuesetName = lstItems.Cell(i,1)
		    ScrMan.aPlaylistItems(i).Comment = lstItems.Cell(i,2)
		  next
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  dim cs,oldcs as string
		  
		  if chkStopAll.Value = true then 
		    frmMain.StopAllCuesets
		    app.SleepCurrentThread(100)
		  end
		  cs = lstItems.Cell(lstItems.Listindex,1)
		  oldcs = CurrentSelectedCueset
		  CurrentSelectedCueset = cs
		  frmMain.RunCueset
		  CurrentSelectedCueset = oldcs
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if row mod 2= 0 then
		    g.foreColor=Globals.pty_ListBackColor
		  else
		    g.foreColor=RGB(255,255,255)
		  end
		  
		  g.FillRect 0,0,g.width,g.height
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  dim i as integer
		  
		  Select Case hititem.text
		    
		  case "Edit Key"
		    if me.ListIndex >= 0 then
		      bEditKeycode = true
		      frmInsertKeycode.ShowModal
		      //Rebuild Playlist
		      RebuildPlaylist
		    else
		      MsgBox("No Listitem selected")
		    end
		    
		  case "Edit Comment"
		    if me.ListIndex >= 0 then
		      me.EditCell(me.ListIndex,2)
		    else
		      MsgBox("No Listitem selected")
		    end
		    
		  case "Delete Playlist Item"
		    for i = lstItems.ListCount-1 DownTo 0
		      'if lstItems.Cell(i,1) = s1 then lstItems.RemoveRow(i)
		      if lstItems.Selected(i) then lstItems.RemoveRow(i)
		    next
		    RebuildPlaylist
		  End select
		  Globals.ProjectHasChanged(true)
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lstAvailable
	#tag Event
		Function DragRow(drag As DragItem, row As Integer) As Boolean
		  DragSourcelstItems = false
		  Drag.Text=Me.List(Row) //get the text
		  Return True //allow the drag
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.AcceptTextDrop
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkStopAll
	#tag Event
		Sub Action()
		  Globals.StopAllTasksBeforePlaying = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="bEditKeycode"
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="DragSourcelstItems"
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"10 - Drawer Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
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
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
