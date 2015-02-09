#tag Window
Begin Window frmDeviceEditor
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
   Height          =   623
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   886831103
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   True
   Title           =   "Device Editor"
   Visible         =   True
   Width           =   831
   Begin TabPanel tbDevice
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   608
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   "0"
      SmallTabs       =   False
      TabDefinition   =   "Driver\r"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   819
      Begin PopupMenu cmbDevices
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         InitialValue    =   ""
         Italic          =   False
         Left            =   107
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   58
         Underline       =   False
         Visible         =   True
         Width           =   142
      End
      Begin TextField txtDriverName
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
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   107
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
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   85
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   142
      End
      Begin TextField txtDP1Name
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
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   471
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
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   34
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   110
      End
      Begin PopupMenu cmbDP1GUIType
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         InitialValue    =   ""
         Italic          =   False
         Left            =   471
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   59
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin TextField txtDP1MinMaxDef
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
         Enabled         =   False
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   471
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
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   84
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   110
      End
      Begin TextField txtDP1Default
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
         Enabled         =   False
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   471
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
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   110
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   110
      End
      Begin TextField txtDP1Mask
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
         Enabled         =   False
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   471
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
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   136
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   110
      End
      Begin TextField txtDP2Name
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
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   685
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
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   34
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   110
      End
      Begin PopupMenu cmbDP2GUIType
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         InitialValue    =   ""
         Italic          =   False
         Left            =   685
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   59
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin TextField txtDP2MinMaxDef
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
         Enabled         =   False
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   685
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
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   83
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   110
      End
      Begin TextField txtDP2Default
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
         Enabled         =   False
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   685
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
         TabIndex        =   10
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   109
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   110
      End
      Begin TextField txtDP2Mask
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
         Enabled         =   False
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   685
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
         TabIndex        =   11
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   135
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   110
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
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   11
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "ID:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   33
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   84
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
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   379
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "DP1 Default:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   110
         Transparent     =   False
         Underline       =   False
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
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   593
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "DP2 Default:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   109
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label StaticText4
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   379
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "DP1 Name:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   33
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label StaticText5
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   379
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   16
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "DP1 GUI:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   59
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label StaticText6
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   370
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   17
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "DP1 MinMax:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   84
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   89
      End
      Begin Label StaticText7
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   379
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   18
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "DP1 Mask:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   136
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label StaticText8
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   593
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   19
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "DP2 Name:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   33
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label StaticText9
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   593
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   20
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "DP2 GUI:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   58
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label StaticText10
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   585
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   21
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "DP2 MinMax:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   83
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   88
      End
      Begin Label StaticText11
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   593
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   22
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "DP2 Mask:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   135
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
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
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   416
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   23
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   165
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin PushButton cmdUpdateDevice
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Update Device"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   551
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   24
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   165
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin Label StaticText12
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   11
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   25
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Type:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   85
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   90
      End
      Begin Label StaticText13
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   11
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   26
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Category:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   135
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   90
      End
      Begin Label StaticText16
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   11
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   27
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Device:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   58
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   90
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
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   685
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   28
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   164
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin Label lblID
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   107
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   29
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "0"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   33
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   142
      End
      Begin Label StaticText46
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   15
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   30
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Device:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   47
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   61
      End
      Begin Label StaticText47
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   15
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   31
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Commport:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   124
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   61
      End
      Begin Label StaticText48
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   14
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   32
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Baudrate:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   156
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   62
      End
      Begin Label StaticText49
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   15
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   33
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Adresse:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   237
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   61
      End
      Begin Label StaticText50
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   15
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   34
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Port:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   269
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   61
      End
      Begin TextField txtIPAdress1
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
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   96
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
         TabIndex        =   35
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   237
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin TextField txtIPPort1
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
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   96
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
         TabIndex        =   36
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   269
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin TextField txtDeviceName
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
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   107
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
         TabIndex        =   37
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "MyDevice"
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   164
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   142
      End
      Begin PushButton cmdColorSyntax
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Color Syntax"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   38
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   574
         Underline       =   False
         Visible         =   False
         Width           =   139
      End
      Begin PushButton cmdCreateDeviceDatabase
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Create Device Database"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   567
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   39
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   574
         Underline       =   False
         Visible         =   False
         Width           =   186
      End
      Begin Label StaticText55
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   264
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   40
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Device GUI:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   33
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin PopupMenu cmbDeviceGUI
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         InitialValue    =   ""
         Italic          =   False
         Left            =   261
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   41
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   58
         Underline       =   False
         Visible         =   True
         Width           =   117
      End
      Begin Label StaticText56
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   11
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   42
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Manufacturer:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   110
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   90
      End
      Begin TabPanel tbCommands
         AutoDeactivate  =   True
         Bold            =   False
         Enabled         =   True
         Height          =   396
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Panels          =   ""
         Scope           =   "0"
         SmallTabs       =   False
         TabDefinition   =   "Comands\rSource\rHelptext"
         TabIndex        =   43
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   207
         Underline       =   False
         Value           =   0
         Visible         =   True
         Width           =   811
         Begin PushButton cmdToString
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "To ASCII"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   614
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   "0"
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   534
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin SyntaxField txtCMDScript
            AcceptTabs      =   True
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
            Height          =   134
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   191
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
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   457
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   221
         End
         Begin PushButton cmdRun
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Run"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   699
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   "0"
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   569
            Underline       =   False
            Visible         =   False
            Width           =   96
         End
         Begin Label StaticText57
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   185
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "TabID:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   322
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   83
         End
         Begin PopupMenu cmbChannel
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            InitialValue    =   ""
            Italic          =   False
            Left            =   614
            ListIndex       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   "0"
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   569
            Underline       =   False
            Visible         =   False
            Width           =   80
         End
         Begin Label StaticText58
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   506
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Use Channel:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   569
            Transparent     =   False
            Underline       =   False
            Visible         =   False
            Width           =   96
         End
         Begin TextField txtCmdName
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
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   280
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   272
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
         End
         Begin TextField txtPosition
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
            HelpTag         =   "ein Wert von 0 bedeutet dieser Befehl ist im User Interface nicht sichtbar"
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   280
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   297
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
         End
         Begin PopupMenu cmbAckCommand
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            InitialValue    =   ""
            Italic          =   False
            Left            =   280
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   8
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   348
            Underline       =   False
            Visible         =   True
            Width           =   132
         End
         Begin PopupMenu cmbNextCommand
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   "Folgebefehl falls notwendig"
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            InitialValue    =   ""
            Italic          =   False
            Left            =   280
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   9
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   373
            Underline       =   False
            Visible         =   True
            Width           =   132
         End
         Begin TextField txtTimeout
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
            HelpTag         =   "Timeout in ms"
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   280
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   10
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "0"
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   398
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   132
         End
         Begin TextField txtP1Name
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
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   506
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   11
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   239
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin PopupMenu cmbP1GUIType
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            InitialValue    =   ""
            Italic          =   False
            Left            =   506
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   12
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   264
            Underline       =   False
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP1MinMaxDef
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   506
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   13
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   289
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP1Default
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   506
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   14
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   315
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP1Mask
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   506
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   15
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   341
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP3Name
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
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   506
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   16
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   375
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin PopupMenu cmbP3GUIType
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            InitialValue    =   ""
            Italic          =   False
            Left            =   506
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   17
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   400
            Underline       =   False
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP3MinMaxDef
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   506
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   18
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   425
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP3Default
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   506
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   19
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   450
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP3Mask
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   506
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   20
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   474
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextArea txtAckString
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   True
            BackColor       =   
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   25
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   506
            LimitText       =   0
            LineHeight      =   0.0
            LineSpacing     =   1.0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   "0"
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   21
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   514
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtAckLen
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
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   506
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   22
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   537
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP2Name
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
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   699
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   23
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   239
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin PopupMenu cmbP2GUIType
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            InitialValue    =   ""
            Italic          =   False
            Left            =   699
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   24
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   264
            Underline       =   False
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP2MinMaxDef
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   699
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   25
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   289
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP2Default
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   699
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   26
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   315
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP2Mask
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   699
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   27
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   341
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP4Name
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
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   699
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   28
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   375
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin PopupMenu cmbP4GUIType
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            InitialValue    =   ""
            Italic          =   False
            Left            =   699
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   29
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   400
            Underline       =   False
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP4MinMaxDef
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   699
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   30
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   425
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP4Default
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   699
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   31
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   450
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin TextField txtP4Mask
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
            Enabled         =   False
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   699
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   32
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   474
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   96
         End
         Begin PushButton cmdCompileCommand
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Compile"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   699
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   "0"
            TabIndex        =   33
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   534
            Underline       =   False
            Visible         =   True
            Width           =   96
         End
         Begin Label StaticText17
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   414
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   34
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P1 Default:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   315
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText18
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   607
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   35
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P2 Default:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   315
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText19
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   414
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   36
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P3 Default:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   450
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText20
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   607
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   37
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P4 Default:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   450
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin ListBox lstCommands
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   2
            ColumnsResizable=   True
            ColumnWidths    =   "30%"
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
            Height          =   319
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            InitialValue    =   "Pos.	Name"
            Italic          =   False
            Left            =   10
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
            TabIndex        =   38
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   273
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   168
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin PushButton cmdAddCommand
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Add Cmd"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   10
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   39
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   239
            Underline       =   False
            Visible         =   True
            Width           =   110
         End
         Begin PushButton cmdDeleteCmd
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Delete Cmd"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   282
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   40
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   239
            Underline       =   False
            Visible         =   True
            Width           =   110
         End
         Begin Label StaticText21
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   191
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   41
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Script:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   429
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   70
         End
         Begin PushButton cmdEditCmdScript
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Edit..."
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   280
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   42
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   428
            Underline       =   False
            Visible         =   True
            Width           =   132
         End
         Begin Label StaticText22
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   414
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   43
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P1 Name:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   239
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText23
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   414
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   44
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P1 GUI:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   264
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText24
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   414
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   45
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P1 MinMax:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   289
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText25
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   414
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   46
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P1 Mask:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   341
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText26
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   414
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   47
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P3 Name:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   375
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText27
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   414
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   48
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P3 GUI:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   400
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText28
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   414
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   49
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P3 MinMax:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   425
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText29
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   414
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   50
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P3 Mask:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   474
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText30
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   607
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   51
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P2 Name:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   239
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText31
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   607
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   52
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P2 GUI:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   264
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText32
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   607
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   53
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P2 MinMax:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   289
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText33
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   607
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   54
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P2 Mask:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   341
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText34
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   607
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   55
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P4 Name:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   375
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText35
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   607
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   56
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P4 GUI:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   400
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText36
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   607
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   57
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P4 MinMax:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   425
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText37
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   607
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   58
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P4 Mask:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   474
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText38
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   191
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   59
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "ACK Cmd:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   348
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   77
         End
         Begin Label StaticText39
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   191
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   60
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Next Cmd:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   373
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   77
         End
         Begin PushButton cmdUpdateCmd
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Update Cmd"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   146
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   61
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   239
            Underline       =   False
            Visible         =   True
            Width           =   110
         End
         Begin Label StaticText40
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   185
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   62
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Timeout:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   398
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   83
         End
         Begin Label StaticText41
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   184
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   63
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Position:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   296
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   83
         End
         Begin Label StaticText42
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   185
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   64
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Name:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   272
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   83
         End
         Begin Label StaticText43
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   414
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   65
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "AcK in Hex:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   514
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Label StaticText59
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   414
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   66
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Ack Length:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   537
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin PushButton cmdConvertToHex
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "To Hex"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   614
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   "0"
            TabIndex        =   67
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   500
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin PopupMenu cmbTabID
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            InitialValue    =   ""
            Italic          =   False
            Left            =   279
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   68
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   322
            Underline       =   False
            Visible         =   True
            Width           =   133
         End
         Begin SyntaxField txtDeviceScript
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
            Height          =   353
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   11
            LimitText       =   0
            LineHeight      =   0.0
            LineSpacing     =   1.0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Multiline       =   True
            ReadOnly        =   True
            Scope           =   "0"
            ScrollbarHorizontal=   True
            ScrollbarVertical=   True
            Styled          =   True
            TabIndex        =   69
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   238
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   790
         End
         Begin TextArea txtDeviceHelptext
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   True
            BackColor       =   
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   353
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "tbCommands"
            Italic          =   False
            Left            =   11
            LimitText       =   0
            LineHeight      =   0.0
            LineSpacing     =   1.0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   "0"
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   70
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   238
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   790
         End
      End
      Begin PushButton cmdAddCategory
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Add Category"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   261
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   44
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   136
         Underline       =   False
         Visible         =   True
         Width           =   117
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
         InitialParent   =   "tbDevice"
         InitialValue    =   ""
         Italic          =   False
         Left            =   107
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   45
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   136
         Underline       =   False
         Visible         =   True
         Width           =   142
      End
      Begin TextField txtManufactor
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
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   107
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
         TabIndex        =   46
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   110
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   142
      End
      Begin Label StaticText67
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
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
         TabIndex        =   47
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Name:"
         TextAlign       =   2
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   164
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   81
      End
      Begin CheckBox chkAllowChangeCategory
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Change Category"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbDevice"
         Italic          =   False
         Left            =   264
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         State           =   0
         TabIndex        =   48
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   167
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   148
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  dim res as string
		  dim i as integer
		  
		  res = DevMan.RemoveDevice("MyDevice")
		  
		  //Update frmMain Device list if project devices have changed
		  if db_Mode = false then
		    res = DevMan.GetDeviceList
		    frmMain.lstDevices.DeleteAllRows
		    if res <> "" then
		      for i = 1 to CountFields(res,chr(2))
		        frmMain.lstDevices.AddRow(NthField(res,chr(2),i))
		      next
		    end
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
		  
		  Dim res,str as string
		  dim i as integer
		  
		  if db_Mode = true then
		    res = DevMan.db_GetDeviceList
		    cmdAddDevice.Enabled = true
		    cmdDeleteDevice.Enabled = true
		    cmdAddCategory.Enabled = true
		    cmbCategory.Enabled = true
		    txtDriverName.Enabled = true
		    txtManufactor.Enabled = true
		    cmbDeviceGUI.Enabled = true
		    txtDeviceName.Enabled = false
		    mnuFileImport.AutoEnable = true
		  else
		    res = DevMan.GetDeviceList
		    cmdAddDevice.Enabled = false
		    cmdDeleteDevice.Enabled = false
		    cmdAddCategory.Enabled = false
		    cmbCategory.Enabled = false
		    txtDriverName.Enabled = false
		    txtManufactor.Enabled = false
		    cmbDeviceGUI.Enabled = false
		    txtDeviceName.Enabled = true
		    mnuFileImport.AutoEnable = False
		  end
		  
		  cmbTabID.DeleteAllRows
		  cmbTabID.AddRow("")
		  cmbTabID.AddRow("Commands")
		  cmbTabID.AddRow("Events")
		  
		  cmbDevices.DeleteAllRows
		  cmbDevices.AddRow("")
		  for i = 1 to CountFields(res,chr(2))
		    cmbDevices.AddRow(NthField(res,chr(2),i))
		  next
		  
		  //GUI Types
		  cmbDP1GUIType.AddRow("Text")
		  cmbDP1GUIType.AddRow("Spin Button")
		  cmbDP1GUIType.AddRow("Drop Down")
		  cmbDP2GUIType.AddRow("Text")
		  cmbDP2GUIType.AddRow("Spin Button")
		  cmbDP2GUIType.AddRow("Drop Down")
		  
		  cmbP1GUIType.AddRow("Text")
		  cmbP1GUIType.AddRow("Spin Button")
		  cmbP1GUIType.AddRow("Drop Down")
		  cmbP2GUIType.AddRow("Text")
		  cmbP2GUIType.AddRow("Spin Button")
		  cmbP2GUIType.AddRow("Drop Down")
		  cmbP3GUIType.AddRow("Text")
		  cmbP3GUIType.AddRow("Spin Button")
		  cmbP3GUIType.AddRow("Drop Down")
		  cmbP4GUIType.AddRow("Text")
		  cmbP4GUIType.AddRow("Spin Button")
		  cmbP4GUIType.AddRow("Drop Down")
		  
		  cmbDeviceGUI.DeleteAllRows
		  cmbDeviceGUI.AddRow("Standard")
		  cmbDeviceGUI.ListIndex = 0
		  
		  //Fill cmbCategory
		  res = DevMan.db_GetCategoryList
		  cmbCategory.DeleteAllRows
		  if CountFields(res,chr(2)) > 1 then
		    for i = 1 to CountFields(res,chr(2)) step 2
		      cmbCategory.AddRow(NthField(res,chr(2),i+1))
		      cmbCategory.RowTag(cmbCategory.ListCount-1) = NthField(res,chr(2),i)
		    next
		  end
		  
		  //Get channel list
		  str = IOMan.GetChannels
		  if str = "Timeout" then
		    MsgBox("Timeout Error: VNode not responding!")
		    exit
		  end
		  cmbChannel.DeleteAllRows
		  for i = 1 to CountFields(str,chr(2)) step 3
		    cmbChannel.AddRow(NthField(str,chr(2),i))
		  next
		  
		  txtCMDScript.DoColorSyntax = Globals.ColorSyntax
		  txtCMDScript.TextSize = Globals.EditorTextsize
		  txtCMDScript.ColorKeywords = Globals.ColorKeywords
		  txtCMDScript.ColorNumberStrings = Globals.ColorNumberString
		  txtCMDScript.ColorRemarks = Globals.ColorRemarks
		  txtCMDScript.TextFont = Globals.EditFont
		  
		  txtDeviceScript.DoColorSyntax = Globals.ColorSyntax
		  txtDeviceScript.TextSize = Globals.EditorTextsize
		  txtDeviceScript.ColorKeywords = Globals.ColorKeywords
		  txtDeviceScript.ColorNumberStrings = Globals.ColorNumberString
		  txtDeviceScript.ColorRemarks = Globals.ColorRemarks
		  txtDeviceScript.TextFont = Globals.EditFont
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function mnuExportDeviceList() As Boolean Handles mnuExportDeviceList.Action
			ExportDeviceList
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuFileExport() As Boolean Handles mnuFileExport.Action
			dim sfile as string
			dim f as FolderItem
			Dim VC3_FileType as New FileType
			dim res as string
			
			VC3_FileType.Name = "DeviceDriver/V-Control"
			VC3_FileType.MacType = "DR3"
			VC3_FileType.Extensions = "dr3;dr3"
			
			
			f = GetSaveFolderItem(VC3_FileType,"")
			
			if f <> nil then
			sfile = f.AbsolutePath
			if Right(sfile,4) <> ".dr3" then sfile = sfile + ".dr3"
			App.MouseCursor = System.Cursors.Wait
			res = DevMan.ExportDevice(sfile,txtDeviceName.Text)
			
			App.MouseCursor = System.Cursors.StandardPointer
			
			if res <> "0" then
			MsgBox("Could not create Driver File, Error " + res)
			end
			end
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuFileImport() As Boolean Handles mnuFileImport.Action
			dim f as FolderItem
			Dim VC3_FileType as New FileType
			dim res as string
			dim ti as new TInputWindow
			dim i as integer
			
			VC3_FileType.Name = "DeviceDriver/V-Control"
			VC3_FileType.MacType = "DR3"
			VC3_FileType.Extensions = "dr3;dr3"
			
			ti.lblMsg.Text = "Enter a Drivername for the new Device"
			ti.ShowModal
			if ti.CancelPrtessed = false then
			res = ti.StringResult
			i = DevMan.db_GetDeviceIdByName(res)
			if i >= 0 then
			MsgBox("Drivername exists")
			else
			
			
			f = GetOpenFolderItem(VC3_FileType)
			if f <> nil then 
			res = DevMan.ImportDevice(f.AbsolutePath,res)
			if res <> "0" then MsgBox("Cold not import File, Error: " + res)
			end
			end
			end
			
			
			res = DevMan.db_GetDeviceList
			
			cmbDevices.DeleteAllRows
			cmbDevices.AddRow("")
			for i = 1 to CountFields(res,chr(2))
			cmbDevices.AddRow(NthField(res,chr(2),i))
			next
			cmbDevices.ListIndex = 1
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuFileVacuum() As Boolean Handles mnuFileVacuum.Action
			DevMan.VacuumDeviceTemplates
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ClearCommandProperties()
		  txtCmdName.Text = ""
		  txtPosition.Text = ""
		  txtCmdScript.Text = ""
		  cmbTabID.ListIndex = 1
		  txtTimeout.Text = "0"
		  cmbNextCommand.ListIndex = 0
		  cmbAckCommand.ListIndex = 0
		  
		  txtP1Name.Text = ""
		  cmbP1GUIType.ListIndex = 0
		  txtP1Mask.Text = ""
		  txtP1MinMaxDef.Text = ""
		  txtP1Default.Text = ""
		  
		  txtP2Name.Text = ""
		  cmbP2GUIType.ListIndex = 0
		  txtP2Mask.Text = ""
		  txtP2MinMaxDef.Text = ""
		  txtP2Default.Text = ""
		  
		  txtP3Name.Text = ""
		  cmbP3GUIType.ListIndex = 0
		  txtP3Mask.Text = ""
		  txtP3MinMaxDef.Text = ""
		  txtP3Default.Text = ""
		  
		  txtP4Name.Text = ""
		  cmbP4GUIType.ListIndex = 0
		  txtP4Mask.Text = ""
		  txtP4MinMaxDef.Text = ""
		  txtP4Default.Text = ""
		  
		  cmbAckCommand.ListIndex = 0
		  cmbNextCommand.ListIndex = 0
		  txtAckLen.Text = ""
		  txtAckString.Text = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearDeviceProperties()
		  txtDriverName.Text = ""
		  txtManufactor.Text = ""
		  txtDeviceHelptext.Text = ""
		  txtDeviceScript.Text = ""
		  txtDP1Default.Text = ""
		  txtDP1Mask.Text = ""
		  txtDP1MinMaxDef.Text = ""
		  txtDP1Name.Text = ""
		  cmbDP1GUIType.ListIndex = 0
		  txtDP2Default.Text = ""
		  txtDP2Mask.Text = ""
		  txtDP2MinMaxDef.Text = ""
		  txtDP2Name.Text = ""
		  cmbDP2GUIType.ListIndex = 0
		  lstCommands.DeleteAllRows
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableCmdFields()
		  txtP1MinMaxDef.Enabled = false
		  txtP1Default.Enabled = false
		  txtP1Mask.Enabled = false
		  
		  txtP2MinMaxDef.Enabled = false
		  txtP2Default.Enabled = false
		  txtP2Mask.Enabled = false
		  
		  txtP3MinMaxDef.Enabled = false
		  txtP3Default.Enabled = false
		  txtP3Mask.Enabled = false
		  
		  txtP4MinMaxDef.Enabled = false
		  txtP4Default.Enabled = false
		  txtP4Mask.Enabled = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableDeviceFields()
		  txtDP1MinMaxDef.Enabled = false
		  txtDP1Default.Enabled = false
		  txtDP1Mask.Enabled = false
		  
		  txtDP2MinMaxDef.Enabled = false
		  txtDP2Default.Enabled = false
		  txtDP2Mask.Enabled = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExportDeviceList()
		  dim f as FolderItem
		  dim s,sc as String
		  dim res as string
		  dim i,x,idx as integer
		  Dim iniStream as TextOutputStream
		  
		  idx = cmbCategory.ListIndex
		  BlockcmbCategory = True
		  f = GetSaveFolderItem("",SpecialFolder.ApplicationData.AbsolutePath)
		  if f <> nil then
		    //In inifile schreiben
		    iniStream=TextOutputStream.Create(f)
		    //Tabellenueberschriften
		    iniStream.WriteLine "Category" + chr(9) + "Manufacturer" + chr(9) + "Device Name"
		    for i = 0 to cmbCategory.ListCount-1
		      cmbCategory.ListIndex = i
		      sc = cmbCategory.Text
		      'iniStream.WriteLine s
		      res = DevMan.db_GetDeviceListByCategory(sc)
		      //Leerzeile
		      's = " "
		      'iniStream.WriteLine s
		      s = ""
		      for x = 1 to CountFields(res,chr(2)) step 4
		        s =sc + chr(9) + NthField(res,chr(2),x+3) + chr(9) + NthField(res,chr(2),x+2) 
		        iniStream.WriteLine s
		      next
		      //Leerzeile
		      's = " "
		      'iniStream.WriteLine s
		    next
		    
		    iniStream.Close
		  end
		  
		  if idx > -1 then cmbCategory.ListIndex = idx
		  BlockcmbCategory = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadDevice()
		  dim s as String
		  dim i as integer
		  
		  
		  if db_Mode = true then
		    s = DevMan.RemoveDevice(txtDeviceName.Text)
		    s = DevMan.LoadDeviceFromDB(cmbDevices.Text)
		    
		    if s <> "0" Then MsgBox(s)
		    i = DevMan.GetDeviceIdByName("")
		    if i = -1 then
		      MsgBox("Device not found")
		      exit
		    end
		    
		    s = DevMan.SetDeviceName(i,txtDeviceName.Text)
		    if s <> "0" Then MsgBox(s)
		  end
		  
		  Update_lstCommandsEvents
		  UpdateAckNextCommand
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateAckNextCommand()
		  dim res as string
		  dim i as integer
		  
		  cmbAckCommand.DeleteAllRows
		  cmbNextCommand.DeleteAllRows
		  
		  cmbAckCommand.AddRow("")
		  cmbNextCommand.AddRow("")
		  
		  if db_Mode = true then
		    res = DevMan.db_GetCommandList(cmbDevices.Text)
		  else
		    res = DevMan.GetCommandList(txtDeviceName.Text)
		  end
		  
		  for i = 1 to CountFields(res,chr(2)) Step 3
		    cmbAckCommand.AddRow(NthField(res,chr(2),i+1))
		    cmbNextCommand.AddRow(NthField(res,chr(2),i+1))
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateCommand(CmdName as string)
		  dim res,s as string
		  dim i as Integer
		  
		  if db_Mode = true then
		    res = DevMan.db_GetCommandPropertiesByName(cmbDevices.Text,CmdName)
		  else
		    res = DevMan.GetCommandProperties(cmbDevices.Text,CmdName)
		  end
		  
		  if CountFields(res,chr(2)) < 29 then
		    MsgBox(res)
		    exit
		  else
		    DisableCmdFields
		    txtCmdName.Text = NthField(res,chr(2),1)
		    txtPosition.Text = NthField(res,chr(2),2)
		    txtCmdScript.Text = NthField(res,chr(2),3)
		    txtCmdScript.ColorSyntax(txtCmdScript.Text,0)
		    txtCMDScript.SelStart = 0
		    txtCMDScript.SelLength = len(txtCMDScript.Text)
		    txtCMDScript.Refresh
		    txtCMDScript.SelLength = 0
		    
		    for i = 0 to cmbTabID.ListCount-1
		      cmbTabID.ListIndex = i
		      if cmbTabID.Text = NthField(res,chr(2),4) then exit
		    next
		    
		    txtP1Name.Text = NthField(res,chr(2),5)
		    cmbP1GUIType.ListIndex = val(NthField(res,chr(2),6))
		    txtP1MinMaxDef.Text  = NthField(res,chr(2),7)
		    txtP1Mask.Text = NthField(res,chr(2),8)
		    txtP1Default.Text = NthField(res,chr(2),9)
		    
		    txtP2Name.Text = NthField(res,chr(2),10)
		    cmbP2GUIType.ListIndex = val(NthField(res,chr(2),11))
		    txtP2MinMaxDef.Text  = NthField(res,chr(2),12)
		    txtP2Mask.Text = NthField(res,chr(2),13)
		    txtP2Default.Text = NthField(res,chr(2),14)
		    
		    txtP3Name.Text = NthField(res,chr(2),15)
		    cmbP3GUIType.ListIndex = val(NthField(res,chr(2),16))
		    txtP3MinMaxDef.Text  = NthField(res,chr(2),17)
		    txtP3Mask.Text = NthField(res,chr(2),18)
		    txtP3Default.Text = NthField(res,chr(2),19)
		    
		    txtP4Name.Text = NthField(res,chr(2),20)
		    cmbP4GUIType.ListIndex = val(NthField(res,chr(2),21))
		    txtP4MinMaxDef.Text  = NthField(res,chr(2),22)
		    txtP4Mask.Text = NthField(res,chr(2),23)
		    txtP4Default.Text = NthField(res,chr(2),24)
		    
		    txtTimeout.Text = NthField(res,chr(2),25)
		    
		    
		    //Find the index of the Ack Command
		    s = NthField(res,chr(2),26)
		    for i = 0 to cmbAckCommand.ListCount -1
		      cmbAckCommand.ListIndex = i
		      if cmbAckCommand.Text = s then
		        exit
		      else
		        cmbAckCommand.ListIndex = 0
		      end
		    next
		    
		    //Find the index of the Next Command
		    s = NthField(res,chr(2),27)
		    for i = 0 to cmbNextCommand.ListCount -1
		      cmbNextCommand.ListIndex = i
		      if cmbNextCommand.Text = s then
		        exit
		      else
		        cmbNextCommand.ListIndex = 0
		      end
		    next
		    txtAckString.Text = NthField(res,chr(2),28)
		    txtAckLen.Text = NthField(res,chr(2),29)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_cmbDevices()
		  dim res as string
		  dim i as integer
		  
		  cmbDevices.DeleteAllRows
		  
		  if db_Mode = true then
		    res = DevMan.db_GetDeviceList
		  else
		    res = DevMan.GetDeviceList
		  end
		  
		  for i = 1 to CountFields(res,chr(2))
		    cmbDevices.AddRow(NthField(res,chr(2),i))
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_lstCommandsEvents()
		  dim res,spos as string
		  dim i as integer
		  
		  lstCommands.DeleteAllRows
		  
		  
		  if db_Mode = true then
		    res = DevMan.db_GetCommandList(cmbDevices.Text)
		  else
		    res = DevMan.GetCommandList(txtDeviceName.Text)
		  end
		  if CountFields(res,chr(2)) >1 then
		    for i = 1 to CountFields(res,chr(2)) Step 3
		      spos = NthField(res,chr(2),i)
		      if len(spos) < 2 then spos = "0" + spos
		      if len(spos) < 3 then spos = "0" + spos
		      lstCommands.AddRow(spos)
		      lstCommands.Cell(lstCommands.ListCount-1,1) = NthField(res,chr(2),i+1)
		    next
		  end
		  
		  if db_Mode = true then
		    res = DevMan.db_GetEventList(cmbDevices.Text)
		  else
		    res = DevMan.GetEventList(txtDeviceName.Text)
		  end
		  if CountFields(res,chr(2)) >1 then
		    for i = 1 to CountFields(res,chr(2)) Step 3
		      spos = NthField(res,chr(2),i)
		      if len(spos) < 2 then spos = "0" + spos
		      if len(spos) < 3 then spos = "0" + spos
		      lstCommands.AddRow(spos)
		      lstCommands.Cell(lstCommands.ListCount-1,1) = NthField(res,chr(2),i+1)
		    next
		  end
		  //Sort Commandlist
		  lstCommands.ColumnSortDirection(0) = Listbox.SortAscending
		  lstCommands.SortedColumn = 0
		  lstCommands.Sort
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BlockcmbCategory As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Counter As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events cmbDevices
	#tag Event
		Sub Change()
		  
		  dim s as string
		  dim i,x as integer
		  
		  ClearDeviceProperties
		  ClearCommandProperties
		  
		  //ID+chr(2)+Name+chr(2)+DeviceName+chr(2)+Category+chr(2)+Helptext+chr(2)+Script+chr(2)+DP1Name+chr(2)+DP1GUIType+chr(2)+DP1MinMaxDef+chr(2)+DP1Default+chr(2)+DP1Mask+chr(2)
		  //+DP2Name+chr(2)+DP2GUIType+chr(2)+DP2MinMaxDef+chr(2)+DP2Default+chr(2)+DP2Mask+chr(2)+Manufactor+chr(2)+DeviceGUI
		  if db_Mode = true then
		    s = DevMan.db_GetDevicePropertiesByName(cmbDevices.Text)
		  else
		    s = DevMan.GetDevicePropertiesByName(cmbDevices.Text)
		  end
		  
		  if CountFields(s,chr(2)) < 18 then
		    MsgBox("- Invalid Result" + chr(13) + s)
		  else
		    DisableDeviceFields
		    lblID.Text = NthField(s,chr(2),1)
		    txtDriverName.Text = NthField(s,chr(2),2)
		    if db_Mode = true then
		      txtDeviceName.Text = "MyDevice"
		    else
		      txtDeviceName.Text = NthField(s,chr(2),3)
		    end
		    
		    i =  val(NthField(s,chr(2),4))
		    for x = 0 to cmbCategory.ListCount-1
		      if cmbCategory.RowTag(x) = i then 
		        BlockcmbCategory = true
		        cmbCategory.ListIndex = x
		        BlockcmbCategory = false
		      end
		    next
		    
		    txtDeviceHelptext.Text = NthField(s,chr(2),5)
		    
		    txtDeviceScript.Text = NthField(s,chr(2),6)
		    txtDeviceScript.ColorSyntax(txtDeviceScript.Text,0)
		    
		    txtDP1Name.Text = NthField(s,chr(2),7)
		    cmbDP1GUIType.ListIndex = val(NthField(s,chr(2),8))
		    txtDP1MinMaxDef.Text = NthField(s,chr(2),9)
		    txtDP1Default.Text = NthField(s,chr(2),10)
		    txtDP1Mask.text = NthField(s,chr(2),11)
		    
		    txtDP2Name.Text = NthField(s,chr(2),12)
		    cmbDP2GUIType.ListIndex = val(NthField(s,chr(2),13))
		    txtDP2MinMaxDef.Text = NthField(s,chr(2),14)
		    txtDP2Default.Text = NthField(s,chr(2),15)
		    txtDP2Mask.Text = NthField(s,chr(2),16)
		    if val( NthField(s,chr(2),18)) <= cmbDeviceGUI.ListCount-1 then cmbDeviceGUI.ListIndex = val( NthField(s,chr(2),18))
		    txtManufactor.text = NthField(s,chr(2),17)
		    LoadDevice
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtDriverName
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  if InStr("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_ /\"+chr(8)+chr(28)+chr(29),key)  > 0 then
		    return false
		  else
		    return true
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cmbDP1GUIType
	#tag Event
		Sub Change()
		  txtDP1MinMaxDef.Enabled = false
		  txtDP1Default.Enabled = false
		  txtDP1Mask.Enabled = false
		  
		  txtDP1MinMaxDef.Text = ""
		  txtDP1Default.Text = ""
		  txtDP1Mask.Text = ""
		  
		  if me.text = "Text" then
		    txtDP1Mask.Enabled = true
		    txtDP1Default.Enabled = true
		  else
		    if (me.Text = "Spin Button") or (me.Text = "Drop Down") then
		      txtDP1MinMaxDef.Enabled = true
		      txtDP1Default.Enabled = true
		    end
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmbDP2GUIType
	#tag Event
		Sub Change()
		  txtDP2MinMaxDef.Enabled = false
		  txtDP2Default.Enabled = false
		  txtDP2Mask.Enabled = false
		  
		  txtDP2MinMaxDef.Text = ""
		  txtDP2Default.Text = ""
		  txtDP2Mask.Text = ""
		  
		  if me.text = "Text" then
		    txtDP2Mask.Enabled = true
		    txtDP2Default.Enabled = true
		  else
		    if (me.Text = "Spin Button") or (me.Text = "Drop Down") then
		      txtDP2MinMaxDef.Enabled = true
		      txtDP2Default.Enabled = true
		    end
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddDevice
	#tag Event
		Sub Action()
		  dim res,s as string
		  
		  if cmbCategory.ListIndex < 0 then
		    MsgBox("Select a category")
		    exit
		  end
		  if txtDriverName.Text = "" then
		    MsgBox("Enter a Device Type")
		    exit
		  end
		  
		  if (txtDriverName.Text = "Calendar") or (txtDeviceName.Text = "Calendar") then
		    MsgBox("Calendar is a reserved name")
		    exit
		  end
		  
		  if (txtDriverName.Text = "Timer") or (txtDeviceName.Text = "Timer") then
		    MsgBox("Timer is a reserved name")
		    exit
		  end
		  
		  //Create new Record
		  s = txtDriverName.Text + chr(2) +  str(cmbCategory.RowTag(cmbCategory.ListIndex)) + chr(2) + txtDeviceHelptext.Text + chr(2) + txtDeviceScript.Text + chr(2)
		  s = s + txtDP1Name.Text + chr(2) + str(cmbDP1GUIType.ListIndex) + chr(2) + txtDP1MinMaxDef.Text + chr(2) + txtDP1Default.Text + chr(2) + txtDP1Mask.Text+chr(2)
		  s = s + txtDP2Name.Text + chr(2) + str(cmbDP2GUIType.ListIndex) + chr(2) + txtDP2MinMaxDef.Text + chr(2) + txtDP2Default.Text + chr(2) + txtDP2Mask.Text+chr(2)+str(cmbDeviceGUI.ListIndex)+chr(2)+txtManufactor.Text
		  res = DevMan.db_CreateDevice(s)
		  if res <> "0" then
		    MsgBox(res)
		    exit
		  end
		  
		  Update_cmbDevices
		  
		  cmbDevices.ListIndex = cmbDevices.ListCount -1
		  
		  //Reload the Device
		  LoadDevice
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdUpdateDevice
	#tag Event
		Sub Action()
		  dim res,s, OldName,NewName as string
		  dim i as integer
		  
		  if (txtDriverName.Text = "Calendar") or (txtDeviceName.Text = "Calendar") then
		    MsgBox("Calendar is a reserved name")
		    exit
		  end
		  
		  if (txtDriverName.Text = "Timer") or (txtDeviceName.Text = "Timer") then
		    MsgBox("Timer is a reserved name")
		    exit
		  end
		  
		  if (txtDriverName.Text = "TCPRemote") or (txtDeviceName.Text = "TCPRemote") then
		    MsgBox("TCPRemote is a reserved name")
		    exit
		  end
		  if (txtDriverName.Text = "UDPRemote") or (txtDeviceName.Text = "UDPRemote") then
		    MsgBox("UDPRemote is a reserved name")
		    exit
		  end
		  if (txtDriverName.Text = "RS232Remote") or (txtDeviceName.Text = "RS232Remote") then
		    MsgBox("RS232Remote is a reserved name")
		    exit
		  end
		  if (txtDriverName.Text = "HTTPRemote") or (txtDeviceName.Text = "HTTPRemote") then
		    MsgBox("HTTPRemote is a reserved name")
		    exit
		  end
		  
		  
		  if db_Mode = true then
		    //Update current Record
		    s = cmbDevices.Text + chr(2) + txtDriverName.Text + chr(2) + str(cmbCategory.ListIndex+1) + chr(2) + txtDeviceHelptext.Text + chr(2) + txtDeviceScript.Text+chr(2)
		    s = s + txtDP1Name.Text + chr(2) + str(cmbDP1GUIType.ListIndex) + chr(2) + txtDP1MinMaxDef.Text + chr(2) + txtDP1Default.Text + chr(2) + txtDP1Mask.Text+chr(2)
		    s = s + txtDP2Name.Text + chr(2) + str(cmbDP2GUIType.ListIndex) + chr(2) + txtDP2MinMaxDef.Text + chr(2) + txtDP2Default.Text + chr(2) + txtDP2Mask.Text+chr(2)+str(cmbDeviceGUI.ListIndex)+chr(2)+txtManufactor.Text
		    
		    res = DevMan.db_UpdateDevice(s)
		  else
		    //Update current Record
		    OldName = cmbDevices.Text
		    NewName = txtDeviceName.Text
		    
		    if OldName <> NewName then
		      i = ScrMan.ChangeDeviceNameInScripts(OldName,NewName)
		      frmMain.UpdateCuelistGrid
		      if i >= 0 then
		        s = cmbDevices.Text + chr(2) + txtDeviceName.Text + chr(2) + str(cmbCategory.ListIndex+1) + chr(2) + txtDeviceHelptext.Text + chr(2) + txtDeviceScript.Text+chr(2)
		        s = s + txtDP1Name.Text + chr(2) + str(cmbDP1GUIType.ListIndex) + chr(2) + txtDP1MinMaxDef.Text + chr(2) + txtDP1Default.Text + chr(2) + txtDP1Mask.Text+chr(2)
		        s = s + txtDP2Name.Text + chr(2) + str(cmbDP2GUIType.ListIndex) + chr(2) + txtDP2MinMaxDef.Text + chr(2) + txtDP2Default.Text + chr(2) + txtDP2Mask.Text+chr(2)+str(cmbDeviceGUI.ListIndex)+chr(2)+txtManufactor.Text
		        
		        res = DevMan.UpdateDevice(s)
		        if i > 0 then MsgBox(str(i) + " Cues have been changed")
		        frmMain.lstCuesets.ListIndex = -1
		        frmMain.txtCuesetScript.Enabled = false
		      else
		        MsgBox("This operation is not possible while a cueset is running")
		      end
		    else
		      s = cmbDevices.Text + chr(2) + txtDeviceName.Text + chr(2) + str(cmbCategory.ListIndex+1) + chr(2) + txtDeviceHelptext.Text + chr(2) + txtDeviceScript.Text+chr(2)
		      s = s + txtDP1Name.Text + chr(2) + str(cmbDP1GUIType.ListIndex) + chr(2) + txtDP1MinMaxDef.Text + chr(2) + txtDP1Default.Text + chr(2) + txtDP1Mask.Text+chr(2)
		      s = s + txtDP2Name.Text + chr(2) + str(cmbDP2GUIType.ListIndex) + chr(2) + txtDP2MinMaxDef.Text + chr(2) + txtDP2Default.Text + chr(2) + txtDP2Mask.Text+chr(2)+str(cmbDeviceGUI.ListIndex)+chr(2)+txtManufactor.Text
		      
		      res = DevMan.UpdateDevice(s)
		    end
		  end
		  
		  if res <> "0" then
		    MsgBox(res)
		    exit
		  end
		  
		  Update_cmbDevices
		  cmbDevices.ListIndex = 0
		  
		  
		  //Reload the Device
		  LoadDevice
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdDeleteDevice
	#tag Event
		Sub Action()
		  dim res as String
		  
		  res = DevMan.db_DeleteDevice(cmbDevices.Text)
		  if res = "0" then
		    res = DevMan.RemoveDevice(txtDeviceName.Text)
		    ClearDeviceProperties
		    ClearCommandProperties
		    Update_cmbDevices
		    cmbDevices.ListIndex = 0
		  else
		    MsgBox(res)
		  end
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdColorSyntax
	#tag Event
		Sub Action()
		  txtDeviceScript.visible = false
		  txtDeviceScript.ColorSyntax(txtDeviceScript.Text,0)
		  txtDeviceScript.visible = true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdCreateDeviceDatabase
	#tag Event
		Sub Action()
		  dim res as string
		  
		  res = db_CreateDeviceDatabase(dbDeviceDatabaseName)
		  if res <> "0" then MsgBox( "Could not create the Database, Error " + res )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdToString
	#tag Event
		Sub Action()
		  txtAckString.Text = HexStringToString(txtAckString.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtCmdName
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if InStr("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_"+chr(8)+chr(28)+chr(29),key)  > 0 then
		    return false
		  else
		    return true
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cmbP1GUIType
	#tag Event
		Sub Change()
		  txtP1MinMaxDef.Enabled = false
		  txtP1Default.Enabled = false
		  txtP1Mask.Enabled = false
		  
		  txtP1MinMaxDef.Text = ""
		  txtP1Default.Text = ""
		  txtP1Mask.Text = ""
		  
		  if me.text = "Text" then
		    txtP1Mask.Enabled = true
		    txtP1Default.Enabled = true
		  else
		    if (me.Text = "Spin Button") or (me.Text = "Drop Down") then
		      txtP1MinMaxDef.Enabled = true
		      txtP1Default.Enabled = true
		    end
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmbP3GUIType
	#tag Event
		Sub Change()
		  txtP3MinMaxDef.Enabled = false
		  txtP3Default.Enabled = false
		  txtP3Mask.Enabled = false
		  
		  txtP3MinMaxDef.Text = ""
		  txtP3Default.Text = ""
		  txtP3Mask.Text = ""
		  
		  if me.text = "Text" then
		    txtP3Mask.Enabled = true
		    txtP3Default.Enabled = true
		  else
		    if (me.Text = "Spin Button") or (me.Text = "Drop Down") then
		      txtP3MinMaxDef.Enabled = true
		      txtP3Default.Enabled = true
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmbP2GUIType
	#tag Event
		Sub Change()
		  txtP2MinMaxDef.Enabled = false
		  txtP2Default.Enabled = false
		  txtP2Mask.Enabled = false
		  
		  txtP2MinMaxDef.Text = ""
		  txtP2Default.Text = ""
		  txtP2Mask.Text = ""
		  
		  if me.text = "Text" then
		    txtP2Mask.Enabled = true
		    txtP2Default.Enabled = true
		  else
		    if (me.Text = "Spin Button") or (me.Text = "Drop Down") then
		      txtP2MinMaxDef.Enabled = true
		      txtP2Default.Enabled = true
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmbP4GUIType
	#tag Event
		Sub Change()
		  txtP4MinMaxDef.Enabled = false
		  txtP4Default.Enabled = false
		  txtP4Mask.Enabled = false
		  
		  txtP4MinMaxDef.Text = ""
		  txtP4Default.Text = ""
		  txtP4Mask.Text = ""
		  
		  if me.text = "Text" then
		    txtP4Mask.Enabled = true
		    txtP4Default.Enabled = true
		  else
		    if (me.Text = "Spin Button") or (me.Text = "Drop Down") then
		      txtP4MinMaxDef.Enabled = true
		      txtP4Default.Enabled = true
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdCompileCommand
	#tag Event
		Sub Action()
		  dim res as string
		  dim i as integer
		  
		  MouseCursor = System.Cursors.Wait
		  res = DevMan.Compile(txtDeviceName.Text)
		  if left(res,1) <> "-" then
		    txtDeviceScript.Text = res
		    txtDeviceScript.ColorSyntax(txtDeviceScript.Text,0)
		    cmdUpdateDevice.Push
		    for i = 0 to frmMain.lstDevices.ListCount-1
		      if frmMain.lstDevices.List(i) = txtDeviceName.Text then frmMain.UpdateDeviceGUI(i)
		    next
		  end
		  MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstCommands
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim strCmd as string
		  
		  
		  strCmd = lstCommands.Cell(row,1)
		  UpdateCommand(strCmd)
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddCommand
	#tag Event
		Sub Action()
		  dim res,s as string
		  
		  
		  //Params Order : DeviceName(2)CommandName(2)Scrip(2)Position(2)TabID(2)P1Name(2)P1GUIType(2)P1MinMaxDef(2)P1Mask(2)P1Default(2)
		  //                          P2Name(2)P2GUIType(2)P2MinMaxDef(2)P2Mask(2)P2Default(2)P3Name(2)P3GUIType(2)P3MinMaxDef(2)P3Mask(2)P3Default(2)
		  //                          P4Name(2)P4GUIType(2)P4MinMaxDef(2)P4Mask(2)P4Default(2)Timeout(2)AckCmd(2)NextCmd(2)AckString(2)AckLen
		  //Create new Record
		  
		  s = Left(txtCmdName.text,1)
		  if instr("0123456789",s) > 0 then
		    MsgBox("Commandname must start with chracter")
		    exit
		  end
		  
		  s = cmbDevices.Text+chr(2)+txtCmdName.Text+chr(2)+txtCmdScript.Text+chr(2)+txtPosition.Text+chr(2)+cmbTabId.text+chr(2)
		  s = s + txtP1Name.Text+chr(2)+str(cmbP1GUIType.ListIndex)+chr(2)+txtP1MinMaxDef.Text+chr(2)+txtP1Mask.Text+chr(2)+txtP1Default.Text+chr(2)
		  s = s + txtP2Name.Text+chr(2)+str(cmbP2GUIType.ListIndex)+chr(2)+txtP2MinMaxDef.Text+chr(2)+txtP2Mask.Text+chr(2)+txtP2Default.Text+chr(2)
		  s = s + txtP3Name.Text+chr(2)+str(cmbP3GUIType.ListIndex)+chr(2)+txtP3MinMaxDef.Text+chr(2)+txtP3Mask.Text +chr(2)+txtP3Default.Text+chr(2)
		  s = s + txtP4Name.Text+chr(2)+str(cmbP4GUIType.ListIndex )+chr(2)+txtP4MinMaxDef.Text+chr(2)+txtP4Mask.Text+chr(2)+txtP4Default.Text+chr(2)
		  s = s + txtTimeout.Text+chr(2)+cmbAckCommand.Text+chr(2)+cmbNextCommand.Text+chr(2)+txtAckString.Text+chr(2)+txtAckLen.Text
		  
		  if db_Mode = true then
		    res = DevMan.db_CreateCommand(s)
		  else
		    res = DevMan.CreateCommand(s)
		  end
		  
		  if res <> "0" then
		    MsgBox(res)
		    exit
		  end
		  
		  
		  //Reload the Device
		  LoadDevice
		  lstCommands.ColumnSortDirection(0) = Listbox.SortAscending
		  lstCommands.SortedColumn = 0
		  lstCommands.Sort
		  ClearCommandProperties
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdDeleteCmd
	#tag Event
		Sub Action()
		  dim res as String
		  dim i as Integer
		  
		  i = lstCommands.ListIndex
		  if i < 0 then
		    MsgBox("Kein Befehl selektiert")
		    exit
		  else
		    if db_Mode = true then
		      res = DevMan.db_DeleteCommand(cmbDevices.Text + chr(2) + lstCommands.Cell(i,1))
		    else
		      res = DevMan.DeleteCommand(cmbDevices.Text + chr(2) + lstCommands.Cell(i,1))
		    end
		    if res <> "0" then
		      MsgBox(res)
		      exit
		    else
		      Update_lstCommandsEvents
		      UpdateAckNextCommand
		      ClearCommandProperties
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdEditCmdScript
	#tag Event
		Sub Action()
		  frmCmdEditor.Show
		  frmCmdEditor.txtScript.Text = txtCmdScript.Text
		  frmCmdEditor.txtScript.ColorSyntax(frmCmdEditor.txtScript.Text,0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdUpdateCmd
	#tag Event
		Sub Action()
		  dim res,s as string
		  dim i as integer
		  
		  s = Left(txtCmdName.text,1)
		  if instr("0123456789",s) > 0 then
		    MsgBox("Commandname must start with chracter")
		    exit
		  end
		  
		  i = lstCommands.ListIndex
		  if i < 0 then
		    MsgBox("Kein Befehl selektiert")
		    exit
		  else
		    if db_Mode = true then
		      res = DevMan.db_DeleteCommand(cmbDevices.Text + chr(2) + lstCommands.Cell(i,1))
		    else
		      res = DevMan.DeleteCommand(cmbDevices.Text + chr(2) + lstCommands.Cell(i,1))
		    end
		    if res <> "0" then
		      MsgBox(res)
		      exit
		    else
		      cmdAddCommand.Push
		      ClearCommandProperties
		    end
		  end
		  
		  'if NewCommandFlag then
		  '//Params Order : DeviceName(2)CommandName(2)Scrip(2)Position(2)TabID(2)P1Name(2)P1GUIType(2)P1MinMaxDef(2)P1Mask(2)P1Default(2)
		  '//                          P2Name(2)P2GUIType(2)P2MinMaxDef(2)P2Mask(2)P2Default(2)P3Name(2)P3GUIType(2)P3MinMaxDef(2)P3Mask(2)P3Default(2)
		  '//                          P4Name(2)P4GUIType(2)P4MinMaxDef(2)P4Mask(2)P4Default(2)Timeout(2)AckCmd(2)NextCmd(2)AckString(2)AckLen
		  '//Create new Record
		  '
		  's = cmbDevices.Text+chr(2)+txtCmdName.Text+chr(2)+txtCmdScript.Text+chr(2)+txtPosition.Text+chr(2)+txtTabId.text+chr(2)
		  's = s + txtP1Name.Text+chr(2)+str(cmbP1GUIType.ListIndex)+chr(2)+txtP1MinMaxDef.Text+chr(2)+txtP1Mask.Text+chr(2)+txtP1Default.Text+chr(2)
		  's = s + txtP2Name.Text+chr(2)+str(cmbP2GUIType.ListIndex)+chr(2)+txtP2MinMaxDef.Text+chr(2)+txtP2Mask.Text+chr(2)+txtP2Default.Text+chr(2)
		  's = s + txtP3Name.Text+chr(2)+str(cmbP3GUIType.ListIndex)+chr(2)+txtP3MinMaxDef.Text+chr(2)+txtP3Mask.Text +chr(2)+txtP3Default.Text+chr(2)
		  's = s + txtP4Name.Text+chr(2)+str(cmbP4GUIType.ListIndex )+chr(2)+txtP4MinMaxDef.Text+chr(2)+txtP4Mask.Text+chr(2)+txtP4Default.Text+chr(2)
		  's = s + txtTimeout.Text+chr(2)+cmbAckCommand.Text+chr(2)+cmbNextCommand.Text+chr(2)+HexStringToString(txtAckString.Text)+chr(2)+txtAckLen.Text
		  '
		  'res = DevMan.db_CreateCommand(s)
		  '
		  'if res <> "0" then
		  'MsgBox(res)
		  'exit
		  'end
		  'Update_lstCommands
		  'UpdateAckNextCommand
		  'lstCommands.ListIndex = 0
		  'UpdateCommand(lstCommands.Cell(0,1))
		  'NewCommandFlag = false
		  'else
		  '//Params Order : DeviceName(2)OldCommandName(2)NewCommandName(2)Scrip(2)Position(2)TabID(2)P1Name(2)P1GUIType(2)P1MinMaxDef(2)P1Mask(2)P1Default(2)
		  '//                          P2Name(2)P2GUIType(2)P2MinMaxDef(2)P2Mask(2)P2Default(2)P3Name(2)P3GUIType(2)P3MinMaxDef(2)P3Mask(2)P3Default(2)
		  '//                          P4Name(2)P4GUIType(2)P4MinMaxDef(2)P4Mask(2)P4Default(2)Timeout(2)AckCmd(2)NextCmd(2)AckString(2)AckLen
		  '
		  '//get old Command
		  'i = lstCommands.ListIndex
		  'if i < 0 then
		  'MsgBox("No Command selected")
		  'exit
		  'end
		  'OldCommandName = lstCommands.Cell(i,1)
		  '
		  's = cmbDevices.Text+chr(2)+OldCommandName+chr(2)+txtCmdName.Text+chr(2)+txtCmdScript.Text+chr(2)+txtPosition.Text+chr(2)+txtTabId.text+chr(2)
		  's = s + txtP1Name.Text+chr(2)+str(cmbP1GUIType.ListIndex)+chr(2)+txtP1MinMaxDef.Text+chr(2)+txtP1Mask.Text+chr(2)+txtP1Default.Text+chr(2)
		  's = s + txtP2Name.Text+chr(2)+str(cmbP2GUIType.ListIndex)+chr(2)+txtP2MinMaxDef.Text+chr(2)+txtP2Mask.Text+chr(2)+txtP2Default.Text+chr(2)
		  's = s + txtP3Name.Text+chr(2)+str(cmbP3GUIType.ListIndex)+chr(2)+txtP3MinMaxDef.Text+chr(2)+txtP3Mask.Text+chr(2)+txtP3Default.Text+chr(2)
		  's = s + txtP4Name.Text+chr(2)+str(cmbP4GUIType.ListIndex)+chr(2)+txtP4MinMaxDef.Text+chr(2)+txtP4Mask.Text+chr(2)+txtP4Default.Text+chr(2)
		  's = s + txtTimeout.Text+chr(2)+cmbAckCommand.Text+chr(2)+cmbNextCommand.Text+chr(2)+HexStringToString(txtAckString.Text)+chr(2)+txtAckLen.Text
		  '
		  'res = DevMan.db_UpdateCommand(s)
		  '
		  'if res <> "0" then
		  'MsgBox(res)
		  'exit
		  'end
		  '
		  '
		  'i = lstCommands.ListIndex
		  'Update_lstCommands
		  'lstCommands.ListIndex = i
		  '
		  'end
		  '
		  '//Reload the Device
		  'LoadDevice
		  'lstCommands.ColumnSortDirection(0) = Listbox.SortAscending
		  'lstCommands.SortedColumn = 0
		  'lstCommands.Sort
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdConvertToHex
	#tag Event
		Sub Action()
		  txtAckString.Text = StringToHexString(txtAckString.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddCategory
	#tag Event
		Sub Action()
		  frmCategories.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmbCategory
	#tag Event
		Sub Change()
		  dim res as string
		  dim i as integer
		  
		  if BlockcmbCategory = false then
		    if db_Mode = true then
		      if chkAllowChangeCategory.Value = false then
		        res = DevMan.db_GetDevicesByCategory(me.Text)
		        cmdAddDevice.Enabled = true
		        cmdDeleteDevice.Enabled = true
		        cmdAddCategory.Enabled = true
		        cmbCategory.Enabled = true
		        txtDriverName.Enabled = true
		        txtManufactor.Enabled = true
		        cmbDeviceGUI.Enabled = true
		        txtDeviceName.Enabled = false
		        mnuFileImport.AutoEnable = true
		        
		        cmbDevices.DeleteAllRows
		        cmbDevices.AddRow("")
		        for i = 1 to CountFields(res,chr(2))
		          cmbDevices.AddRow(NthField(res,chr(2),i))
		        next
		        ClearCommandProperties
		        ClearDeviceProperties
		      else
		        chkAllowChangeCategory.Value = false
		      end
		    end
		    
		  end
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
		Name="BlockcmbCategory"
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
