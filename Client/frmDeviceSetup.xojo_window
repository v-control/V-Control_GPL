#tag Window
Begin Window frmDeviceSetup
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
   Height          =   334
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
   Title           =   "Device Setup"
   Visible         =   True
   Width           =   670
   Begin TextField txtType
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   128
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
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   37
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Label StaticText1
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
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   "0"
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Category:"
      TextAlign       =   0
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   128
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
      Text            =   "Type:"
      TextAlign       =   0
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin ListBox lstDeviceselection
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   4
      ColumnsResizable=   True
      ColumnWidths    =   "16%"
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
      Height          =   201
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Id	Category	Type	Manufacturer"
      Italic          =   False
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   "0"
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   1
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   79
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   287
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton cmdAddDevice
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Add Device"
      Default         =   False
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   "0"
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   299
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin TextField EditField1
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   216
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
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   37
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Label StaticText3
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
      Left            =   216
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   "0"
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Manufacturer:"
      TextAlign       =   0
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   98
   End
   Begin PopupMenu cmbCategory
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   10
      ListIndex       =   0
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
      Top             =   37
      Underline       =   False
      Visible         =   True
      Width           =   106
   End
   Begin ListBox lstProjectDevices
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   False
      ColumnWidths    =   "10%"
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
      Height          =   242
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Id	Device	Name"
      Italic          =   False
      Left            =   317
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   "0"
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   1
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   37
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   342
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton cmdDeleteDevice
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Delete Device"
      Default         =   False
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   317
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   "0"
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   299
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin PushButton cmdSaveDeviceList
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Save Devices"
      Default         =   False
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   539
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   "0"
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   299
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  Dim n as Integer
		  
		  if HasChanged = true then
		    n=MsgBox("Devicelist has changed, save ?",36)
		    If n=6 then
		      cmdSaveDeviceList.Push
		    end if
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  'Copyright (C) 2007-2013 Dierk Walter VMAN www.vman.cc
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
		  
		  dim res,s as string
		  dim i,c as integer
		  
		  //Get Category List
		  res = DevMan.db_GetCategoryList
		  cmbCategory.DeleteAllRows
		  
		  if CountFields(res,chr(2)) > 1 then
		    for i = 1 to CountFields(res,chr(2)) step 2
		      cmbCategory.AddRow(NthField(res,chr(2),i+1))
		    next
		  end
		  
		  //Get DeviceList
		  res = DevMan.GetDeviceList
		  for i = 1 to CountFields(res,chr(2))
		    s = DevMan.GetDevicePropertiesByName(NthField(res,chr(2),i))
		    if CountFields(s,chr(2)) = 18 then
		      lstProjectDevices.AddRow(NthField(s,chr(2),1))
		      lstProjectDevices.Cell(lstProjectDevices.ListCount-1,1) = NthField(s,chr(2),2)
		      lstProjectDevices.Cell(lstProjectDevices.ListCount-1,2) = NthField(s,chr(2),3)
		    end
		  next
		  
		  //Set Device Counter
		  for i = 0 to lstProjectDevices.ListCount-1
		    s = lstProjectDevices.Cell(i,2)
		    c = FindRightVal(s,10)
		    if c >= Counter then Counter = c+1
		  next
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Counter As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		HasChanged As boolean = false
	#tag EndProperty


#tag EndWindowCode

#tag Events txtType
	#tag Event
		Sub TextChange()
		  dim res,s as string
		  dim i as integer
		  
		  res = DevMan.db_GetDeviceListByName(me.Text)
		  
		  lstDeviceselection.DeleteAllRows
		  
		  if CountFields(res,chr(2)) > 2 then
		    for i = 1 to CountFields(res,chr(2)) step 4
		      lstDeviceselection.AddRow(NthField(res,chr(2),i))
		      s = NthField(res,chr(2),i+1)
		      s = DevMan.db_GetCategoryNameByID(val(s))
		      lstDeviceselection.Cell(lstDeviceselection.ListCount-1,1) = s
		      lstDeviceselection.Cell(lstDeviceselection.ListCount-1,2) = NthField(res,chr(2),i+2)
		      lstDeviceselection.Cell(lstDeviceselection.ListCount-1,3) = NthField(res,chr(2),i+3)
		    next
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstDeviceselection
	#tag Event
		Sub DoubleClick()
		  cmdAddDevice.Push
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddDevice
	#tag Event
		Sub Action()
		  dim i as integer
		  
		  for i = 0 to lstDeviceselection.ListCount -1
		    if lstDeviceselection.Selected(i) = true then
		      lstProjectDevices.AddRow(lstDeviceselection.Cell(i,0))
		      lstProjectDevices.Cell(lstProjectDevices.ListCount-1,1) = lstDeviceselection.Cell(i,2)
		      Counter = Counter + 1
		      lstProjectDevices.Cell(lstProjectDevices.ListCount-1,2) = lstDeviceselection.Cell(i,2) + "_" + str(Counter)
		      HasChanged = true
		    end
		  next
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditField1
	#tag Event
		Sub TextChange()
		  dim res,s as string
		  dim i as integer
		  
		  res = DevMan.db_GetDeviceListByManufactor(me.Text)
		  
		  lstDeviceselection.DeleteAllRows
		  
		  if CountFields(res,chr(2)) > 2 then
		    for i = 1 to CountFields(res,chr(2)) step 4
		      lstDeviceselection.AddRow(NthField(res,chr(2),i))
		      s = NthField(res,chr(2),i+1)
		      s = DevMan.db_GetCategoryNameByID(val(s))
		      lstDeviceselection.Cell(lstDeviceselection.ListCount-1,1) = s
		      lstDeviceselection.Cell(lstDeviceselection.ListCount-1,2) = NthField(res,chr(2),i+2)
		      lstDeviceselection.Cell(lstDeviceselection.ListCount-1,3) = NthField(res,chr(2),i+3)
		    next
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmbCategory
	#tag Event
		Sub Change()
		  dim res,s as string
		  dim i as integer
		  
		  res = DevMan.db_GetDeviceListByCategory(me.Text)
		  
		  lstDeviceselection.DeleteAllRows
		  
		  if CountFields(res,chr(2)) > 2 then
		    for i = 1 to CountFields(res,chr(2)) step 4
		      lstDeviceselection.AddRow(NthField(res,chr(2),i))
		      s = NthField(res,chr(2),i+1)
		      s = DevMan.db_GetCategoryNameByID(val(s))
		      lstDeviceselection.Cell(lstDeviceselection.ListCount-1,1) = s
		      lstDeviceselection.Cell(lstDeviceselection.ListCount-1,2) = NthField(res,chr(2),i+2)
		      lstDeviceselection.Cell(lstDeviceselection.ListCount-1,3) = NthField(res,chr(2),i+3)
		    next
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstProjectDevices
	#tag Event
		Sub DoubleClick()
		  cmdDeleteDevice.Push
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdDeleteDevice
	#tag Event
		Sub Action()
		  dim i as integer
		  
		  for i = lstProjectDevices.ListCount-1 DownTo 0
		    if lstProjectDevices.Selected(i) = true then
		       lstProjectDevices.RemoveRow(i)
		      HasChanged = true
		    end
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdSaveDeviceList
	#tag Event
		Sub Action()
		  dim s, sarray(-1),res as String
		  dim i,x,c as integer
		  dim RemoveDevice,AddDevice as boolean
		  
		  s = DevMan.GetDeviceList
		  sarray = split(s,chr(2))
		  //Check if a Device has to be removed
		  for i = 0 to UBound(sarray)
		    RemoveDevice = true
		    for x = 0 to lstProjectDevices.ListCount -1
		      if sarray(i) = lstProjectDevices.Cell(x,2) then RemoveDevice = False
		    next
		    if RemoveDevice = true then
		      res = DevMan.RemoveDevice(sarray(i))
		    end
		  next
		  
		  
		  //Check if a Device has to be added
		  for i = 0 to lstProjectDevices.ListCount -1
		    AddDevice = true
		    for x = 0 to UBound(sarray)
		      if lstProjectDevices.Cell(i,2) = sarray(x) then AddDevice = False
		    next
		    if AddDevice = true then
		      res = DevMan.LoadDeviceFromDB(lstProjectDevices.Cell(i,1))
		      if res <> "0" Then MsgBox(s)
		      c = DevMan.GetDeviceIdByName("")
		      if c = -1 then
		        MsgBox("Device not found")
		        exit
		      end
		      s = DevMan.SetDeviceName(c,lstProjectDevices.Cell(i,2))
		      if s <> "0" Then MsgBox(s)
		    end
		  next
		  
		  
		  s = DevMan.GetDeviceList
		  frmMain.lstDevices.DeleteAllRows
		  if s <> "" then
		    for i = 1 to CountFields(s,chr(2))
		      frmMain.lstDevices.AddRow(NthField(s,chr(2),i))
		    next
		  end
		  HasChanged = false
		  frmDeviceSetup.Close
		  frmMain.ClearDeviceGUI
		  frmMain.lstDevices.ListIndex = -1
		  frmMain.tbGuiStd.Enabled = false
		  Globals.ProjectHasChanged(true)
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
		Name="Counter"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="HasChanged"
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
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
