#tag Window
Begin Window frmTimerSelector
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
   Height          =   300
   ImplicitInstance=   True
   LiveResize      =   False
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
   Resizeable      =   False
   Title           =   "Select Timer Event"
   Visible         =   True
   Width           =   196
   Begin ListBox lstCuesets
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
      Height          =   262
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   0
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
      Top             =   0
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   196
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton cmdCancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   5
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   269
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton cmdAdd
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Add"
      Default         =   False
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   108
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
      Top             =   269
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
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
		  
		  dim i as integer
		  dim res,tmp as string
		  
		  lstCuesets.DeleteAllRows
		  
		  res = TimerEvents.GetAllTimerEvents
		  
		  for i = 1 to CountFields(res,chr(3))
		    tmp = NthField(res,chr(3),i)
		    tmp = NthField(tmp,chr(2),2)
		    lstCuesets.AddRow(tmp)
		  next
		  
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		#tag Note
			//wenn true dann Task in Cuelist ersetzen
		#tag EndNote
		EditMode As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			1 = DisableTimer 2 = Enable Timer
		#tag EndNote
		InsertFunction As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events lstCuesets
	#tag Event
		Sub DoubleClick()
		  cmdAdd.Push
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdCancel
	#tag Event
		Sub Action()
		  frmMain.cmdAddCmd.Caption = "Add Cmd"
		  frmTimerSelector.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdAdd
	#tag Event
		Sub Action()
		  dim SelCueset as string
		  dim i,Li as integer
		  dim clp as new Clipboard
		  
		  SelCueset = ""
		  for i = 0 to lstCuesets.ListCount-1
		    if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		  next
		  //check if Cueset is selected
		  if SelCueset = "" then
		    MsgBox("No cueset selected")
		    exit
		  end
		  
		  
		  if frmMain.tbProgram.Value = 0 then
		    
		    Li = frmMain.lstCues.ListIndex
		    if Li < 0 then Li = 0
		    if EditMode = true then frmMain.lstCues.RemoveRow(Li)
		    frmMain.lstCues.InsertRow(Li,"")
		    if InsertFunction = 1 then
		      frmMain.lstCues.Cell(Li,3) = "DisableTimerEvent"
		    end
		    if InsertFunction = 2 then
		      frmMain.lstCues.Cell(Li,3) = "EnableTimerEvent"
		    end
		    frmMain.lstCues.Cell(Li,4) = SelCueset
		    frmMain.UpdateCuelist(CurrentSelectedCueset)
		  end
		  
		  if frmMain.tbProgram.Value = 1 then
		    
		    if InsertFunction = 1 then
		      Clp.SetText "DisableTimerEvent("+""""+SelCueset+""""+")" +chr(13)
		    end
		    
		    if InsertFunction = 2 then
		      Clp.SetText "EnableTimerEvent("+""""+SelCueset+""""+")" +chr(13)
		    end
		    
		    frmMain.txtCuesetScript.ReadOnly = false
		    //Set the cursor to the beginning of the current line
		    frmMain.txtCuesetScript.PasteCommand
		    frmMain.txtCuesetScript.SetFocus
		    frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
		  end
		  
		  
		  if frmMain.tbProgram.Value = 2 then
		    
		    if InsertFunction = 1 then
		      Clp.SetText "DisableTimerEvent"+chr(10)+"("+""""+SelCueset+""""+")" 
		    end
		    
		    if InsertFunction = 2 then
		      Clp.SetText "EnableTimerEvent"+chr(10)+"("+""""+SelCueset+""""+")" 
		    end
		    frmMain.lstTimestrip.Cell(frmMain.currentSelectedTimestripRow,frmMain.currentSelectedTimestripColumn) = clp.Text
		    frmMain.UpdateTimestripScript
		  end
		  
		  
		  
		  
		  
		  
		  frmMain.cmdAddCmd.Caption = "Add Cmd"
		  frmTimerSelector.Close
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
		Name="EditMode"
		Group="Behavior"
		InitialValue="false"
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
		Name="InsertFunction"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
