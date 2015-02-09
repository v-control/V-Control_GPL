#tag Window
Begin Window frmOptions
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
   Height          =   541
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
   Resizeable      =   False
   Title           =   "Options"
   Visible         =   True
   Width           =   826
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   486
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   "0"
      SmallTabs       =   False
      TabDefinition   =   "System\rRemote Services\rScript Editor"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   8
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   806
      Begin CheckBox chkCuesetEditReadOnly
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Script editing only by Software"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   27
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   192
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   376
      End
      Begin GroupBox grpColorSyntax
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Color Groups"
         Enabled         =   False
         Height          =   106
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   19
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   68
         Underline       =   False
         Visible         =   True
         Width           =   220
         Begin CheckBox chkKeywords
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Keywords"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpColorSyntax"
            Italic          =   False
            Left            =   35
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   92
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   136
         End
         Begin CheckBox chkNumberStrings
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Numbers and Strings"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpColorSyntax"
            Italic          =   False
            Left            =   35
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   117
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   195
         End
         Begin CheckBox chkRemarks
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Remarks"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpColorSyntax"
            Italic          =   False
            Left            =   35
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   142
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   136
         End
      End
      Begin CheckBox chkColorSyntax
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Color Syntax"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   27
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         State           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   43
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   184
      End
      Begin GroupBox grpFont
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Font"
         Enabled         =   True
         Height          =   106
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   251
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   68
         Underline       =   False
         Visible         =   True
         Width           =   212
         Begin TSpinButton spnEditTextsize
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
            InitialParent   =   "grpFont"
            Left            =   336
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Max             =   0
            Min             =   0
            Scope           =   "0"
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            Top             =   89
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   True
            Width           =   104
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
            InitialParent   =   "grpFont"
            Italic          =   False
            Left            =   259
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Textsize"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   92
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   65
         End
         Begin PopupMenu cmbFont
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpFont"
            InitialValue    =   ""
            Italic          =   False
            Left            =   336
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   124
            Underline       =   False
            Visible         =   True
            Width           =   104
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
            InitialParent   =   "grpFont"
            Italic          =   False
            Left            =   259
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Font"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   124
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   72
         End
      End
      Begin GroupBox grpStartup
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Startup"
         Enabled         =   True
         Height          =   298
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   26
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   45
         Underline       =   False
         Visible         =   True
         Width           =   327
         Begin TextArea txtAutoload
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   True
            BackColor       =   
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Format          =   ""
            Height          =   45
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "grpStartup"
            Italic          =   False
            Left            =   40
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
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   131
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   298
         End
         Begin PushButton cmdSelectAutoload
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Select Autoload File..."
            Default         =   False
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpStartup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   185
            Underline       =   False
            Visible         =   True
            Width           =   298
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
            InitialParent   =   "grpStartup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Autoload Project:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   105
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   279
         End
         Begin TextField txtAutostart
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
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpStartup"
            Italic          =   False
            Left            =   40
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
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   249
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   298
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
            InitialParent   =   "grpStartup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Autostart Task:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   223
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin PushButton cmdSelectAutostart
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Select Autostart Task..."
            Default         =   False
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpStartup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   281
            Underline       =   False
            Visible         =   True
            Width           =   298
         End
         Begin CheckBox chkEnableKeyboardEvents
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Enable Keyboard Events at Startup"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpStartup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   318
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   296
         End
         Begin CheckBox chkStartDelayed
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Start delayed to load drivers first"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpStartup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   70
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   296
         End
      End
      Begin TabPanel tbRemote
         AutoDeactivate  =   True
         Bold            =   False
         Enabled         =   True
         Height          =   278
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Panels          =   ""
         Scope           =   "0"
         SmallTabs       =   False
         TabDefinition   =   "TCP\rUDP\rHTTP\rRS232\rUser Management"
         TabIndex        =   27
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   50
         Underline       =   False
         Value           =   0
         Visible         =   True
         Width           =   617
         Begin Label StaticText8
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   12
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Port:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   92
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   87
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   17
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Max Clients:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   122
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   87
         End
         Begin CheckBox chkEnableHTTPService
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Enable HTTP Service"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   48
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   19
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   290
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   221
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   21
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Documents Root Dir:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   154
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   141
         End
         Begin TextField txtHTTPPort
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
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   183
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
            TabIndex        =   22
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   91
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   140
         End
         Begin TextField txtHTTPDocs
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
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   183
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
            TabIndex        =   23
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   156
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   386
         End
         Begin PushButton cmdSetDocDir
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "..."
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   581
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   24
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   155
            Underline       =   False
            Visible         =   True
            Width           =   46
         End
         Begin TextField txtHTTPMaxClients
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
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   183
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
            TabIndex        =   26
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   122
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   140
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   48
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
            Text            =   "Port:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   111
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   87
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   48
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   23
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Parity:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   239
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   87
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   48
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   24
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Stop Bits:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   207
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   87
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
            InitialParent   =   "tbRemote"
            InitialValue    =   ""
            Italic          =   False
            Left            =   147
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   25
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   206
            Underline       =   False
            Visible         =   True
            Width           =   140
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
            InitialParent   =   "tbRemote"
            InitialValue    =   ""
            Italic          =   False
            Left            =   147
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   26
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   238
            Underline       =   False
            Visible         =   True
            Width           =   140
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   48
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   26
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Port:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   111
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   87
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   48
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   26
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Commport:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   111
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   87
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   50
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
            Text            =   "Max Clients:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   144
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   85
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   48
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   26
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Baudrate:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   143
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   87
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   48
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   26
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Data Bits:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   175
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   87
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
            InitialParent   =   "tbRemote"
            InitialValue    =   ""
            Italic          =   False
            Left            =   147
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   26
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   174
            Underline       =   False
            Visible         =   True
            Width           =   140
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
            InitialParent   =   "tbRemote"
            InitialValue    =   ""
            Italic          =   False
            Left            =   147
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   26
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   143
            Underline       =   False
            Visible         =   True
            Width           =   140
         End
         Begin TextField txtMaxClients
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
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   147
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
            TabIndex        =   26
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   142
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   140
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
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   147
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
            TabIndex        =   26
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   111
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   140
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
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   147
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
            TabIndex        =   26
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   111
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   140
         End
         Begin ComboBox cmbCommports
            AutoComplete    =   False
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            InitialValue    =   ""
            Italic          =   False
            Left            =   147
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   26
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   111
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   140
         End
         Begin CheckBox chkEnableTCPService
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Enable TCP Remote Service"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   48
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   290
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   237
         End
         Begin CheckBox chkEnableUDPService
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Enable UDP Remote Service"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   48
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   290
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   237
         End
         Begin CheckBox chkEnableRS232Service
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Enable RS232 Remote Service"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   48
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   290
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   237
         End
         Begin TextField txtBrowserURL
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
            Height          =   25
            HelpTag         =   "This is the V-Control web server URL in your local network"
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   183
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   True
            Scope           =   "0"
            TabIndex        =   27
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   192
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   386
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   28
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Local Server URL:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   192
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   141
         End
         Begin CheckBox chkEnableUserCheck
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "User Authenticating"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   32
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   92
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   175
         End
         Begin Listbox lstUsers
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   3
            ColumnsResizable=   True
            ColumnWidths    =   ""
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   -1
            Enabled         =   False
            EnableDrag      =   False
            EnableDragReorder=   False
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   162
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            InitialValue    =   "Name	Password	Rights"
            Italic          =   False
            Left            =   33
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   "0"
            ScrollbarHorizontal=   True
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   1
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   148
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   187
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin Label lblKnownUsers
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   39
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Known Users"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   124
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin Label lblUserName
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   232
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Name"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   160
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   64
         End
         Begin Label lblPassword
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   232
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Password"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   192
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   64
         End
         Begin Label lblGroup
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   232
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Group"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   224
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   64
         End
         Begin TextField txtUserName
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   307
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
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   159
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   100
         End
         Begin TextField txtPassword
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
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   307
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
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   190
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   100
         End
         Begin PushButton cmdAddUser
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Add"
            Default         =   False
            Enabled         =   False
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   430
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   12
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   156
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin PushButton cmdDeleteUser
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Delete"
            Default         =   False
            Enabled         =   False
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   529
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   13
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   156
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin RadioButton optGroupUser
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "User"
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   307
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   14
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   224
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   65
         End
         Begin RadioButton optGroupLevel1
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Level 1"
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   370
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   15
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   224
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   71
         End
         Begin RadioButton optGroupLevel2
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Level 2"
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   453
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   16
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   224
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   72
         End
         Begin RadioButton optGroupAdmin
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Admin"
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbRemote"
            Italic          =   False
            Left            =   544
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   17
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   224
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   65
         End
      End
      Begin GroupBox grpLoggs
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Logging"
         Enabled         =   True
         Height          =   157
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   365
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
         Top             =   154
         Underline       =   False
         Visible         =   True
         Width           =   310
         Begin CheckBox chkLoggAck
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   " Acknowledge Logging Mode"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   "Store every Acknowledge in a seperate line in the Ack table"
            Index           =   -2147483648
            InitialParent   =   "grpLoggs"
            Italic          =   False
            Left            =   374
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   177
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   276
         End
         Begin CheckBox chkLogToFile
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   " Log to File"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpLoggs"
            Italic          =   False
            Left            =   374
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   205
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   276
         End
         Begin PushButton cmdDeleteLogfile
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Delete Logfile"
            Default         =   False
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpLoggs"
            Italic          =   False
            Left            =   374
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   231
            Underline       =   False
            Visible         =   True
            Width           =   276
         End
         Begin Label StaticText27
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   38
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpLoggs"
            Italic          =   False
            Left            =   374
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   True
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "The Logfile is located in V-Control's program directory and is named Logfile.txt"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   269
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   276
         End
      End
      Begin TSpinButton spnChaseBalistic
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
         InitialParent   =   "TabPanel1"
         Left            =   523
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Max             =   0
         Min             =   0
         Scope           =   "0"
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   320
         Transparent     =   True
         UseFocusRing    =   False
         Visible         =   True
         Width           =   104
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   365
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Chase Balistic:"
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   320
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   146
      End
      Begin GroupBox grpPlaylist
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Playlist"
         Enabled         =   True
         Height          =   104
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   365
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   10
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   45
         Underline       =   False
         Visible         =   True
         Width           =   310
         Begin TSpinButton spnPlaylistTextsize
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
            InitialParent   =   "grpPlaylist"
            Left            =   539
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Max             =   0
            Min             =   0
            Scope           =   "0"
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   112
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   True
            Width           =   104
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
            InitialParent   =   "grpPlaylist"
            Italic          =   False
            Left            =   374
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Playlist Textsize:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   112
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   146
         End
         Begin CheckBox chkStartWithPlaylist
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Start with Playlist"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpPlaylist"
            Italic          =   False
            Left            =   374
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   60
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   276
         End
         Begin CheckBox chkModalPlaylist
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Modal Playlist"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpPlaylist"
            Italic          =   False
            Left            =   374
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   82
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   276
         End
      End
      Begin GroupBox GroupBox1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Timecode Distribution"
         Enabled         =   True
         Height          =   119
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   26
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   12
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   352
         Underline       =   False
         Visible         =   True
         Width           =   327
         Begin CheckBox chkBroadcastWaitForTC
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Broadcast WaitFor Timecode"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   372
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   276
         End
         Begin TextField txtBroadcastTCPort
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
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   152
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
            Top             =   435
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   100
         End
         Begin Label StaticText181
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "UDP Port"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   436
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin Label StaticText1811
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   40
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
            Text            =   "Broadcast every"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   404
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin TextField txtBroadcastRate
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
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   152
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
            Top             =   403
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   25
         End
         Begin Label StaticText18111
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   189
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Frame"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   404
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   78
         End
      End
   End
   Begin PushButton cmdOK
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "OK"
      Default         =   False
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   736
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   "0"
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   506
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
		  
		  Dim i,c as Integer
		  Dim s as string
		  dim slist(-1) as string
		  
		  if Globals.ptyOnClose = True then exit
		  
		  //**************** Tab System *******************
		  chkStartDelayed.Value = Globals.ptyStartDelayed
		  chkEnableKeyboardEvents.value = Globals.pty_EnableKeyboardEvents
		  txtAutoload.Text = Globals.Autoload
		  chkLoggAck.Value = bLoggAck
		  chkLogToFile.value = bLogToFile
		  
		  spnPlaylistTextsize.Min = 9
		  spnPlaylistTextsize.Max = 20
		  spnPlaylistTextsize.SetVal(pt_PlaylistTextsize)
		  txtAutostart.Text = pty_Autostart
		  chkModalPlaylist.Value = Globals.ptyModalPlaylist
		  chkStartWithPlaylist.Value = Globals.ptyStartWithPlaylist
		  chkBroadcastWaitForTC.value = Globals.ptyBroadcastWaitForTC
		  txtBroadcastTCPort.Text = str(Globals.ptyBroadcastTC_Port)
		  if Globals.ptyBroadcastWaitForTC = True then
		    frmMain.UDPTC.Port = Globals.ptyBroadcastTC_Port
		    frmMain.UDPTC.Connect
		  end
		  txtBroadcastRate.Text = str(ptyBroadcastTCRate)
		  
		  //**************** Tab Remote Services *******************
		  DisableClickEvents = true
		  'Commports
		  cmbCommports.DeleteAllRows
		  
		  s = IOMan.GetCommportList
		  
		  if s <> "Timeout" then
		    for i = 1 to CountFields(s,",")
		      slist.Append(NthField(s,",",i))
		    next
		    #if not TargetWin32 then slist.Sort
		    for i = 0 to UBound(slist)
		      cmbCommports.AddRow(slist(i))
		    next
		  else
		    MsgBox("Got Timeout! Please check if node is alive and try again")
		  end
		  cmbCommports.Text = remoteRS232Port
		  
		  
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
		  cmbBaud.ListIndex = remoteRS232Baud
		  
		  'DataBits
		  cmbDataBits.DeleteAllRows
		  cmbDataBits.AddRow("5")
		  cmbDataBits.AddRow("6")
		  cmbDataBits.AddRow("7")
		  cmbDataBits.AddRow("8")
		  cmbDataBits.ListIndex = remoteRS232DataBits
		  
		  'StopBits
		  cmbStopBits.DeleteAllRows
		  cmbStopBits.AddRow("1")
		  cmbStopBits.AddRow("1.5")
		  cmbStopBits.AddRow("2")
		  cmbStopBits.ListIndex = remoteRS232StopBits
		  
		  'Parity
		  cmbParity.DeleteAllRows
		  cmbParity.AddRow("none")
		  cmbParity.AddRow("odd")
		  cmbParity.AddRow("even")
		  cmbParity.ListIndex = remoteRS232Parity
		  
		  
		  chkEnableRS232Service.Value = remoteRS232ServiceEnabled
		  
		  txtTCPPort.Text = str(remoteTCPPort)
		  txtMaxClients.Text = str(remoteTCPMaxClients)
		  chkEnableTCPService.Value = remoteTCPServiceEnabled
		  
		  txtUDPPort.Text = str(remoteUDPPort)
		  chkEnableUDPService.Value = remoteUDPServiceEnabled
		  
		  txtHTTPDocs.Text = NodeIF.remoteHTTPDocumentRoot
		  txtHTTPMaxClients.Text = str(NodeIF.remoteHTTPMaxClients)
		  txtHTTPPort.Text = str(NodeIF.remoteHTTPPort)
		  txtBrowserURL.Text = "http://" + NodeIF.mHTTPServer.LocalAddress+":"+str(NodeIF.remoteHTTPPort)
		  chkEnableHTTPService.Value = NodeIF.remoteHTTPServiceEnabled
		  
		  DisableClickEvents = false
		  //**************** Tab Cueset Editor *******************
		  spnEditTextsize.Min = 1
		  spnEditTextsize.Max = 25
		  spnEditTextsize.SetVal(Globals.EditorTextsize)
		  
		  chkCuesetEditReadOnly.Value = Globals.CuesetEditReadOnly
		  chkColorSyntax.Value = Globals.ColorSyntax
		  chkKeywords.Value = Globals.ColorKeywords
		  chkNumberStrings.Value = Globals.ColorNumberString
		  chkRemarks.Value = Globals.ColorRemarks
		  if Globals.ColorSyntax = true then 
		    grpColorSyntax.Enabled = true
		  else
		    grpColorSyntax.Enabled = false
		  end
		  
		  //Fill Font Combo
		  cmbFont.DeleteAllRows
		  For i=0 to FontCount-1
		    cmbFont.AddRow(Font(i))
		  Next
		  
		  //Select the current Font
		  c = 0
		  BlockUpdate = true
		  for i = 0 to cmbFont.ListCount-1
		    cmbFont.ListIndex = i
		    cmbFont.Refresh
		    if cmbFont.Text = Globals.EditFont then c = i
		  next
		  chkEnableKeyboardEvents.Value = Globals.pty_EnableKeyboardEvents
		  BlockUpdate = False
		  cmbFont.ListIndex = c
		  
		  chkEnableUserCheck.Value = Globals.ptyUserAuth
		  for i = 0 to UBound(Globals.aRemoteUsers)
		    lstUsers.AddRow(Globals.aRemoteUsers(i).UserName)
		    lstUsers.Cell(lstUsers.LastIndex,1) = Globals.aRemoteUsers(i).Password
		    lstUsers.Cell(lstUsers.LastIndex,2) = str(Globals.aRemoteUsers(i).Rights)
		  next
		  
		  spnChaseBalistic.Min = 0
		  spnChaseBalistic.Max = 100
		  spnChaseBalistic.SetVal(pty_ChaseBallistic)
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		BlockUpdate As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		DisableClickEvents As boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events chkCuesetEditReadOnly
	#tag Event
		Sub Action()
		  if me.Value = true then
		    globals.CuesetEditReadOnly = true
		    frmMain.txtCuesetScript.ReadOnly = true
		  else
		    globals.CuesetEditReadOnly = false
		    frmMain.txtCuesetScript.ReadOnly = false
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkKeywords
	#tag Event
		Sub Action()
		  Globals.ColorKeywords = me.Value
		  frmMain.txtCuesetScript.ColorKeywords = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkNumberStrings
	#tag Event
		Sub Action()
		  Globals.ColorNumberString = me.Value
		  frmMain.txtCuesetScript.ColorNumberStrings = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkRemarks
	#tag Event
		Sub Action()
		  Globals.ColorRemarks = me.Value
		  frmMain.txtCuesetScript.ColorRemarks = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkColorSyntax
	#tag Event
		Sub Action()
		  Globals.ColorSyntax = me.Value
		  frmMain.txtCuesetScript.DoColorSyntax = me.Value
		  if me.Value = true then
		    grpColorSyntax.Enabled = true
		  else
		    grpColorSyntax.Enabled = false
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events spnEditTextsize
	#tag Event
		Sub Change()
		  Globals.EditorTextsize = me.GetVal
		  frmMain.txtCuesetScript.TextSize = me.GetVal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmbFont
	#tag Event
		Sub Change()
		  if BlockUpdate = false then
		    Globals.EditFont = me.Text
		    frmMain.txtCuesetScript.TextFont = me.Text
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdSelectAutoload
	#tag Event
		Sub Action()
		  Dim dlg as New OpenDialog
		  Dim f as FolderItem
		  Dim VC3_FileType as New FileType
		  
		  
		  VC3_FileType.Name = "Project/V-Control"
		  VC3_FileType.MacType = "VC3"
		  VC3_FileType.Extensions = "vc3;vc3"
		  
		  
		  dlg.ActionButtonCaption="Select"
		  dlg.Title="Source Folder"
		  dlg.PromptText="Select Source Folder"
		  #If Not ( TargetLinux) then
		    dlg.InitialDirectory= Volume(0).Child("Documents")
		  #Else   //open Home directory on linux
		    dlg.InitialDirectory= SpecialFolder.Documents
		  #endif
		  dlg.Filter = VC3_FileType
		  f=dlg.ShowModal()
		  if f <> Nil then
		    //use the folderitem here
		    txtAutoload.Text = f.AbsolutePath
		    Autoload = f.AbsolutePath
		  else
		    //user cancelled
		    Autoload = ""
		    txtAutoload.Text = ""
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtAutostart
	#tag Event
		Sub TextChange()
		  pty_Autostart = me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdSelectAutostart
	#tag Event
		Sub Action()
		  frmAutostartSelector.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkEnableKeyboardEvents
	#tag Event
		Sub Action()
		  if BlockUpdate = false then Globals.pty_EnableKeyboardEvents = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkStartDelayed
	#tag Event
		Sub Action()
		  if BlockUpdate = false then Globals.ptyStartDelayed = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkEnableHTTPService
	#tag Event
		Sub Action()
		  if me.Value = True then
		    txtHTTPDocs.Enabled = false
		    txtHTTPPort.Enabled = false
		    txtHTTPMaxClients.Enabled = false
		    cmdSetDocDir.Enabled = false
		  else
		    txtHTTPDocs.Enabled = true
		    txtHTTPPort.Enabled = true
		    txtHTTPMaxClients.Enabled = true
		    cmdSetDocDir.Enabled = True
		  end
		  
		  if DisableClickEvents = false then
		    remoteHTTPServiceEnabled = me.Value
		    if me.Value = true then
		      NodeIF.remoteHTTPDocumentRoot = txtHTTPDocs.Text
		      NodeIF.remoteHTTPMaxClients = val(txtHTTPMaxClients.Text)
		      NodeIF.remoteHTTPPort = val(txtHTTPPort.Text)
		      txtBrowserURL.Text = "http://" + NodeIF.mHTTPServer.LocalAddress+":"+str(NodeIF.remoteHTTPPort)
		    end
		    
		  end
		  
		  NodeIF.Init
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdSetDocDir
	#tag Event
		Sub Action()
		  Dim dlg as New SelectFolderDialog
		  Dim f as FolderItem
		  
		  dlg.ActionButtonCaption="Select"
		  dlg.Title="Source Folder"
		  dlg.PromptText="Select Source Folder"
		  
		  f = GetFolderItem(NodeIF.remoteHTTPDocumentRoot)
		  if f <> nil then
		    dlg.InitialDirectory = f
		  else
		    #If Not ( TargetLinux) then
		      dlg.InitialDirectory= Volume(0).Child("Documents")
		    #Else   //open Home directory on linux
		      dlg.InitialDirectory= Volume(0).Child("home")
		    #endif
		  end
		  f=dlg.ShowModal()
		  if f <> Nil then
		    //use the folderitem here
		    txtHTTPDocs.Text = f.AbsolutePath
		    remoteHTTPDocumentRoot = f.AbsolutePath
		  else
		    //user cancelled
		    remoteHTTPDocumentRoot = ""
		    txtHTTPDocs.Text = ""
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkEnableTCPService
	#tag Event
		Sub Action()
		  if me.Value = True then
		    txtMaxClients.Enabled = false
		    txtTCPPort.Enabled = false
		  else
		    txtMaxClients.Enabled = true
		    txtTCPPort.Enabled = true
		  end
		  
		  if DisableClickEvents = false then
		    remoteTCPServiceEnabled = me.Value
		    if me.Value = true then
		      NodeIF.remoteTCPPort = val(txtTCPPort.Text)
		      NodeIF.remoteTCPMaxClients = val(txtMaxClients.Text)
		      
		    end
		    
		  end
		  NodeIF.Init
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkEnableUDPService
	#tag Event
		Sub Action()
		  if me.Value = True then
		    txtUDPPort.Enabled = false
		  else
		    txtUDPPort.Enabled = true
		  end
		  
		  if DisableClickEvents = false then
		    remoteUDPServiceEnabled = me.Value
		    if me.Value = true then NodeIF.remoteUDPPort = val(txtUDPPort.Text)
		  end
		  NodeIF.Init
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkEnableRS232Service
	#tag Event
		Sub Action()
		  if me.Value = true then
		    cmbCommports.Enabled = false
		    cmbBaud.Enabled = false
		    cmbDataBits.Enabled = false
		    cmbParity.Enabled = false
		    cmbStopBits.Enabled = false
		  else
		    cmbCommports.Enabled = true
		    cmbBaud.Enabled = true
		    cmbDataBits.Enabled = true
		    cmbParity.Enabled = true
		    cmbStopBits.Enabled = true
		  end
		  
		  if DisableClickEvents = false then
		    remoteRS232ServiceEnabled = me.Value
		    if me.Value = true then
		      NodeIF.remoteRS232Baud = cmbBaud.ListIndex
		      NodeIF.remoteRS232DataBits = cmbDataBits.ListIndex
		      NodeIF.remoteRS232Parity=cmbParity.ListIndex
		      NodeIF.remoteRS232Port = cmbCommports.Text
		      NodeIF.remoteRS232StopBits = cmbStopBits.ListIndex
		    end
		    NodeIF.Init
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkEnableUserCheck
	#tag Event
		Sub Action()
		  lblKnownUsers.Enabled = me.Value
		  lblUserName.Enabled = me.Value
		  lblPassword.Enabled = me.Value
		  lblGroup.Enabled = me.Value
		  lstUsers.Enabled = me.Value
		  txtUserName.Enabled = me.Value
		  txtPassword.Enabled = me.Value
		  optGroupUser.Enabled = me.Value
		  optGroupLevel1.Enabled = me.Value
		  optGroupLevel2.Enabled = me.Value
		  optGroupAdmin.Enabled = me.Value
		  cmdAddUser.Enabled = me.Value
		  cmdDeleteUser.Enabled = me.Value
		  
		  Globals.ptyUserAuth = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddUser
	#tag Event
		Sub Action()
		  Dim m as New MD5Digest
		  Dim s1 as String
		  dim r as integer
		  dim bres as Boolean
		  
		  
		  m = new MD5Digest
		  
		  s1=txtPassword.Text
		  m.Process(s1)
		  s1=m.Value
		  
		  if optGroupUser.Value = true then r=1
		  if optGroupLevel1.Value = true then r=2
		  if optGroupLevel2.Value = true then r=3
		  if optGroupAdmin.Value = true then r=4
		  
		  bres = Globals.AddRemoteUser(txtUserName.Text,s1,r)
		  if bres = true then
		    lstUsers.AddRow(txtUserName.Text)
		    lstUsers.Cell(lstUsers.LastIndex,1) = s1
		    lstUsers.Cell(lstUsers.LastIndex,2) = str(r)
		  else
		    MsgBox("UserName exists")
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdDeleteUser
	#tag Event
		Sub Action()
		  dim i as integer
		  
		  for i = 0 to lstUsers.LastIndex
		    if lstUsers.Selected(i) = true then
		      Globals.aRemoteUsers.Remove(i)
		      lstUsers.RemoveRow(i)
		      Return
		    end
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkLoggAck
	#tag Event
		Sub Action()
		  bLoggAck = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkLogToFile
	#tag Event
		Sub Action()
		  Globals.bLogToFile = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdDeleteLogfile
	#tag Event
		Sub Action()
		  dim f as FolderItem
		  
		  f = GetFolderItem ("Logfile.txt")
		  if f.Exists then f.Delete
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events spnChaseBalistic
	#tag Event
		Sub Change()
		  Globals.pty_ChaseBallistic = me.GetVal
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events spnPlaylistTextsize
	#tag Event
		Sub Change()
		  Globals.pt_PlaylistTextsize = me.GetVal
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkStartWithPlaylist
	#tag Event
		Sub Action()
		  Globals.ptyStartWithPlaylist = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkModalPlaylist
	#tag Event
		Sub Action()
		  Globals.ptyModalPlaylist = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkBroadcastWaitForTC
	#tag Event
		Sub Action()
		  Globals.ptyBroadcastWaitForTC = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtBroadcastTCPort
	#tag Event
		Sub TextChange()
		  ptyBroadcastTC_Port = val(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtBroadcastRate
	#tag Event
		Sub TextChange()
		  ptyBroadcastTCRate  = val(me.Text)
		  if ptyBroadcastTCRate < 1 then ptyBroadcastTCRate = 1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdOK
	#tag Event
		Sub Action()
		  Globals.WriteIni
		  frmOptions.Close
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
		Name="BlockUpdate"
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
		Name="DisableClickEvents"
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
