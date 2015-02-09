#tag Window
Begin Window frmScriptEditor
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
   Height          =   443
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Script Editor"
   Visible         =   True
   Width           =   577
   Begin SyntaxField txtScript
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   
      Bold            =   False
      Border          =   True
      ChangesSaved    =   False
      ColorKeywords   =   True
      ColorNumberStrings=   True
      ColorRemarks    =   True
      DataField       =   ""
      DataSource      =   ""
      DoColorSyntax   =   False
      Enabled         =   True
      Format          =   ""
      Height          =   365
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   "0"
      ScrollbarHorizontal=   True
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   577
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
      Left            =   6
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   "0"
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Line:"
      TextAlign       =   0
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   417
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   29
   End
   Begin Label lblCurrentLine
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
      Left            =   47
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   "0"
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   417
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   38
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
      Left            =   0
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
      Text            =   "Status"
      TextAlign       =   0
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   391
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   571
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
		  
		  txtScript.DoColorSyntax = Globals.ColorSyntax
		  txtScript.TextSize = Globals.EditorTextsize
		  txtScript.ColorKeywords = Globals.ColorKeywords
		  txtScript.ColorNumberStrings = Globals.ColorNumberString
		  txtScript.ColorRemarks = Globals.ColorRemarks
		  txtScript.TextFont = Globals.EditFont
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ShowError(Line as integer, ErrorNumber as integer, ErrorMsg as string)
		  Dim i as integer
		  
		  
		  //MsgBox("compile Error at Line:" + str(line) + " Error Number:" + str( ErrorNumber ))
		  beep
		  
		  txtScript.SelStart = txtScript.CharPosAtLineNum(line)
		  lblCurrentLine.Text = str( Line )
		  i = InStr( txtScript.CharPosAtLineNum(line),txtScript.Text, chr(13) )
		  txtScript.SelLength = i - txtScript.CharPosAtLineNum(line)
		  
		  select case ErrorNumber
		    
		  case 1  
		    lblStatus.Text = "Error: " + "Syntax does not make sense."
		    
		  case 2  
		    lblStatus.Text = "Error: " + "Type mismatch."
		    
		  case 3  
		    lblStatus.Text = "Error: " + "Select Case does not support that type of expression."
		    
		  case 4  
		    lblStatus.Text = "Error: " + "The compiler is not implemented (obsolete)."
		    
		  case 5  
		    lblStatus.Text = "Error: " + "The parser's internal stack has overflowed."
		    
		  case 6  
		    lblStatus.Text = "Error: " + "Too many parameters for this function."
		    
		  case 7  
		    lblStatus.Text = "Error: " + "Not enough parameters for this function call."
		    
		  case 8  
		    lblStatus.Text = "Error: " + "Wrong number of parameters for this function call."
		    
		  case 9  
		    lblStatus.Text = "Error: " + "Parameters are incompatible with this function."
		    
		  case 10 
		    lblStatus.Text = "Error: " + " Assignment of an incompatible data type."
		    
		  case 11  
		    lblStatus.Text = "Error: " + "Undefined identifier."
		    
		  case 12  
		    lblStatus.Text = "Error: " + "Undefined operator."
		    
		  case 13  
		    lblStatus.Text = "Error: " + "Logic operations require Boolean operands."
		    
		  case 14  
		    lblStatus.Text = "Error: " + "Array bounds must be integers."
		    
		  case 15  
		    lblStatus.Text = "Error: " + "Can't call a non-function."
		    
		  case 16  
		    lblStatus.Text = "Error: " + "Can't get an element from something that isn't an array."
		    
		  case 17  
		    lblStatus.Text = "Error: " + "Not enough subscripts for this array's dimensions."
		    
		  case 18  
		    lblStatus.Text = "Error: " + "Too many subscripts for this array's dimensions."
		    
		  case 19  
		    lblStatus.Text = "Error: " + "Can't assign an entire array."
		    
		  case 20  
		    lblStatus.Text = "Error: " + "Can't use an entire array in an expression."
		    
		  case 21  
		    lblStatus.Text = "Error: " + "Can't pass an expression as a ByRef parameter."
		    
		  case 22  
		    lblStatus.Text = "Error: " + "Duplicate identifier."
		    
		  case 23  
		    lblStatus.Text = "Error: " + "The backend code generator failed."
		    
		  case 24  
		    lblStatus.Text = "Error: " + "Ambiguous call to overloaded method."
		    
		  case 25  
		    lblStatus.Text = "Error: " + "Multiple inheritance is not allowed."
		    
		  case 26  
		    lblStatus.Text = "Error: " + "Cannot create an instance of an interface."
		    
		  case 27  
		    lblStatus.Text = "Error: " + "Cannot implement a class as though it were an interface."
		    
		  case 28  
		    lblStatus.Text = "Error: " + "Cannot inherit from something that is not a class."
		    
		  case 29  
		    lblStatus.Text = "Error: " + "This class does not fully implement the specified interface."
		    
		  case 30  
		    lblStatus.Text = "Error: " + "Event handlers cannot live outside of a class."
		    
		  case 31  
		    lblStatus.Text = "Error: " + "It is not legal to ignore the result of a function call."
		    
		  case 32  
		    lblStatus.Text = "Error: " + "Can't use 'Self' keyword outside of a class."
		    
		  case 33  
		    lblStatus.Text = "Error: " + "Can't use 'Me' keyword outside of a class."
		    
		  case 34  
		    lblStatus.Text = "Error: " + "Can't return a value from a Sub."
		    
		  case 35  
		    lblStatus.Text = "Error: " + "An exception object required here."
		    
		  case 40  
		    lblStatus.Text = "Error: " + "Destructors can't have parameters."
		    
		  case 41  
		    lblStatus.Text = "Error: " + "Can't use 'Super' keyword outside of a class."
		    
		  case 42  
		    lblStatus.Text = "Error: " + "Can't use 'Super' keyword in a class that has no parent."
		    
		  end select
		  lblStatus.Text = lblStatus.Text + " " + ErrorMsg
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events txtScript
	#tag Event
		Sub LineChange(LineNumber as integer)
		  lblCurrentLine.Text = str( LineNumber )
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
