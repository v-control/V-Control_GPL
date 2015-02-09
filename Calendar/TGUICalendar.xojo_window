#tag Window
Begin ContainerControl TGUICalendar
   AcceptFocus     =   False
   AcceptTabs      =   False
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   353
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   32
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   32
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   621
   Begin ListBox lstMonths
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
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   198
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   8
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   True
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
      Top             =   42
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   100
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin ListBox lstDayView
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   True
      ColumnWidths    =   "100,80,80"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   224
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Time	Event	Repeat"
      Italic          =   False
      Left            =   428
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   True
      Scope           =   "0"
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   180
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin GroupBox grpEditEvent
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Edit Event"
      Enabled         =   True
      Height          =   89
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   8
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   250
      Underline       =   False
      Visible         =   True
      Width           =   600
      Begin Label StaticText1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEditEvent"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Time:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   277
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   55
      End
      Begin TextField txtTime
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEditEvent"
         Italic          =   False
         Left            =   85
         LimitText       =   11
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   274
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   124
      End
      Begin Label StaticText2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEditEvent"
         Italic          =   False
         Left            =   241
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Event:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   276
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   46
      End
      Begin TextField txtEvent
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEditEvent"
         Italic          =   False
         Left            =   299
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   274
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   299
      End
      Begin PushButton cmdAdd
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Add"
         Default         =   False
         Enabled         =   False
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEditEvent"
         Italic          =   False
         Left            =   234
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   308
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton cmdDelete
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Delete"
         Default         =   False
         Enabled         =   False
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEditEvent"
         Italic          =   False
         Left            =   428
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   308
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton cmdRepeat
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Repeat..."
         Default         =   False
         Enabled         =   False
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEditEvent"
         Italic          =   False
         Left            =   18
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   308
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton cmdUpdate
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Update"
         Default         =   False
         Enabled         =   False
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEditEvent"
         Italic          =   False
         Left            =   328
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   308
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton cmdClose
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Close"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpEditEvent"
         Italic          =   False
         Left            =   520
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   308
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
   End
   Begin TSpinButton spnYear
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      BackColor       =   
      Backdrop        =   0
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   23
      HelpTag         =   ""
      Index           =   "-2147483648"
      InitialParent   =   ""
      Left            =   8
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Max             =   0
      Min             =   0
      Scope           =   "0"
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   14
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   100
   End
   Begin ListBox lstCal
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   7
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   32
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   225
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Sun	Mon	Tue	Wen	Thu	Fri	Sat"
      Italic          =   False
      Left            =   124
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   "0"
      ScrollbarHorizontal=   False
      ScrollBarVertical=   False
      SelectionType   =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   13
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   292
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  dim d as new date
		  dim i as integer
		  
		  for i = 0 to 41
		    ReDim Days(i)
		    Days(i) = New Date
		  next
		  spnYear.Min = d.Year
		  spnYear.Max = d.Year + 1
		  spnYear.SetVal(d.Year)
		  
		  lstMonths.AddRow("January")
		  lstMonths.AddRow("February")
		  lstMonths.AddRow("March")
		  lstMonths.AddRow("April")
		  lstMonths.AddRow("May")
		  lstMonths.AddRow("June")
		  lstMonths.AddRow("July")
		  lstMonths.AddRow("August")
		  lstMonths.AddRow("September")
		  lstMonths.AddRow("October")
		  lstMonths.AddRow("November")
		  lstMonths.AddRow("December")
		  
		  lstMonths.ListIndex = d.Month-1
		  
		  if TargetMacOS then 
		    txtTime.Mask = ""
		    txtTime.Text = "10:00:00"
		  else
		    txtTime.Mask = "##:##:##"
		  end
		  
		  
		  SetMonthView(d.Year,d.Month)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SetMonthView(iYear as integer, iMonth As integer)
		  dim d as new date
		  dim i,StartDay,c as integer
		  dim r as integer
		  
		  d.Year = iYear
		  d.Month = iMonth
		  d.Day = 1
		  
		  
		  //Delete old Day Array
		  lstDayView.DeleteAllRows
		  lstCal.DeleteAllRows
		  for i = 0 to 5
		    lstCal.AddRow("")
		  next
		  
		  //Set Calendar
		  StartDay = d.DayOfWeek
		  for i = StartDay to 42
		    if i <= 7 then r = 0
		    if i > 7 then r = 1
		    if i > 14 then r = 2
		    if i > 21 then r = 3
		    if i > 28 then r = 4
		    if i > 35 then r = 5
		    
		    c = (i-r*7)-1
		    if d.Month = iMonth then
		      lstCal.Cell(r,c) = str(d.Day)
		      if EventListCal = nil then EventListCal = New Dictionary
		      if EventListCal.HasKey(d.ShortDate) then
		        lstCal.CellBold(r,c) = true
		      else
		        lstCal.CellBold(r,c) = false
		      end
		    else
		      
		    end
		    d.Day = d.Day+1
		  next
		  
		  cmdRepeat.Enabled = false
		  cmdAdd.Enabled = false
		  CurrentSelectedDate = nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRepeat(Params as string)
		  dim i,x as integer
		  dim res as string
		  dim d as new date
		  
		  for i = 0 to lstDayView.ListCount -1
		    if lstDayView.Selected(i) then 
		      lstDayView.Cell(i,2) = Params
		      res = lstDayView.Cell(i,1)
		      for x = 0 to frmMain.lstEvents.ListCount-1
		        if frmMain.lstEvents.Cell(x,2) = lstDayView.Cell(i,1) then 
		          frmMain.lstEvents.Cell(x,4) = Params
		          
		          res = frmMain.lstEvents.Cell(x,1)
		          d = strDateToDate(res)
		          res = Calendar.UpdateBaseEvent(frmMain.lstEvents.Cell(x,2),d,frmMain.lstEvents.Cell(x,4),frmMain.lstEvents.Cell(x,3))
		        end
		      next
		    end
		  next
		  
		  lstDayView.DeleteAllRows
		  SetMonthView(spnYear.GetVal,lstMonths.ListIndex+1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowCurrentDay()
		  dim param,tmp as string
		  dim i as integer
		  
		  //Events in Tagesliste zeigen
		  lstDayView.DeleteAllRows
		  if EventListCal = nil then EventListCal = New Dictionary
		  if BaseEvents = nil then BaseEvents = New Dictionary
		  
		  if EventListCal.HasKey(CurrentSelectedDate.ShortDate) then
		    param = EventListCal.Value(CurrentSelectedDate.ShortDate)
		    for i = 1 to CountFields(param,chr(2)) step 2
		      lstDayView.AddRow(NthField(param,chr(2),i+1))
		      lstDayView.Cell(lstDayView.ListCount-1,1) = NthField(param,chr(2),i)
		      //repeats von BaseVent Holen
		      tmp = BaseEvents.Value(NthField(param,chr(2),i))
		      tmp = NthField(tmp,chr(2),3)
		      lstDayView.Cell(lstDayView.ListCount-1,2) = tmp
		    next
		  end
		  
		  lstDayView.SortedColumn = 0
		  lstDayView.Sort
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CurrentSelectedDate As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		Days(-1) As Date
	#tag EndProperty


#tag EndWindowCode

#tag Events lstMonths
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  SetMonthView(spnYear.GetVal,row+1)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lstDayView
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  cmdRepeat.Enabled = true
		  cmdDelete.Enabled = true
		  cmdUpdate.Enabled = true
		  txtTime.Text = me.Cell(row,0)
		  txtEvent.Text = me.Cell(row,1)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtTime
	#tag Event
		Sub SelChange()
		  'me.Text = left(me.Text,me.SelStart)
		  '
		  'if Len(me.Text) = 7 then
		  'me.Text = me.Text + "0"
		  'me.SelStart = 7
		  'me.SelLength = 1
		  'end
		  'if Len(me.Text) = 6 then
		  'me.Text = left(me.Text,5) + ":"
		  'me.Text = me.Text + "00"
		  'me.SelStart = 6
		  'me.SelLength = 2
		  'end
		  'if Len(me.Text) = 5 then
		  'me.Text = me.Text + ":00"
		  'me.SelStart = 6
		  'me.SelLength = 2
		  'end
		  'if Len(me.Text) = 4 then
		  'me.Text = me.Text + "0:00"
		  'me.SelStart = 4
		  'me.SelLength = 4
		  'end
		  'if Len(me.Text) = 3 then
		  'me.Text = left(me.Text,2) + ":"
		  'me.Text = me.Text + "00:00"
		  'me.SelStart = 3
		  'me.SelLength = 5
		  'end
		  'if Len(me.Text) = 2 then
		  'me.Text = me.Text + ":00:00"
		  'me.SelStart = 3
		  'me.SelLength = 5
		  'end
		  'if Len(me.Text) = 1 then
		  'me.Text = me.Text + "0:00:00"
		  'me.SelStart = 1
		  'me.SelLength = 7
		  'end
		  'if Len(me.Text) = 0 then
		  'me.Text = me.Text + "00:00:00"
		  'me.SelStart = 0
		  'me.SelLength = 8
		  'end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if InStr("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_"+chr(8),key)  > 0 then
		    return false
		  else
		    return true
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cmdAdd
	#tag Event
		Sub Action()
		  dim i,r,c as integer
		  dim res as string
		  dim hh,mm,ss,tt as string
		  dim d as date
		  
		  if txtEvent.Text = "" then
		    MsgBox("An Event Name is required")
		    exit sub
		  end
		  
		  App.MouseCursor = System.Cursors.Wait
		  Globals.ProjectHasChanged(true)
		  
		  tt = txtTime.Text
		  hh = NthField(tt,":",1)
		  mm = NthField(tt,":",2)
		  ss = NthField(tt,":",3)
		  CurrentSelectedDate.Hour = val(hh)
		  CurrentSelectedDate.Minute = val(mm)
		  CurrentSelectedDate.Second = val(ss)
		  
		  res = Calendar.AddBaseEvent(txtEvent.Text,CurrentSelectedDate,"","")
		  if res <> "0" then
		    App.MouseCursor = System.Cursors.StandardPointer
		    MsgBox("There is an event with this name")
		    exit sub
		  end
		  
		  frmMain.lstEvents.AddRow("")
		  i = frmMain.lstEvents.ListCount-1
		  frmMain.lstEvents.Cell(i,0) = "Calendar"
		  frmMain.lstEvents.Cell(i,1) = CurrentSelectedDate.LongTime + " " + CurrentSelectedDate.ShortDate
		  frmMain.lstEvents.Cell(i,2) = txtEvent.Text
		  frmMain.lstEvents.Cell(i,4) = ""
		  //Datum zwischenspeichern da SetMonthView das CurrentSelectedDate loescht, welches von ShowCurrentDay benoetigt wird
		  d = CurrentSelectedDate
		  SetMonthView(CurrentSelectedDate.Year,CurrentSelectedDate.Month)
		  CurrentSelectedDate = d
		  ShowCurrentDay
		  
		  //Select the current Day in the Grid
		  for r = 0 to 5
		    for c = 0 to 7
		      if lstCal.cell(r,c) = str(CurrentSelectedDate.Day) then
		        lstCal.CellItalic(r,c) = true
		        cmdAdd.Enabled = true
		        lstDayView.Selected(0) = true
		      end
		    next
		  next
		  
		  App.MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdDelete
	#tag Event
		Sub Action()
		  
		  dim i,x as integer
		  
		  //Find Base Event
		  if lstDayView.ListIndex > -1 then
		    i = lstDayView.ListIndex
		    if BaseEvents.HasKey(txtEvent.Text) then
		      if i > -1 then
		        for x = 0 to frmMain.lstEvents.ListCount-1
		          if frmMain.lstEvents.Cell(x,2) = lstDayView.Cell(i,1) then
		            frmMain.lstEvents.RemoveRow(x)
		          end
		        next
		      end
		      Calendar.RemoveBaseEvent( lstDayView.Cell(i,1))
		      lstDayView.RemoveRow(i)
		      SetMonthView(spnYear.GetVal,lstMonths.ListIndex+1)
		      Globals.ProjectHasChanged(true)
		    else
		      MsgBox("Event not found")
		    end
		  else
		    MsgBox("No Event selected")
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdRepeat
	#tag Event
		Sub Action()
		  frmRepeatCalEvent.ShowModal
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdUpdate
	#tag Event
		Sub Action()
		  dim res,strDt as string
		  dim d as new date
		  dim i,x as integer
		  
		  //Find Base Event
		  if lstDayView.ListIndex > -1 then
		    if BaseEvents.HasKey(txtEvent.Text) then
		      res = BaseEvents.Value(txtEvent.Text)
		      strDt = txtTime.text + " " + NthField(res,chr(2),1)
		      d = strDateToDate(strDt)
		      res = Calendar.UpdateBaseEvent(txtEvent.Text,d,NthField(res,chr(2),3),NthField(res,chr(2),4))
		      i = lstDayView.ListIndex
		      if i > -1 then
		        for x = 0 to frmMain.lstEvents.ListCount-1
		          if frmMain.lstEvents.Cell(x,2) = lstDayView.Cell(i,1) then
		            frmMain.lstEvents.Cell(x,1) = strDt
		          end
		        next
		      end
		      ShowCurrentDay
		      Globals.ProjectHasChanged(true)
		    else
		      MsgBox("Event not found")
		    end
		  else
		    MsgBox("No Event selected")
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdClose
	#tag Event
		Sub Action()
		  frmCalendarEvent.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events spnYear
	#tag Event
		Sub Change()
		  SetMonthView(spnYear.GetVal,lstMonths.ListIndex+1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstCal
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return true
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim r,c as integer
		  dim d as new date
		  
		  if me.Cell(row,column) <> "" then
		    d.Year = spnYear.GetVal
		    d.Month = lstMonths.ListIndex+1
		    d.Day = val(me.Cell(row,column))
		    CurrentSelectedDate = d
		    cmdAdd.Enabled = true
		    cmdUpdate.Enabled = false
		    cmdDelete.Enabled = false
		    ShowCurrentDay
		    //Deselect all cells
		    for r = 0 to 5
		      for c = 0 to 6
		        me.CellItalic(r,c) = false
		      next
		    next
		    me.CellItalic(row,column) = true
		  end
		  
		  Return true
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if me.Listcount-1 >= row then
		    
		    if me.CellBold(row,column) = true then
		      g.ForeColor=RGB(180,180,255)
		      g.FillRect 0,0,g.width,g.height
		    end
		    if me.CellItalic(row,column) = true then
		      g.ForeColor=RGB(140,140,255)
		      g.FillRect 0,0,g.width,g.height
		    end
		    
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
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
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
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
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
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
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
