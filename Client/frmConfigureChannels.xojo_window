#tag Window
Begin Window frmConfigureChannels
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
   Height          =   352
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   1003225087
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   False
   Title           =   "Configure Channel Enviroment"
   Visible         =   True
   Width           =   868
   Begin ListBox lstChannels
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   True
      ColumnWidths    =   "80,40,1*"
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
      Height          =   269
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Name	Type	Parameter"
      Italic          =   False
      Left            =   7
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
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   31
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   126
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
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
      Left            =   8
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
      Text            =   "Channels:"
      TextAlign       =   0
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   11
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin GroupBox grpGlobal
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Interface Type"
      Enabled         =   True
      Height          =   72
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   142
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   5
      Underline       =   False
      Visible         =   True
      Width           =   712
      Begin RadioButton optSerial
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Serial"
         Enabled         =   True
         Height          =   21
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpGlobal"
         Italic          =   False
         Left            =   155
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   21
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   94
      End
      Begin RadioButton optTCP
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "TCP Client"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpGlobal"
         Italic          =   False
         Left            =   264
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   21
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin RadioButton optUDP
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "UDP"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpGlobal"
         Italic          =   False
         Left            =   391
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   21
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   89
      End
      Begin TextField txtChannelName
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
         InitialParent   =   "grpGlobal"
         Italic          =   False
         Left            =   286
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
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   47
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   159
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
         InitialParent   =   "grpGlobal"
         Italic          =   False
         Left            =   180
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Channel Name:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   47
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   107
      End
      Begin RadioButton optSMTP
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "SMTP (Send Mail)"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpGlobal"
         Italic          =   False
         Left            =   483
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   21
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   141
      End
   End
   Begin GroupBox grpSerial
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Serial"
      Enabled         =   False
      Height          =   211
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   142
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   89
      Underline       =   False
      Visible         =   True
      Width           =   263
      Begin Label StaticText2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSerial"
         Italic          =   False
         Left            =   149
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
         Text            =   "Port:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   141
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
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
         InitialParent   =   "grpSerial"
         Italic          =   False
         Left            =   149
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
         Text            =   "Baud:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   166
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
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
         InitialParent   =   "grpSerial"
         Italic          =   False
         Left            =   149
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
         Text            =   "Parity:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   241
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
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
         InitialParent   =   "grpSerial"
         Italic          =   False
         Left            =   149
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "DataBits:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   191
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
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
         InitialParent   =   "grpSerial"
         Italic          =   False
         Left            =   150
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "StopBits:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   216
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   63
      End
      Begin CheckBox chkXON
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "XON"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSerial"
         Italic          =   False
         Left            =   149
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         State           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   266
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   63
      End
      Begin CheckBox chkCTS
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "CTS"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSerial"
         Italic          =   False
         Left            =   218
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         State           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   266
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   57
      End
      Begin CheckBox chkDTR
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "DTR"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSerial"
         Italic          =   False
         Left            =   287
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         State           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   266
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   70
      End
      Begin ComboBox cmbPort
         AutoComplete    =   False
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSerial"
         InitialValue    =   ""
         Italic          =   False
         Left            =   208
         ListIndex       =   0
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   139
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   191
      End
      Begin PopupMenu cmbBaud
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSerial"
         InitialValue    =   ""
         Italic          =   False
         Left            =   319
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   166
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PopupMenu cmbDataBits
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSerial"
         InitialValue    =   ""
         Italic          =   False
         Left            =   319
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   191
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PopupMenu cmbStopBits
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSerial"
         InitialValue    =   ""
         Italic          =   False
         Left            =   319
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   216
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PopupMenu cmbParity
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSerial"
         InitialValue    =   ""
         Italic          =   False
         Left            =   319
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   241
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton cmdGetCommports
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Get Serial List"
         Default         =   False
         Enabled         =   True
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSerial"
         Italic          =   False
         Left            =   239
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   104
         Underline       =   False
         Visible         =   True
         Width           =   160
      End
      Begin PushButton cmdRefresh
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Refresh"
         Default         =   False
         Enabled         =   True
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSerial"
         Italic          =   False
         Left            =   149
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   104
         Underline       =   False
         Visible         =   True
         Width           =   78
      End
   End
   Begin GroupBox grpUDP
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "UDP"
      Enabled         =   False
      Height          =   118
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   417
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   182
      Underline       =   False
      Visible         =   True
      Width           =   207
      Begin Label StaticText7
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpUDP"
         Italic          =   False
         Left            =   425
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
         Text            =   "Router Hops:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   234
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   85
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
         InitialParent   =   "grpUDP"
         Italic          =   False
         Left            =   425
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
         Text            =   "Target IP:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   266
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   85
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
         InitialParent   =   "grpUDP"
         Italic          =   False
         Left            =   425
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
         Text            =   "Port:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   202
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   85
      End
      Begin TextField txtUDPPort
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
         InitialParent   =   "grpUDP"
         Italic          =   False
         Left            =   522
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   202
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   95
      End
      Begin TextField txtUDPRouterHops
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
         InitialParent   =   "grpUDP"
         Italic          =   False
         Left            =   522
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   234
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   95
      End
      Begin TextField txtUDPTarget
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
         InitialParent   =   "grpUDP"
         Italic          =   False
         Left            =   522
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   268
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   95
      End
   End
   Begin GroupBox grpTCP
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "TCP/IP"
      Enabled         =   False
      Height          =   81
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   417
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   89
      Underline       =   False
      Visible         =   True
      Width           =   207
      Begin Label StaticText10
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpTCP"
         Italic          =   False
         Left            =   425
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
         Text            =   "Port:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   109
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   70
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
         InitialParent   =   "grpTCP"
         Italic          =   False
         Left            =   425
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
         Text            =   "Address:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   141
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   85
      End
      Begin TextField txtTCPPort
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
         InitialParent   =   "grpTCP"
         Italic          =   False
         Left            =   522
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   109
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   95
      End
      Begin TextField txtTCPAddress
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
         InitialParent   =   "grpTCP"
         Italic          =   False
         Left            =   522
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   141
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   95
      End
   End
   Begin PushButton cmdAddChannel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Add Channel"
      Default         =   False
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   684
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   "0"
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   315
      Underline       =   False
      Visible         =   True
      Width           =   170
   End
   Begin PushButton cmdDelete
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Delete Channel"
      Default         =   False
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   7
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   "0"
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   315
      Underline       =   False
      Visible         =   True
      Width           =   170
   End
   Begin PushButton cmdEdit
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Update Channel"
      Default         =   False
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   332
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   "0"
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   315
      Underline       =   False
      Visible         =   True
      Width           =   170
   End
   Begin GroupBox grpSMTP
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "SMTP"
      Enabled         =   False
      Height          =   147
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   644
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   89
      Underline       =   False
      Visible         =   True
      Width           =   207
      Begin Label StaticText13
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSMTP"
         Italic          =   False
         Left            =   652
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
         Text            =   "From Adr.:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   141
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   85
      End
      Begin Label StaticText14
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSMTP"
         Italic          =   False
         Left            =   652
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
         Text            =   "Username:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   173
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   85
      End
      Begin Label StaticText15
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grpSMTP"
         Italic          =   False
         Left            =   652
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
         Text            =   "Server:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   109
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   85
      End
      Begin TextField txtSMTPServer
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
         InitialParent   =   "grpSMTP"
         Italic          =   False
         Left            =   749
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   109
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   95
      End
      Begin TextField txtSMTPFromAdr
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
         InitialParent   =   "grpSMTP"
         Italic          =   False
         Left            =   749
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   141
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   95
      End
      Begin TextField txtSMTPUsername
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
         InitialParent   =   "grpSMTP"
         Italic          =   False
         Left            =   749
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
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   175
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   95
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
         InitialParent   =   "grpSMTP"
         Italic          =   False
         Left            =   652
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
         Text            =   "Password:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   204
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   85
      End
      Begin TextField txtSMTPPassword
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
         InitialParent   =   "grpSMTP"
         Italic          =   False
         Left            =   749
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   206
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   95
      End
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
		  
		  Dim str as string
		  Dim i,x As Integer
		  
		  
		  'Baudrates
		  cmbBaud.DeleteAllRows
		  cmbBaud.AddRow("300")
		  cmbBaud.AddRow("600")
		  cmbBaud.AddRow("1200")
		  cmbBaud.AddRow("1800")
		  cmbBaud.AddRow("2400")
		  cmbBaud.AddRow("3600")
		  cmbBaud.AddRow("4800")
		  cmbBaud.AddRow("7200")
		  cmbBaud.AddRow("9600")
		  cmbBaud.AddRow("14400")
		  cmbBaud.AddRow("19200")
		  cmbBaud.AddRow("28800")
		  cmbBaud.AddRow("38400")
		  cmbBaud.AddRow("57600")
		  cmbBaud.AddRow("115200")
		  cmbBaud.AddRow("230400")
		  cmbBaud.ListIndex = 8
		  
		  'DataBits
		  cmbDataBits.DeleteAllRows
		  cmbDataBits.AddRow("5")
		  cmbDataBits.AddRow("6")
		  cmbDataBits.AddRow("7")
		  cmbDataBits.AddRow("8")
		  cmbDataBits.ListIndex = 3
		  
		  'StopBits
		  cmbStopBits.DeleteAllRows
		  cmbStopBits.AddRow("1")
		  cmbStopBits.AddRow("1.5")
		  cmbStopBits.AddRow("2")
		  cmbStopBits.ListIndex = 0
		  
		  'Parity
		  cmbParity.DeleteAllRows
		  cmbParity.AddRow("none")
		  cmbParity.AddRow("odd")
		  cmbParity.AddRow("even")
		  cmbParity.ListIndex = 0
		  
		  //Get channel list
		  str = IOMan.GetChannels
		  if str = "Timeout" then 
		    MsgBox("Timeout Error: VNode not responding!")
		    exit
		  end
		  lstChannels.DeleteAllRows
		  x = 0
		  for i = 1 to CountFields(str,chr(2)) step 3
		    lstChannels.AddRow(NthField(str,chr(2),i))
		    if NthField(str,chr(2),i+1) = "0" then lstChannels.Cell(x,1) = "Serial"
		    if NthField(str,chr(2),i+1) = "1" then lstChannels.Cell(x,1) = "TCP"
		    if NthField(str,chr(2),i+1) = "2" then lstChannels.Cell(x,1) = "UDP"
		    if NthField(str,chr(2),i+1) = "3" then lstChannels.Cell(x,1) = "SMTP"
		    lstChannels.Cell(x,2) = NthField(str,chr(2),i+2)
		    x = x + 1
		  next
		  
		  lstChannels.SortedColumn = 0
		  lstChannels.Sort
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events lstChannels
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  Dim stmp, sCType As String
		  
		  sCType = me.Cell(row,1)
		  stmp = me.Cell(row,2)
		  frmConfigureChannels.txtChannelName.Text = me.cell(row,0)
		  
		  if sCType = "Serial" then
		    optSerial.Value = true
		    //cmbPort.ListIndex = val(NthField(stmp,",",1))
		    cmbPort.Text = NthField(stmp,",",1)
		    cmbBaud.ListIndex = val(NthField(stmp,",",2))
		    cmbDataBits.ListIndex = val(NthField(stmp,",",3))
		    cmbStopBits.ListIndex = val(NthField(stmp,",",4))
		    cmbParity.ListIndex = val(NthField(stmp,",",5))
		    
		    if NthField(stmp,",",6) = "1" then
		      chkDTR.Value = true
		    else
		      chkDTR.Value = false
		    end
		    
		    if NthField(stmp,",",7) = "1" then
		      chkCTS.Value = true
		    else
		      chkCTS.Value = false
		    end
		    
		    if NthField(stmp,",",8) = "1" then
		      chkXON.Value = true
		    else
		      chkXON.Value = false
		    end
		  end
		  
		  if sCType = "TCP" then
		    optTCP.Value = true
		    txtTCPAddress.Text = NthField(stmp,",",1)
		    txtTCPPort.Text = NthField(stmp,",",2)
		  end
		  
		  if sCType = "UDP" then
		    optUDP.Value = true
		    txtUDPTarget.Text = NthField(stmp,",",1)
		    txtUDPPort.Text = NthField(stmp,",",2)
		    txtUDPRouterHops.Text = NthField(stmp,",",3)
		  end
		  
		  if sCType = "SMTP" then
		    optSMTP.Value = true
		    txtSMTPServer.Text = NthField(stmp,chr(7),1)
		    txtSMTPFromAdr.Text = NthField(stmp,chr(7),2)
		    txtSMTPUsername.Text = NthField(stmp,chr(7),3)
		    txtSMTPPassword.Text = NthField(stmp,chr(7),4)
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events optSerial
	#tag Event
		Sub Action()
		  if optSerial.Value = true then
		    grpSerial.Enabled = true
		    grpTCP.Enabled = false
		    grpUDP.Enabled = false
		    grpSMTP.Enabled = false
		    if cmbPort.ListCount = 0 then cmdGetCommports.Push
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events optTCP
	#tag Event
		Sub Action()
		  if optTCP.Value = true then
		    grpSerial.Enabled = false
		    grpTCP.Enabled = true
		    grpUDP.Enabled = false
		    grpSMTP.Enabled = false
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events optUDP
	#tag Event
		Sub Action()
		  if optUDP.Value = true then
		    grpSerial.Enabled = false
		    grpTCP.Enabled = false
		    grpUDP.Enabled = true
		    grpSMTP.Enabled = false
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtChannelName
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
#tag Events optSMTP
	#tag Event
		Sub Action()
		  if optSMTP.Value = true then
		    grpSerial.Enabled = false
		    grpTCP.Enabled = false
		    grpUDP.Enabled = false
		    grpSMTP.Enabled = true
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdGetCommports
	#tag Event
		Sub Action()
		  dim s as string
		  dim slist(-1) as string
		  dim i as integer
		  
		  
		  cmbPort.DeleteAllRows
		  
		  s = IOMan.GetCommportList
		  
		  if s <> "Timeout" then
		    for i = 1 to CountFields(s,",")
		      slist.Append(NthField(s,",",i))
		    next
		    #if not TargetWin32 then slist.Sort
		    for i = 0 to UBound(slist)
		      cmbPort.AddRow(slist(i))
		    next
		  else
		    MsgBox("Got Timeout! Please check if node is alive and try again")
		  end
		  
		  if cmbPort.ListCount > 0 then cmbPort.ListIndex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdRefresh
	#tag Event
		Sub Action()
		  Dim s as string
		  dim slist(-1) as string
		  dim i as integer
		  
		  cmbPort.DeleteAllRows
		  grpGlobal.Enabled = False
		  grpSerial.Enabled = False
		  'grpTCP.Enabled = False
		  'grpUDP.Enabled = False
		  'cmdDelete.Enabled = False
		  'cmdEdit.Enabled = False
		  'cmdAddChannel.Enabled = False
		  'lstChannels.EnableD= False
		  
		  s = IOMan.RefreshCommportList
		  if s <> "Timeout" then
		    for i = 1 to CountFields(s,",")
		      slist.Append(NthField(s,",",i))
		    next
		    #if not TargetWin32 then slist.Sort
		    for i = 0 to UBound(slist)
		      cmbPort.AddRow(slist(i))
		    next
		  else
		    MsgBox("Got Timeout! Please check if node is alive and try again")
		  end
		  if cmbPort.ListCount > 0 then cmbPort.ListIndex = 0
		  grpGlobal.Enabled = True
		  grpSerial.Enabled = True
		  'grpTCP.Enabled = True
		  'grpUDP.Enabled = True
		  'cmdDelete.Enabled = True
		  'cmdEdit.Enabled = True
		  'cmdAddChannel.Enabled = True
		  'lstChannels.EnableD= True
		  
		  frmConfigureChannels.SetFocus
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddChannel
	#tag Event
		Sub Action()
		  Dim p1,p2,res As String
		  Dim i,ChannelType as integer
		  
		  p1 = ""
		  p2 = ""
		  
		  if txtChannelName.Text = "" then
		    MsgBox("Channel Name empty")
		    exit
		  end
		  
		  if txtChannelName.Text = "Cal" then
		    MsgBox("'Cal' is a reserved name")
		    exit
		  end
		  
		  'Wenn Serial Channel
		  if optSerial.Value = true then
		    ChannelType = 0
		    p1 = "0," + txtChannelName.Text + "," 
		    p2 = cmbPort.Text + "," + str(cmbBaud.ListIndex) + "," + str(cmbDataBits.ListIndex) + "," + str(cmbStopBits.ListIndex) + "," + str(cmbParity.ListIndex) + ","
		    if chkDTR.Value = true then 
		      p2 = p2 + "1,"
		    else
		      p2 = p2 + "0,"
		    end
		    if chkCTS.Value = true then
		      p2 = p2 + "1,"
		    else
		      p2 = p2 + "0,"
		    end
		    if chkXON.Value = true then
		      p2 = p2 + "1"
		    else
		      p2 = p2 + "0"
		    end
		  end
		  
		  'Wenn TCP Channel
		  if optTCP.Value = true then
		    ChannelType = 1
		    p1 = "1," + txtChannelName.Text + "," 
		    p2 = txtTCPAddress.Text + "," + txtTCPPort.text
		  end
		  
		  'Wenn UDP Channel
		  if optUDP.Value = true then
		    ChannelType = 2
		    p1 = "2," + txtChannelName.Text + "," 
		    p2 = txtUDPTarget.Text + "," + txtUDPPort.Text + "," + txtUDPRouterHops.Text
		  end
		  
		  'Wenn SMTP Channel
		  if optSMTP.Value = true then
		    ChannelType = 3
		    p1 = "3," + txtChannelName.Text + ","
		    p2 = txtSMTPServer.Text + chr(7) + txtSMTPFromAdr.Text + chr(7) + txtSMTPUsername.Text + chr(7) + txtSMTPPassword.Text
		  end
		  
		  'Try to open the Channel
		  res = ioMan.OpenChannel(p1+p2)
		  if res = "0" then
		    lstChannels.AddRow("")
		    i = lstChannels.ListCount - 1
		    lstChannels.ListIndex = i
		    if ChannelType = 0 then lstChannels.Cell(i,1) = "Serial"
		    if ChannelType = 1 then lstChannels.Cell(i,1) = "TCP"
		    if ChannelType = 2 then lstChannels.Cell(i,1) = "UDP"
		    if ChannelType = 3 then lstChannels.Cell(i,1) = "SMTP"
		    lstChannels.Cell(i,0) = txtChannelName.Text
		    lstChannels.Cell(i,2) = p2
		    //Liste neu sortieren
		    lstChannels.SortedColumn = 0
		    lstChannels.Sort
		    frmMain.RefreshAvailableChannels
		  else
		    if res = "-1018" then 
		      MsgBox("Maximum channels exceeded")
		    else
		      MsgBox(res)
		    end
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdDelete
	#tag Event
		Sub Action()
		  Dim s,res as string
		  Dim i,ChIdx as integer
		  Dim valid as boolean
		  
		  //Get the Channel Name
		  valid = false
		  for i = 0 to lstChannels.ListCount - 1
		    if lstChannels.Selected(i) then
		      s = lstChannels.Cell(i,0)
		      valid = true
		      ChIdx = i
		    end
		  next
		  
		  if not valid then
		    MsgBox("No channel selected")
		    exit
		  end
		  
		  
		  //Close Channel
		  res = IOMan.CloseChannel(s)
		  //Channel aus liste löschen
		  lstChannels.RemoveRow(ChIdx)
		  //Liste neu sortieren
		  lstChannels.SortedColumn = 0
		  lstChannels.Sort
		  frmMain.RefreshAvailableChannels
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdEdit
	#tag Event
		Sub Action()
		  dim i,x as integer
		  dim OldName,NewName as string
		  
		  x = -1
		  for i = 0 to lstChannels.ListCount - 1
		    if lstChannels.Selected(i) then x = i
		  next
		  if x = -1 then 
		    MsgBox("No channel selected")
		    exit
		  end
		  
		  OldName = lstChannels.Cell(x,0)
		  NewName = txtChannelName.Text
		  //Channel Name wurde geaendert, daher in allen Cuesets den alten Namen durch den neuen ersetzen
		  if OldName <> NewName then
		    i = ScrMan.ChangeChannelNameInScripts(OldName,NewName)
		    if i >= 0 then
		      cmdDelete.Push
		      cmdAddChannel.Push
		      //Liste neu sortieren
		      lstChannels.SortedColumn = 0
		      lstChannels.Sort
		      frmMain.RefreshAvailableChannels
		      if i > 0 then MsgBox(str(i) + " Cues have been changed")
		    else
		      MsgBox("Operaton not possible while a Cueset is running")
		    end
		  else
		    cmdDelete.Push
		    cmdAddChannel.Push
		    //Liste neu sortieren
		    lstChannels.SortedColumn = 0
		    lstChannels.Sort
		    frmMain.RefreshAvailableChannels
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
