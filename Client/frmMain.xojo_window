#tag Window
Begin Window frmMain
   BackColor       =   &c50505000
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   732
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   616097791
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Untitled"
   Visible         =   False
   Width           =   1032
   Begin Placard Placard1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   274
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   5
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   9
      Value           =   False
      Visible         =   True
      Width           =   1025
      Begin ListBox lstDevices
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
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   225
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "Placard1"
         InitialValue    =   "Devices"
         Italic          =   False
         Left            =   17
         LockBottom      =   False
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
         Top             =   47
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   140
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin ListBox lstACK
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   4
         ColumnsResizable=   True
         ColumnWidths    =   "20%,25%,20%35%"
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
         Height          =   234
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "Placard1"
         InitialValue    =   "Device	Command	Channel	ACK"
         Italic          =   False
         Left            =   755
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
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
         Top             =   40
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   268
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin TabPanel tbGuiStd
         AutoDeactivate  =   True
         Bold            =   False
         Enabled         =   False
         Height          =   258
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Placard1"
         Italic          =   False
         Left            =   160
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Panels          =   ""
         Scope           =   "0"
         SmallTabs       =   False
         TabDefinition   =   "Commands\rEvents\rSetup"
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   18
         Underline       =   False
         Value           =   0
         Visible         =   True
         Width           =   592
         Begin ListBox lstAvailableChannels
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
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   205
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   "Available Channels:"
            Italic          =   False
            Left            =   165
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   "0"
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   1
            TabIndex        =   24
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   56
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   200
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin ListBox lstDeviceChannels
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
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   205
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   "Device Channels:"
            Italic          =   False
            Left            =   532
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   "0"
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   1
            TabIndex        =   25
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   56
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   200
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin ListBox lstEventChannels
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
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   218
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   "Channels"
            Italic          =   False
            Left            =   166
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   "0"
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   26
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   49
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin ListBox lstDeviceEvents
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   2
            ColumnsResizable=   True
            ColumnWidths    =   "40,120"
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
            Height          =   218
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   "Pos	Events"
            Italic          =   False
            Left            =   289
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
            TabIndex        =   27
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   49
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   185
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin PushButton cmdAdd
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Add >>"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   377
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   29
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   142
            Underline       =   False
            Visible         =   True
            Width           =   145
         End
         Begin PushButton cmdDelete
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "<< Remove"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   377
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   30
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   179
            Underline       =   False
            Visible         =   True
            Width           =   145
         End
         Begin PushButton cmdAddEvent
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Add Event"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   646
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   31
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   242
            Underline       =   False
            Visible         =   True
            Width           =   83
         End
         Begin GroupBox GroupBox2
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Device Parameter"
            Enabled         =   True
            Height          =   75
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   487
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   32
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   53
            Underline       =   False
            Visible         =   True
            Width           =   242
            Begin TextField txtDP2Text1
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
               InitialParent   =   "GroupBox2"
               Italic          =   False
               Left            =   606
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
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   ""
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   100
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   False
               Width           =   95
            End
            Begin TextField txtDP1Text1
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
               InitialParent   =   "GroupBox2"
               Italic          =   False
               Left            =   606
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
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   ""
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   73
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   False
               Width           =   95
            End
            Begin Label lblDP2Name1
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox2"
               Italic          =   False
               Left            =   497
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   "0"
               Selectable      =   False
               TabIndex        =   2
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   "DP2Name"
               TextAlign       =   0
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   100
               Transparent     =   False
               Underline       =   False
               Visible         =   False
               Width           =   97
            End
            Begin Label lblDP1Name1
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox2"
               Italic          =   False
               Left            =   497
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   "0"
               Selectable      =   False
               TabIndex        =   3
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   "DP1Name"
               TextAlign       =   0
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   73
               Transparent     =   False
               Underline       =   False
               Visible         =   False
               Width           =   97
            End
         End
         Begin Label lblP1Name1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   503
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   33
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "P1Name"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   128
            Transparent     =   False
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin Label lblP2Name1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   503
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   35
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "P2Name"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   154
            Transparent     =   False
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin TextField txtP2Text1
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
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   612
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
            TabIndex        =   36
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   156
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   False
            Width           =   123
         End
         Begin Label lblP3Name1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   503
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   37
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "P3Name"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   180
            Transparent     =   False
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin TextField txtP3Text1
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
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   612
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
            TabIndex        =   38
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   182
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   False
            Width           =   123
         End
         Begin Label lblP4Name1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   503
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   39
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "P4Name"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   208
            Transparent     =   False
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin TextField txtP4Text1
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
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   612
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
            TabIndex        =   40
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   208
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   False
            Width           =   123
         End
         Begin PopupMenu cmbP1Combo1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   ""
            Italic          =   False
            Left            =   619
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   41
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   116
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin PopupMenu cmbP2Combo1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   ""
            Italic          =   False
            Left            =   619
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   42
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   98
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin PopupMenu cmbP3Combo1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   ""
            Italic          =   False
            Left            =   619
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   43
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   84
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin PopupMenu cmbP4Combo1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   ""
            Italic          =   False
            Left            =   619
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   44
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   73
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin PopupMenu cmbDP1Combo1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   ""
            Italic          =   False
            Left            =   594
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   45
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   52
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin PopupMenu cmbDP2Combo1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   ""
            Italic          =   False
            Left            =   601
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   46
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   180
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin TSpinButton spnDP1Spin1
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
            InitialParent   =   "tbGuiStd"
            Left            =   505
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Max             =   0
            Min             =   0
            Scope           =   "0"
            TabIndex        =   47
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   49
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   False
            Width           =   98
         End
         Begin TSpinButton spnDP2Spin1
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
            InitialParent   =   "tbGuiStd"
            Left            =   594
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Max             =   0
            Min             =   0
            Scope           =   "0"
            TabIndex        =   48
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   202
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   False
            Width           =   98
         End
         Begin TSpinButton spnP1Spin1
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
            InitialParent   =   "tbGuiStd"
            Left            =   619
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Max             =   0
            Min             =   0
            Scope           =   "0"
            TabIndex        =   49
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   163
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   False
            Width           =   98
         End
         Begin TSpinButton spnP2Spin1
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
            InitialParent   =   "tbGuiStd"
            Left            =   582
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Max             =   0
            Min             =   0
            Scope           =   "0"
            TabIndex        =   50
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   49
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   False
            Width           =   98
         End
         Begin TSpinButton spnP3Spin1
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
            InitialParent   =   "tbGuiStd"
            Left            =   552
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Max             =   0
            Min             =   0
            Scope           =   "0"
            TabIndex        =   51
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   49
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   False
            Width           =   98
         End
         Begin TSpinButton spnP4Spin1
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
            InitialParent   =   "tbGuiStd"
            Left            =   619
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Max             =   0
            Min             =   0
            Scope           =   "0"
            TabIndex        =   52
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   132
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   False
            Width           =   98
         End
         Begin TextField txtP1Text1
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
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   612
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
            TabIndex        =   34
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   130
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   False
            Width           =   123
         End
         Begin ListBox lstChannels
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
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   218
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   "Channels"
            Italic          =   False
            Left            =   166
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   "0"
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   1
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   49
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin ListBox lstCommands
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   2
            ColumnsResizable=   True
            ColumnWidths    =   "40,120"
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
            Height          =   218
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   "Pos	Commands"
            Italic          =   False
            Left            =   289
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
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   49
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   185
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin PushButton cmdAddCmd
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
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   651
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   235
            Underline       =   False
            Visible         =   True
            Width           =   83
         End
         Begin PushButton cmdHelp1
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "?"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   593
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
            Top             =   235
            Underline       =   False
            Visible         =   True
            Width           =   37
         End
         Begin PushButton cmdRunCmd
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Run Cmd"
            Default         =   False
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   502
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   235
            Underline       =   False
            Visible         =   True
            Width           =   83
         End
         Begin Label lblP1Name
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   502
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P1Name"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   121
            Transparent     =   False
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin Label lblP2Name
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   502
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P2Name"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   147
            Transparent     =   False
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin Label lblP3Name
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   502
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P3Name"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   173
            Transparent     =   False
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin Label lblP4Name
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   502
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   8
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "P4Name"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   201
            Transparent     =   False
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin TextField txtP4Text
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
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   611
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
            TabIndex        =   9
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   201
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   False
            Width           =   123
         End
         Begin TextField txtP2Text
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
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   611
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
            TabIndex        =   12
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   149
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   False
            Width           =   123
         End
         Begin TextField txtP1Text
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
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   611
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
            Top             =   124
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   False
            Width           =   123
         End
         Begin GroupBox GroupBox1
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   ""
            Enabled         =   True
            Height          =   75
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   492
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   16
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   46
            Underline       =   False
            Visible         =   True
            Width           =   242
            Begin TextField txtDP2Text
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
               InitialParent   =   "GroupBox1"
               Italic          =   False
               Left            =   611
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
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   93
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   False
               Width           =   115
            End
            Begin TextField txtDP1Text
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
               InitialParent   =   "GroupBox1"
               Italic          =   False
               Left            =   611
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
               Top             =   66
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   False
               Width           =   115
            End
            Begin Label lblDP2Name
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
               Left            =   502
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
               Text            =   "DP2Name"
               TextAlign       =   0
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   93
               Transparent     =   False
               Underline       =   False
               Visible         =   False
               Width           =   97
            End
            Begin Label lblDP1Name
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
               Left            =   502
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
               Text            =   "DP1Name"
               TextAlign       =   0
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   66
               Transparent     =   False
               Underline       =   False
               Visible         =   False
               Width           =   97
            End
            Begin TSpinButton spnDP1Spin
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
               InitialParent   =   "GroupBox1"
               Left            =   611
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Max             =   0
               Min             =   0
               Scope           =   "0"
               TabIndex        =   4
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   66
               Transparent     =   True
               UseFocusRing    =   False
               Visible         =   False
               Width           =   98
            End
            Begin TSpinButton spnDP2Spin
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
               InitialParent   =   "GroupBox1"
               Left            =   611
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Max             =   0
               Min             =   0
               Scope           =   "0"
               TabIndex        =   5
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   93
               Transparent     =   True
               UseFocusRing    =   False
               Visible         =   False
               Width           =   98
            End
            Begin PopupMenu cmbDP2Combo
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   25
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox1"
               InitialValue    =   ""
               Italic          =   False
               Left            =   611
               ListIndex       =   0
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   "0"
               TabIndex        =   6
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   93
               Underline       =   False
               Visible         =   False
               Width           =   98
            End
            Begin PopupMenu cmbDP1Combo
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   25
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "GroupBox1"
               InitialValue    =   ""
               Italic          =   False
               Left            =   611
               ListIndex       =   0
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   "0"
               TabIndex        =   7
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   65
               Underline       =   False
               Visible         =   False
               Width           =   98
            End
         End
         Begin TextField txtP3Text
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
            InitialParent   =   "tbGuiStd"
            Italic          =   False
            Left            =   611
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
            Top             =   174
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   False
            Width           =   123
         End
         Begin TSpinButton spnP1Spin
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
            InitialParent   =   "tbGuiStd"
            Left            =   612
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Max             =   0
            Min             =   0
            Scope           =   "0"
            TabIndex        =   19
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   124
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   False
            Width           =   98
         End
         Begin TSpinButton spnP4Spin
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
            InitialParent   =   "tbGuiStd"
            Left            =   612
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Max             =   0
            Min             =   0
            Scope           =   "0"
            TabIndex        =   20
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   201
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   False
            Width           =   98
         End
         Begin TSpinButton spnP2Spin
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
            InitialParent   =   "tbGuiStd"
            Left            =   611
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Max             =   0
            Min             =   0
            Scope           =   "0"
            TabIndex        =   21
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   153
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   False
            Width           =   98
         End
         Begin TSpinButton spnP3Spin
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
            InitialParent   =   "tbGuiStd"
            Left            =   611
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Max             =   0
            Min             =   0
            Scope           =   "0"
            TabIndex        =   22
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   173
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   False
            Width           =   98
         End
         Begin PopupMenu cmbP3Combo
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   ""
            Italic          =   False
            Left            =   612
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   23
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   172
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin PopupMenu cmbP4Combo
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   ""
            Italic          =   False
            Left            =   612
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
            Top             =   200
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin PopupMenu cmbP1Combo
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   ""
            Italic          =   False
            Left            =   612
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   25
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   124
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
         Begin PopupMenu cmbP2Combo
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbGuiStd"
            InitialValue    =   ""
            Italic          =   False
            Left            =   612
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   26
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   146
            Underline       =   False
            Visible         =   False
            Width           =   98
         End
      End
   End
   Begin Timer GlobalVarRefreshTimer
      Height          =   "32"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   67
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   "0"
      TabPanelIndex   =   "0"
      Top             =   783
      Width           =   "32"
   End
   Begin TabPanel tbProgram
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   385
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   5
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   "0"
      SmallTabs       =   False
      TabDefinition   =   "Cuelists\rScripts\rTimestrips"
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   310
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   1010
      Begin ListBox lstTimestrips
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
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   338
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "tbProgram"
         InitialValue    =   "Timestrips"
         Italic          =   False
         Left            =   16
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   True
         Scope           =   "0"
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   349
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   146
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin GroupBox grpTimestrip
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   ""
         Enabled         =   False
         Height          =   332
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbProgram"
         Italic          =   False
         Left            =   171
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   355
         Underline       =   False
         Visible         =   True
         Width           =   836
         Begin Listbox lstTimestrip
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   1
            ColumnsResizable=   False
            ColumnWidths    =   "150"
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   50
            Enabled         =   True
            EnableDrag      =   False
            EnableDragReorder=   False
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   252
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            InitialValue    =   "Time"
            Italic          =   False
            Left            =   177
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   "0"
            ScrollbarHorizontal=   True
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   429
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   603
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
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
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   298
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
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "00-00-00-00"
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   400
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   89
         End
         Begin PushButton cmdAddTrack
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Add Track"
            Default         =   False
            Enabled         =   True
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   797
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   11
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   367
            Underline       =   False
            Visible         =   True
            Width           =   100
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
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   314
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
            Text            =   "Position:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   371
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   57
         End
         Begin PushButton cmdAddTimestripRow
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Add Position"
            Default         =   False
            Enabled         =   True
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   390
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   13
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   367
            Underline       =   False
            Visible         =   True
            Width           =   118
         End
         Begin PushButton cmdAddMinute
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "+1M"
            Default         =   False
            Enabled         =   True
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   468
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   14
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   397
            Underline       =   False
            Visible         =   True
            Width           =   40
         End
         Begin PushButton cmdAddFrame
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "+1F"
            Default         =   False
            Enabled         =   True
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   390
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   15
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   397
            Underline       =   False
            Visible         =   True
            Width           =   40
         End
         Begin PushButton cmdAddSecond
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "+1S"
            Default         =   False
            Enabled         =   True
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   429
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   16
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   397
            Underline       =   False
            Visible         =   True
            Width           =   40
         End
         Begin PushButton cmdSubSecond
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "-1S"
            Default         =   False
            Enabled         =   True
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   216
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   18
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   397
            Underline       =   False
            Visible         =   True
            Width           =   40
         End
         Begin PushButton cmdSubMinute
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "-1M"
            Default         =   False
            Enabled         =   True
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   177
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   19
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   397
            Underline       =   False
            Visible         =   True
            Width           =   40
         End
         Begin PushButton cmdSubFrame
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "-1F"
            Default         =   False
            Enabled         =   True
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   255
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   20
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   397
            Underline       =   False
            Visible         =   True
            Width           =   40
         End
         Begin PushButton cmdRemoveTrack
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Remove Track"
            Default         =   False
            Enabled         =   True
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   899
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   22
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   367
            Underline       =   False
            Visible         =   True
            Width           =   103
         End
         Begin GroupBox grpChase
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   ""
            Enabled         =   True
            Height          =   284
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   785
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   24
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   397
            Underline       =   False
            Visible         =   True
            Width           =   215
            Begin Listbox lstChaseDevices
               AutoDeactivate  =   True
               AutoHideScrollbars=   True
               Bold            =   False
               Border          =   True
               ColumnCount     =   2
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
               HasHeading      =   True
               HeadingIndex    =   -1
               Height          =   50
               HelpTag         =   ""
               Hierarchical    =   False
               Index           =   -2147483648
               InitialParent   =   "grpChase"
               InitialValue    =   "Device	Channels"
               Italic          =   False
               Left            =   791
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   True
               RequiresSelection=   False
               Scope           =   "0"
               ScrollbarHorizontal=   False
               ScrollBarVertical=   True
               SelectionType   =   0
               TabIndex        =   0
               TabPanelIndex   =   3
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   621
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   200
               _ScrollOffset   =   0
               _ScrollWidth    =   -1
            End
            Begin PushButton cmdRemoveDevice
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "0"
               Cancel          =   False
               Caption         =   "Remove Device"
               Default         =   False
               Enabled         =   True
               Height          =   28
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grpChase"
               Italic          =   False
               Left            =   881
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   True
               Scope           =   "0"
               TabIndex        =   1
               TabPanelIndex   =   3
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   581
               Underline       =   False
               Visible         =   True
               Width           =   113
            End
            Begin PushButton cmdAddChaseDevice
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "0"
               Cancel          =   False
               Caption         =   "Add Device"
               Default         =   False
               Enabled         =   True
               Height          =   28
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grpChase"
               Italic          =   False
               Left            =   790
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   True
               Scope           =   "0"
               TabIndex        =   2
               TabPanelIndex   =   3
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   581
               Underline       =   False
               Visible         =   True
               Width           =   90
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
               InitialParent   =   "grpChase"
               Italic          =   False
               Left            =   793
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
               Text            =   "Timecode Source:"
               TextAlign       =   0
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   416
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   180
            End
            Begin PushButton cmdTCSource
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "0"
               Cancel          =   False
               Caption         =   "Internal Timecode"
               Default         =   False
               Enabled         =   True
               Height          =   28
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grpChase"
               Italic          =   False
               Left            =   793
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   "0"
               TabIndex        =   4
               TabPanelIndex   =   3
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   438
               Underline       =   False
               Visible         =   True
               Width           =   187
            End
            Begin PopupMenu cmbFramerate
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   25
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grpChase"
               InitialValue    =   "25 fps\r\n30 fps"
               Italic          =   False
               Left            =   890
               ListIndex       =   0
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   "0"
               TabIndex        =   5
               TabPanelIndex   =   3
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   526
               Underline       =   False
               Visible         =   True
               Width           =   90
            End
            Begin TextField txtPreroll
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
               InitialParent   =   "grpChase"
               Italic          =   False
               Left            =   930
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
               TabPanelIndex   =   3
               TabStop         =   True
               Text            =   "5"
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   554
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   50
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
               InitialParent   =   "grpChase"
               Italic          =   False
               Left            =   793
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   "0"
               Selectable      =   False
               TabIndex        =   7
               TabPanelIndex   =   3
               TabStop         =   True
               Text            =   "Framerate:"
               TextAlign       =   0
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   526
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   90
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
               InitialParent   =   "grpChase"
               Italic          =   False
               Left            =   793
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   "0"
               Selectable      =   False
               TabIndex        =   8
               TabPanelIndex   =   3
               TabStop         =   True
               Text            =   "Preroll Frames:"
               TextAlign       =   0
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   555
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   99
            End
            Begin Label lblEndTC
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grpChase"
               Italic          =   False
               Left            =   793
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   "0"
               Selectable      =   False
               TabIndex        =   9
               TabPanelIndex   =   3
               TabStop         =   True
               Text            =   "End TC:"
               TextAlign       =   0
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   502
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   90
            End
            Begin Label lblStartTC
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grpChase"
               Italic          =   False
               Left            =   793
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   "0"
               Selectable      =   False
               TabIndex        =   10
               TabPanelIndex   =   3
               TabStop         =   True
               Text            =   "Start TC:"
               TextAlign       =   0
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   479
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   90
            End
            Begin TextField txtStartTC
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
               InitialParent   =   "grpChase"
               Italic          =   False
               Left            =   890
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
               TabPanelIndex   =   3
               TabStop         =   True
               Text            =   "00-00-00-00"
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   478
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   90
            End
            Begin TextField txtEndTC
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
               InitialParent   =   "grpChase"
               Italic          =   False
               Left            =   890
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
               TabIndex        =   12
               TabPanelIndex   =   3
               TabStop         =   True
               Text            =   "01-00-00-00"
               TextColor       =   
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   501
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   90
            End
         End
         Begin PushButton cmdOffset
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Absolute Offset"
            Default         =   False
            Enabled         =   True
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   177
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   25
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   367
            Underline       =   False
            Visible         =   True
            Width           =   118
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
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   520
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
            Text            =   "Relative Offset:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   368
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin PopupMenu cmbVorzeichen
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            InitialValue    =   "+\r\n-"
            Italic          =   False
            Left            =   631
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   29
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   368
            Underline       =   False
            Visible         =   True
            Width           =   40
         End
         Begin TextField txtRelativeOffset
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
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   672
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
            TabIndex        =   30
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "00-00-00-00"
            TextColor       =   
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   369
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   93
         End
         Begin PushButton cmdStartFromPosition
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Run from current TC"
            Default         =   False
            Enabled         =   True
            Height          =   28
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   520
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   31
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   397
            Underline       =   False
            Visible         =   True
            Width           =   156
         End
         Begin CheckBox chkLoop
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Loop"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grpTimestrip"
            Italic          =   False
            Left            =   688
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   0
            TabIndex        =   32
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   400
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   84
         End
      End
      Begin Label lblScrollHint
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbProgram"
         Italic          =   False
         Left            =   298
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
         Text            =   "scroll here"
         TextAlign       =   1
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   344
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin TabPanel tbEventsAndVars
         AutoDeactivate  =   True
         Bold            =   False
         Enabled         =   True
         Height          =   341
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbProgram"
         Italic          =   False
         Left            =   14
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Panels          =   ""
         Scope           =   "0"
         SmallTabs       =   False
         TabDefinition   =   "Events\rGlobal Variables"
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   348
         Underline       =   False
         Value           =   0
         Visible         =   True
         Width           =   385
         Begin ListBox lstEvents
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   11
            ColumnsResizable=   True
            ColumnWidths    =   "60,60,60,80,0,40,40,40,40,40,40"
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
            Height          =   276
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "tbEventsAndVars"
            InitialValue    =   "Device	Channel	Name	Task	TermChar	DP1	DP2	P1	P2	P3	P4"
            Italic          =   False
            Left            =   19
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   "0"
            ScrollbarHorizontal=   True
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   404
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   375
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin ListBox lstGlobalVars
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   2
            ColumnsResizable=   True
            ColumnWidths    =   "100%"
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
            Height          =   276
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "tbEventsAndVars"
            InitialValue    =   "Name	Value"
            Italic          =   False
            Left            =   19
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
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   404
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   375
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin CheckBox chkEnableKeyboardEvents
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Enable Keyboard Events"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbEventsAndVars"
            Italic          =   False
            Left            =   23
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
            Top             =   378
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   174
         End
         Begin CheckBox chkShowGlobals
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Show Var Content (refresh every second)"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "tbEventsAndVars"
            Italic          =   False
            Left            =   23
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
            Top             =   378
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   224
         End
      End
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
         EnableDrag      =   True
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   341
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "tbProgram"
         InitialValue    =   "Scripts"
         Italic          =   False
         Left            =   402
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   True
         Scope           =   "0"
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   348
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   146
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin SyntaxField txtCuesetScript
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
         Enabled         =   False
         Format          =   ""
         Height          =   317
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "tbProgram"
         Italic          =   False
         Left            =   560
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
         ReadOnly        =   True
         Scope           =   "0"
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   348
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   439
      End
      Begin Label lblEditStatus
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tbProgram"
         Italic          =   False
         Left            =   560
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlign       =   0
         TextColor       =   
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   669
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   439
      End
      Begin ListBox lstCuelists
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
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   352
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "tbProgram"
         InitialValue    =   "Cuelists"
         Italic          =   False
         Left            =   5
         LockBottom      =   True
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
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   337
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   219
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin ListBox lstCues
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   5
         ColumnsResizable=   True
         ColumnWidths    =   "5%,20%,20%,20%"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   False
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   1
         GridLinesVertical=   2
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   352
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "tbProgram"
         InitialValue    =   "ID	Device	Channels	Command	Parameter"
         Italic          =   False
         Left            =   225
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   True
         Scope           =   "0"
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   1
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   337
         Underline       =   False
         UseFocusRing    =   False
         Visible         =   True
         Width           =   785
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
   Begin TtbMain tbMain
      Enabled         =   True
      Height          =   59
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   40
      LockedInPosition=   False
      Scope           =   "0"
      TabIndex        =   "3"
      TabPanelIndex   =   "0"
      TabStop         =   True
      Top             =   719
      Visible         =   True
      Width           =   858
   End
   Begin UDPSocket UDPTC
      Height          =   "32"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   118
      LockedInPosition=   False
      Port            =   0
      RouterHops      =   32
      Scope           =   "0"
      SendToSelf      =   False
      TabPanelIndex   =   "0"
      Top             =   777
      Width           =   "32"
   End
   Begin Timer tmeHandleEngineEvent
      Height          =   "32"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   40
      LockedInPosition=   False
      Mode            =   0
      Period          =   30
      Scope           =   "0"
      TabPanelIndex   =   "0"
      Top             =   40
      Width           =   "32"
   End
   Begin Label lblEngineEventMessageStack
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
      Left            =   950
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   "0"
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   286
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   62
   End
   Begin Label Label2
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
      Left            =   638
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   "0"
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Engine Event Message Stack:"
      TextAlign       =   2
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   286
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   262
   End
   Begin Label lblStatus2
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   443
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   "0"
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   0
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   698
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   558
   End
   Begin Label lblStatus
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   5
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   "0"
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   0
      TextColor       =   
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   698
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   437
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  if WasActivated = False then
		    //****************** Lizenz abfragen und setzen *********************************************
		    WasActivated = true
		    
		    '//If Not Registered ask for Registration
		    'if Globals.pt_AppKey = "Demo" then
		    'frmRegister.ShowModal
		    'end
		    //Enable Keyboard Events
		    chkEnableKeyboardEvents.Value = Globals.pty_EnableKeyboardEvents
		    if Globals.ptyStartWithPlaylist = true then 
		      if Globals.ptyModalPlaylist = true then
		        frmPlaylistModal.SetFocus
		      else
		        frmPlaylist.SetFocus
		      end
		    end
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  Dim n as Integer
		  
		  Globals.ptyOnClose = true
		  
		  
		  if Globals.ProjectChanged = true then
		    n=MsgBox("Project has changed, save ?",36)
		    If n=6 then
		      frmSplash.Show
		      frmSplash.lblStatus.Text = "saving project..."
		      frmSplash.lblStatus.Refresh
		      app.DoEvents
		      SaveProject
		      WaitTicks(6)
		    end if
		  end
		  
		  frmSplash.Show
		  
		  'app.DoEvents
		  frmSplash.lblStatus.Text = "stopping all Cuesets..."
		  frmSplash.lblStatus.Refresh
		  StopAllCuesets
		  app.DoEvents
		  WaitTicks(6)
		  
		  
		  frmSplash.lblStatus.Text = "closing manager ini..."
		  frmSplash.lblStatus.Refresh
		  IOMan.OnClose
		  ScrMan.OnClose
		  NodeIF.OnClose
		  app.DoEvents
		  WaitTicks(6)
		  
		  
		  
		  frmSplash.lblStatus.Text = "closing forms..."
		  frmSplash.lblStatus.Refresh
		  frmDeviceSetup.Close
		  frmDeviceEditor.Close
		  frmOptions.Close
		  frmPlaylist.Close
		  frmPlaylistModal.Close
		  frmCmdEditor.Close
		  frmScriptEditor.Close
		  frmCategories.Close
		  frmConfigureChannels.Close
		  frmDeviceSetup.Close
		  frmHexCalc.Close
		  frmDeviceHelp.Close
		  frmCalendarEvent.Close
		  frmTimerEvent.Close
		  frmKeyboardEvent.Close
		  frmButtons.Close
		  
		  app.DoEvents
		  WaitTicks(6)
		  
		  
		  
		  frmSplash.Close
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  if tbProgram.Value = 0 then
		    mnuInsertGetGlobalVar.Enabled = false
		    mnuInsertSetGlobalVar.Enabled = false
		    mnuInsertDelay.Enabled = true
		    mnuInsertRepeat.Enabled = true
		  end
		  if tbProgram.Value = 1 then
		    mnuInsertGetGlobalVar.Enabled = true
		    mnuInsertSetGlobalVar.Enabled = true
		    mnuInsertDelay.Enabled = true
		    mnuInsertRepeat.Enabled = false
		  end
		  
		  if tbProgram.Value = 2 then
		    mnuInsertGetGlobalVar.Enabled = false
		    mnuInsertSetGlobalVar.Enabled = false
		    mnuInsertRepeat.Enabled = false
		    mnuInsertDelay.Enabled = false
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
		  
		  
		  dim res as string
		  dim d as new Date
		  dim i as integer
		  
		  #if DebugBuild then
		    //Für Debug unter Linux nfs
		    'dbDeviceDatabaseName =  "/home/dw/mnt/nfs/vdaten/pgm/V-Control/V-Control3/" + dbDeviceDatabaseName
		    'IniFileName = "/home/dw/mnt/nfs/vdaten/pgm/V-Control/V-Control3/"  + IniFileName
		    'Globals.InterpreterPath = "/home/dw/mnt/nfs/vdaten/pgm/V-Control/V-Control3/"+ globals.InterpreterPath
		    'Globals.TimestripInterpreterPath =  "/home/dw/mnt/nfs/vdaten/pgm/V-Control/V-Control3/" + Globals.TimestripInterpreterPath
		    'Globals.RemoteUserDB = "/home/dw/mnt/nfs/vdaten/pgm/V-Control/V-Control3/users.db"
		    'Scrman.ScrmanIniFileName = "/home/dw/mnt/nfs/vdaten/pgm/V-Control/V-Control3/scrman.ini"
		    'IOMan.ioIniPath = "/home/dw/mnt/nfs/vdaten/pgm/V-Control/V-Control3/"
		    
		    
		    //Für Debug unter Linux Laptop
		    'dbDeviceDatabaseName =  "/mnt/localD/vdaten/pgm/V-Control_GPL/" + dbDeviceDatabaseName
		    'IniFileName = "/mnt/localD/vdaten/pgm/V-Control_GPL/"  + IniFileName
		    'Globals.InterpreterPath = "/mnt/localD/vdaten/pgm/V-Control_GPL/"+ globals.InterpreterPath
		    'Globals.TimestripInterpreterPath =  "/mnt/localD/vdaten/pgm/V-Control_GPL/" + Globals.TimestripInterpreterPath
		    'Globals.RemoteUserDB = "/mnt/localD/vdaten/pgm/V-Control_GPL/users.db"
		    'Scrman.ScrmanIniFileName = "/mnt/localD/vdaten/pgm/V-Control_GPL/scrman.ini"
		    'IOMan.ioIniPath = "/mnt/localD/vdaten/pgm/V-Control_GPL/"
		    
		    
		    
		    //Für Debug unter Windows Laptop lokal
		    dbDeviceDatabaseName =  "D:\vdaten\pgm\V-Control_GPL\" + dbDeviceDatabaseName
		    IniFileName = "D:\vdaten\pgm\V-Control_GPL\" + IniFileName
		    Globals.InterpreterPath = "D:\vdaten\pgm\V-Control_GPL\" + globals.InterpreterPath
		    Globals.TimestripInterpreterPath =  "D:\vdaten\pgm\V-Control_GPL\" + Globals.TimestripInterpreterPath
		    Globals.RemoteUserDB = "D:\vdaten\pgm\V-Control_GPL\users.db"
		    Scrman.ScrmanIniFileName = "D:\vdaten\pgm\V-Control_GPL\scrman.ini"
		    IOMan.ioIniPath = "D:\vdaten\pgm\V-Control_GPL\"
		    
		    
		    
		  #else
		    res = app.ExecutableFile.AbsolutePath
		    if TargetWin32 then res = left(res,Len(res)-18)
		    if TargetLinux then res = left(res,Len(res)-14)
		    if TargetMacOS then res = left(res,Len(res)-48)
		    
		    dbDeviceDatabaseName =  res + dbDeviceDatabaseName
		    
		    IniFileName = res + IniFileName
		    Globals.InterpreterPath = res + globals.InterpreterPath
		    Globals.TimestripInterpreterPath =  res + Globals.TimestripInterpreterPath
		    Globals.RemoteUserDB = res+"users.db"
		    Scrman.ScrmanIniFileName = res+"scrman.ini"
		    IOMan.ioIniPath = res
		  #endif
		  
		  //Remote Debugger
		  'res = app.ExecutableFile.AbsolutePath
		  'res = left(res,Len(res)-23)
		  'dbDeviceDatabaseName =  res + dbDeviceDatabaseName
		  'IniFileName = res + IniFileName
		  'Globals.InterpreterPath = res + globals.InterpreterPath
		  'Globals.TimestripInterpreterPath =  res + Globals.TimestripInterpreterPath
		  'Globals.RemoteUserDB = res+"users.db"
		  'Scrman.ScrmanIniFileName = res+"scrman.ini"
		  'IOMan.ioIniPath = res
		  
		  
		  
		  me.Visible = false
		  Globals.pty_ListBackColor = color(&hf0f0f0)
		  
		  
		  GlobalVarRefreshTimer.Enabled = false
		  
		  res = DevMan.OpenDatabase
		  if res <> "0" then MsgBox("Could not find the Device database, Error " + res)
		  
		  Globals.ReadIni
		  
		  //Delayed starten
		  if Globals.ptyStartDelayed = true then
		    for i = 1 to 20
		      WaitTicks(60)
		      app.DoEvents
		      frmSplash.lblStatus.Text = "Waiting for system drivers "+str(i)+" ... 20"
		      frmSplash.lblStatus.Refresh
		      frmSplash.imgLogo.Refresh
		      app.DoEvents
		    next
		  end
		  
		  //check License
		  if Globals.pty_LicenseOK = false then
		    frmSplash.Close
		    frmLicense.ShowModal
		    if Globals.pty_LicenseOK = false then quit
		    
		  end
		  
		  IOMan.Init
		  ScrMan.Init
		  NodeIF.Init
		  Timestrip.InitTimestrip
		  
		  // Set Colors
		  
		  
		  
		  //Restore Screen Position
		  frmMain.Left = Globals.LastLeftPosition
		  frmMain.Top = Globals.LastTopPosition
		  frmMain.Width = Globals.LastWidth
		  frmMain.Height = Globals.LastHeight
		  Globals.CurrentScript = "not saved.vc3"
		  frmMain.Title = Globals.cnt_ProgamName + " "  + CurrentScript
		  //frmMain.Refresh
		  frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
		  
		  
		  if Autoload <> "" then 
		    frmSplash.lblStatus.Text = "Loading " + Autoload
		    frmSplash.lblStatus.Refresh
		    frmSplash.Refresh
		    frmMain.OpenProject(Autoload)
		  end
		  txtCuesetScript.DoColorSyntax = Globals.ColorSyntax
		  txtCuesetScript.TextSize = Globals.EditorTextsize
		  txtCuesetScript.ColorKeywords = Globals.ColorKeywords
		  txtCuesetScript.ColorNumberStrings = Globals.ColorNumberString
		  txtCuesetScript.ColorRemarks = Globals.ColorRemarks
		  txtCuesetScript.TextFont = Globals.EditFont
		  lstACK.ColumnWidths = lstAckColumnWidths
		  lstCues.ColumnWidths = lstCueColumnWidths
		  lstEvents.ColumnWidths = lstEventsColumnWidths
		  
		  lstCues.ColumnSortDirection(0) = 0
		  lstCues.ColumnSortDirection(1) = 0
		  lstCues.ColumnSortDirection(2) = 0
		  lstCues.ColumnSortDirection(3) = 0
		  lstCues.ColumnSortDirection(4) = 0
		  
		  //UndoStore = new TUndoStore
		  
		  
		  WasActivated = false
		  
		  
		  //Check SyncPlay
		  if Globals.pt_AllowSyncPlayback = true then
		    lstChannels.SelectionType = 1
		  else
		    lstChannels.SelectionType = 0
		    //Delete the Timestrip
		    
		  end
		  
		  frmSplash.Close
		  me.Visible = true
		  tmeHandleEngineEvent.Mode = 2
		  //Autostart Task
		  if pty_Autostart <> "" then res = ScrMan.RunCueset(pty_Autostart,0)
		  //Playliste anzeigen?
		  if Globals.ptyStartWithPlaylist = true then
		    
		    if Globals.ptyModalPlaylist = true then
		      frmPlaylistModal.Show
		      frmPlaylistModal.SetFocus
		      app.DoEvents
		      WaitTicks(10)
		      frmPlaylistModal.ShowModal
		    else
		      frmPlaylist.Show
		    end
		    
		  end
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function mnuConfigChannels() As Boolean Handles mnuConfigChannels.Action
			frmConfigureChannels.Show
			Globals.ProjectHasChanged(true)
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuConfigDeviceEditor() As Boolean Handles mnuConfigDeviceEditor.Action
			db_Mode = true
			Globals.ProjectHasChanged(true)
			frmDeviceEditor.Show
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuConfigDevices() As Boolean Handles mnuConfigDevices.Action
			frmDeviceSetup.Show
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuConfigSavePositions() As Boolean Handles mnuConfigSavePositions.Action
			//Safe last position
			Globals.LastHeight = me.Height
			Globals.LastLeftPosition = me.Left
			Globals.LastTopPosition = me.Top
			Globals.LastWidth = me.Width
			//lstAck ColumnWidth speichern
			lstAckColumnWidths = lstACK.ColumnWidths
			lstCueColumnWidths = lstCues.ColumnWidths
			lstEventsColumnWidths = lstEvents.ColumnWidths
			Globals.WriteIni
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuConfigSyncPort() As Boolean Handles mnuConfigSyncPort.Action
			dim TI as New TInputWindow
			dim res as String
			
			TI .lblMsg.Text = "Set the Sync Port (i.E. COM1 in Windows or /dev/ttyS0 in Linux. An emtpy value will close the port)"
			TI.txtValue.Text = IOMan.GetSyncPort
			TI .ShowModal
			
			if TI .CancelPrtessed then
			exit
			else
			res = IOMan.SetSyncPort( TI.StringResult)
			if res <> "0" then 
			if res = "-1019" then 
			MsgBox("Sync Play Feature not enabled")
			else
			MsgBox("Sync Port not available")
			end
			end
			end
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCueGlobalVars() As Boolean Handles mnuCueGlobalVars.Action
			tbEventsAndVars.Value = 1
			AddGlobalVar
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCueremoveGlobal() As Boolean Handles mnuCueremoveGlobal.Action
			RemoveGlobalVar
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesCopy() As Boolean Handles mnuCuesCopy.Action
			CopyCue
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesCut() As Boolean Handles mnuCuesCut.Action
			CutCue
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesetCut() As Boolean Handles mnuCuesetCut.Action
			CutCueset
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesetsAdd() As Boolean Handles mnuCuesetsAdd.Action
			AddCueset
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesetsCopy() As Boolean Handles mnuCuesetsCopy.Action
			CopyCueset
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesetsDelete() As Boolean Handles mnuCuesetsDelete.Action
			DeleteCueset
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesetsPaste() As Boolean Handles mnuCuesetsPaste.Action
			PasteCueset
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesetsRename() As Boolean Handles mnuCuesetsRename.Action
			RenameCueset
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesetsRun() As Boolean Handles mnuCuesetsRun.Action
			RunCueset
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesetStop() As Boolean Handles mnuCuesetStop.Action
			StopCueset
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesetStopAll() As Boolean Handles mnuCuesetStopAll.Action
			StopAllCuesets
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesPaste() As Boolean Handles mnuCuesPaste.Action
			PasteCue
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuCuesUndo() As Boolean Handles mnuCuesUndo.Action
			txtCuesetScript.Text = UndoStore.GetUndo
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuEditDevices() As Boolean Handles mnuEditDevices.Action
			db_Mode = false
			Globals.ProjectHasChanged(true)
			frmDeviceEditor.Show
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuEditEvent() As Boolean Handles mnuEditEvent.Action
			EditEvent
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuEventsCalendar() As Boolean Handles mnuEventsCalendar.Action
			CalendarEvent
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuEventsDelete() As Boolean Handles mnuEventsDelete.Action
			DeleteEvent
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuEventsDisableAllTimer() As Boolean Handles mnuEventsDisableAllTimer.Action
			dim s,st as String
			
			s = TimerEvents.GetAllTimerEvents
			
			for i as integer = 1 to CountFields(s,chr(3))
			st = NthField(s,chr(3),i)
			TimerEvents.DisableTimerEvent(NthField(st,chr(2),2))
			next
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuEventsTimer() As Boolean Handles mnuEventsTimer.Action
			TimerEvent
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuEventsTimerEnambeAll() As Boolean Handles mnuEventsTimerEnambeAll.Action
			dim s,st as String
			
			s = TimerEvents.GetAllTimerEvents
			
			for i as integer = 1 to CountFields(s,chr(3))
			st = NthField(s,chr(3),i)
			TimerEvents.EnableTimerEvent(NthField(st,chr(2),2))
			next
			
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuEventsUnlink() As Boolean Handles mnuEventsUnlink.Action
			UnlinkEventCueset
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuEvents_Keyboard() As Boolean Handles mnuEvents_Keyboard.Action
			frmKeyboardEvent.ShowModal
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuFileNew() As Boolean Handles mnuFileNew.Action
			dim res as string
			
			StopAllCuesets
			res = ScrMan.NewProject
			ClearAllGUI
			CurrentSelectedDevice = ""
			CurrentSelectedCueset = ""
			Calendar.ClearAllEvents
			Globals.CurrentScript = "not saved.vc3"
			frmMain.Title = Globals.cnt_ProgamName + " "  + CurrentScript
			frmMain.Refresh
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuFileOpen() As Boolean Handles mnuFileOpen.Action
			LoadProject
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuFileSave() As Boolean Handles mnuFileSave.Action
			SaveProject
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuHelpAbaout() As Boolean Handles mnuHelpAbaout.Action
			frmInfo.Show
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuHelpHtml() As Boolean Handles mnuHelpHtml.Action
			ShowHelp
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuHexCalc() As Boolean Handles mnuHexCalc.Action
			frmHexCalc.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuInserShowMsg() As Boolean Handles mnuInserShowMsg.Action
			dim TI as New TInputWindow
			dim SelCueset as String
			dim i as integer
			dim Clp as new Clipboard
			
			if tbProgram.Value = 0 then
			TI .lblMsg.Text = "Message"
			TI .ShowModal
			if TI .CancelPrtessed then
			exit
			else
			SelCueset = ""
			for i = 0 to lstCuelists.ListCount-1
			if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			i = lstCues.ListIndex
			if i < 0 then i = 0
			lstCues.InsertRow(i,"")
			lstCues.Cell(i,3) = "ShowMessage"
			lstCues.Cell(i,4) = TI.StringResult
			UpdateCuelist(CurrentSelectedCueset)
			
			else
			MsgBox("No cueset selected")
			end
			end
			end
			
			if tbProgram.Value = 1 then
			TI .lblMsg.Text = "Message"
			TI .ShowModal
			if TI .CancelPrtessed then
			exit
			else
			SelCueset = ""
			for i = 0 to lstCuesets.ListCount-1
			if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			
			Clp.SetText "ShowMessage("+""""+TI.StringResult+""""+")" +chr(13)
			
			frmMain.txtCuesetScript.ReadOnly = false
			//Set the cursor to the beginning of the current line
			frmMain.txtCuesetScript.PasteCommand
			frmMain.txtCuesetScript.SetFocus
			frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
			else
			MsgBox("No cueset selected")
			end
			end
			end
			
			if tbProgram.Value = 2 then
			TI .lblMsg.Text = "Message"
			TI .ShowModal
			if TI .CancelPrtessed then
			exit
			else
			
			Clp.SetText "ShowMessage"+chr(10)+"("+""""+TI.StringResult+""""+")"
			if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
			if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
			lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn) = clp.Text
			UpdateTimestripScript
			end
			end
			
			end
			
			
			end
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuInsertDelay() As Boolean Handles mnuInsertDelay.Action
			dim TI as New TInputWindow
			dim SelCueset as string
			dim Clp as new Clipboard
			dim i as integer
			
			
			if tbProgram.Value = 0 then
			TI .lblMsg.Text = "Delay in ms"
			TI .ShowModal
			if TI .CancelPrtessed then
			exit
			else
			SelCueset = ""
			for i = 0 to lstCuelists.ListCount-1
			if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			i = lstCues.ListIndex
			if i < 0 then i = 0
			lstCues.InsertRow(i,"")
			lstCues.Cell(i,3) = "Delay"
			lstCues.Cell(i,4) = TI.StringResult
			UpdateCuelist(CurrentSelectedCueset)
			
			else
			MsgBox("No cueset selected")
			end
			end
			end
			
			if tbProgram.Value = 1 then
			TI .lblMsg.Text = "Delay in ms"
			TI .ShowModal
			if TI .CancelPrtessed then
			exit
			else
			SelCueset = ""
			for i = 0 to lstCuesets.ListCount-1
			if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			
			Clp.SetText "Delay("+""""+TI.StringResult+""""+")" +chr(13)
			
			frmMain.txtCuesetScript.ReadOnly = false
			//Set the cursor to the beginning of the current line
			frmMain.txtCuesetScript.PasteCommand
			frmMain.txtCuesetScript.SetFocus
			frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
			else
			MsgBox("No cueset selected")
			end
			end
			end
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuInsertGetGlobalVar() As Boolean Handles mnuInsertGetGlobalVar.Action
			dim SelCueset as String
			dim i as integer
			
			
			SelCueset = ""
			for i = 0 to lstCuesets.ListCount-1
			if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			frmGlobalVarSelector.InsertFunction = 2
			frmGlobalVarSelector.Show
			end
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuInsertRepeat() As Boolean Handles mnuInsertRepeat.Action
			dim TI as New TInputWindow
			dim SelCueset as String
			dim i as integer
			
			
			TI .lblMsg.Text = "Repeat (0 = for ever)"
			TI .ShowModal
			if TI .CancelPrtessed then
			exit
			else
			SelCueset = ""
			for i = 0 to lstCuelists.ListCount-1
			if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			i = lstCues.ListIndex
			if i < 0 then i = 0
			lstCues.InsertRow(i,"")
			lstCues.Cell(i,3) = "Repeat"
			lstCues.Cell(i,4) = TI.StringResult
			i = i + 1
			lstCues.InsertRow(i,"")
			lstCues.Cell(i,3) = "EndRepeat"
			UpdateCuelist(CurrentSelectedCueset)
			else
			MsgBox("No cueset selected")
			end
			end
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuInsertRunAsFunction() As Boolean Handles mnuInsertRunAsFunction.Action
			dim selCueset as string
			dim i as integer
			
			
			if tbProgram.Value = 0 then
			SelCueset = ""
			for i = 0 to lstCuelists.ListCount-1
			if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			frmCuesetSelector.InsertFunction = 1
			frmCuesetSelector.Show
			end
			end
			
			
			if tbProgram.Value = 1 then
			SelCueset = ""
			for i = 0 to lstCuesets.ListCount-1
			if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			frmCuesetSelector.InsertFunction = 1
			frmCuesetSelector.Show
			end
			end
			
			if tbProgram.Value = 2 then
			if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
			if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
			frmCuesetSelector.InsertFunction = 1
			end
			end
			
			
			end
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuInsertRunAsThread() As Boolean Handles mnuInsertRunAsThread.Action
			dim selCueset as string
			dim i as integer
			
			
			if tbProgram.Value = 0 then
			SelCueset = ""
			for i = 0 to lstCuelists.ListCount-1
			if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			frmCuesetSelector.InsertFunction = 2
			frmCuesetSelector.Show
			end
			end
			
			
			if tbProgram.Value = 1 then
			SelCueset = ""
			for i = 0 to lstCuesets.ListCount-1
			if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			frmCuesetSelector.InsertFunction = 2
			frmCuesetSelector.Show
			end
			end
			
			if tbProgram.Value = 2 then
			if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
			if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
			frmCuesetSelector.InsertFunction = 2
			end
			end
			
			
			end
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuInsertSetGlobalVar() As Boolean Handles mnuInsertSetGlobalVar.Action
			dim SelCueset as String
			dim i as integer
			
			
			SelCueset = ""
			for i = 0 to lstCuesets.ListCount-1
			if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			frmGlobalVarSelector.InsertFunction = 1
			frmGlobalVarSelector.Show
			end
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuInsertStopAll() As Boolean Handles mnuInsertStopAll.Action
			
			dim SelCueset as string
			dim Clp as new Clipboard
			dim i as integer
			
			
			if tbProgram.Value = 0 then
			
			SelCueset = ""
			for i = 0 to lstCuelists.ListCount-1
			if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			i = lstCues.ListIndex
			if i < 0 then i = 0
			lstCues.InsertRow(i,"")
			lstCues.Cell(i,3) = "StopAllTasks"
			UpdateCuelist(CurrentSelectedCueset)
			
			else
			MsgBox("No cueset selected")
			end
			
			end
			
			if tbProgram.Value = 1 then
			
			SelCueset = ""
			for i = 0 to lstCuesets.ListCount-1
			if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			
			Clp.SetText "StopAllTasks" +chr(13)
			
			frmMain.txtCuesetScript.ReadOnly = false
			//Set the cursor to the beginning of the current line
			frmMain.txtCuesetScript.PasteCommand
			frmMain.txtCuesetScript.SetFocus
			frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
			else
			MsgBox("No cueset selected")
			end
			
			end
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuInsertStopTask() As Boolean Handles mnuInsertStopTask.Action
			dim selCueset as string
			dim i as integer
			
			if tbProgram.Value = 0 then
			SelCueset = ""
			for i = 0 to lstCuelists.ListCount-1
			if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			frmCuesetSelector.InsertFunction = 3
			frmCuesetSelector.Show
			end
			end
			
			if tbProgram.Value = 1 then
			SelCueset = ""
			for i = 0 to lstCuesets.ListCount-1
			if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			frmCuesetSelector.InsertFunction = 3
			frmCuesetSelector.Show
			end
			end
			
			if tbProgram.Value = 2 then
			if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
			if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
			frmCuesetSelector.InsertFunction = 3
			end
			end
			
			
			end
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuOptions() As Boolean Handles mnuOptions.Action
			frmOptions.ShowModal
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuPlayoutCallButtons() As Boolean Handles mnuPlayoutCallButtons.Action
			frmButtons.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuPlayoutPlayList() As Boolean Handles mnuPlayoutPlayList.Action
			
			if Globals.ptyModalPlaylist = True then
			frmPlaylistModal.ShowModal
			else
			frmPlaylist.Show
			end
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuSaveAs() As Boolean Handles mnuSaveAs.Action
			SaveProjectAs
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuShellExecAsFunction() As Boolean Handles mnuShellExecAsFunction.Action
			dim TI as New TInputWindow
			dim SelCueset as string
			dim Clp as new Clipboard
			dim i as integer
			
			
			if tbProgram.Value = 0 then
			TI .lblMsg.Text = "The shell executes its command and returns when the script has finished running."+chr(13)+chr(13)+"Shell Command with Arguments:"
			TI .ShowModal
			if TI .CancelPrtessed then
			exit
			else
			SelCueset = ""
			for i = 0 to lstCuelists.ListCount-1
			if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			i = lstCues.ListIndex
			if i < 0 then i = 0
			lstCues.InsertRow(i,"")
			lstCues.Cell(i,3) = "ShellExecuteAsFunction"
			lstCues.Cell(i,4) = TI.StringResult
			UpdateCuelist(CurrentSelectedCueset)
			
			else
			MsgBox("No cueset selected")
			end
			end
			end
			
			if tbProgram.Value = 1 then
			TI .lblMsg.Text ="The shell executes its command and returns when the script has finished running."+chr(13)+chr(13)+"Shell Command with Arguments:"
			TI .ShowModal
			if TI .CancelPrtessed then
			exit
			else
			SelCueset = ""
			for i = 0 to lstCuesets.ListCount-1
			if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			
			Clp.SetText "ShellExecuteAsFunction("+""""+TI.StringResult+""""+")" +chr(13)
			
			frmMain.txtCuesetScript.ReadOnly = false
			//Set the cursor to the beginning of the current line
			frmMain.txtCuesetScript.PasteCommand
			frmMain.txtCuesetScript.SetFocus
			frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
			else
			MsgBox("No cueset selected")
			end
			end
			end
			
			if tbProgram.Value = 2 then
			TI .lblMsg.Text ="The shell executes its command and returns when the script has finished running."+chr(13)+chr(13)+"Shell Command with Arguments:"
			TI .ShowModal
			if TI .CancelPrtessed then
			exit
			else
			
			Clp.SetText "ShellExecuteAsFunction"+chr(10)+"("+""""+TI.StringResult+""""+")" 
			if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
			if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
			lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn) = clp.Text
			UpdateTimestripScript
			end
			end
			end
			end
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuShellExecAsThread() As Boolean Handles mnuShellExecAsThread.Action
			dim TI as New TInputWindow
			dim SelCueset as string
			dim Clp as new Clipboard
			dim i as integer
			
			
			if tbProgram.Value = 0 then
			TI .lblMsg.Text = "The shell executes its command and returns. It does not wait for a command to finish before executing the next command. An asynchronous shell script can run in the background."+chr(13)+chr(13)+"Shell Command with Arguments:"
			TI .ShowModal
			if TI .CancelPrtessed then
			exit
			else
			SelCueset = ""
			for i = 0 to lstCuelists.ListCount-1
			if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			i = lstCues.ListIndex
			if i < 0 then i = 0
			lstCues.InsertRow(i,"")
			lstCues.Cell(i,3) = "ShellExecuteAsThread"
			lstCues.Cell(i,4) = TI.StringResult
			UpdateCuelist(CurrentSelectedCueset)
			
			else
			MsgBox("No cueset selected")
			end
			end
			end
			
			if tbProgram.Value = 1 then
			TI .lblMsg.Text ="The shell executes its command and returns. It does not wait for a command to finish before executing the next command. An asynchronous shell script can run in the background."+chr(13)+chr(13)+"Shell Command with Arguments:"
			TI .ShowModal
			if TI .CancelPrtessed then
			exit
			else
			SelCueset = ""
			for i = 0 to lstCuesets.ListCount-1
			if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
			next
			//check if Cueset is selected
			if SelCueset <> "" then
			
			Clp.SetText "ShellExecuteAsThread("+""""+TI.StringResult+""""+")" +chr(13)
			
			frmMain.txtCuesetScript.ReadOnly = false
			//Set the cursor to the beginning of the current line
			frmMain.txtCuesetScript.PasteCommand
			frmMain.txtCuesetScript.SetFocus
			frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
			else
			MsgBox("No cueset selected")
			end
			end
			end
			
			if tbProgram.Value = 2 then
			TI .lblMsg.Text ="The shell executes its command and returns when the script has finished running."+chr(13)+chr(13)+"Shell Command with Arguments:"
			TI .ShowModal
			if TI .CancelPrtessed then
			exit
			else
			
			Clp.SetText "ShellExecuteAsThread"+chr(10)+"("+""""+TI.StringResult+""""+")" 
			if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
			if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
			lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn) = clp.Text
			UpdateTimestripScript
			end
			end
			end
			end
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub AddCueset()
		  Dim TI as New TInputWindow
		  dim res As String
		  
		  
		  TI .lblMsg.Text = "Task Name:"
		  TI .ShowModal
		  
		  if TI .CancelPrtessed then
		    exit
		  else
		    if ti.StringResult <> "" then
		      //The Task is a Cueset
		      if tbProgram.Value = 1 then
		        res = ScrMan.AddCueset(ti.StringResult,"Cueset")
		        if res = "0" then  lstCuesets.AddRow(ti.StringResult)
		      end
		      
		      //The Task is a Cuelist
		      if tbProgram.Value = 0 then
		        res = ScrMan.AddCueset(ti.StringResult,"Cuelist")
		        if res = "0" then  lstCuelists.AddRow(ti.StringResult)
		      end
		      
		      //The Task is a Timestrip
		      if tbProgram.Value = 2 then
		        res = ScrMan.AddCueset(ti.StringResult,"Timestrip")
		        if res = "0" then  lstTimestrips.AddRow(ti.StringResult)
		      end
		      
		      if res <> "0" then MsgBox("Task Exists")
		      
		    end
		  end
		  
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddGlobalVar()
		  dim TI as New TInputWindow
		  dim res as String
		  
		  TI .lblMsg.Text = "Enter Variable Name"
		  TI.txtValue.Text = IOMan.GetSyncPort
		  TI .ShowModal
		  
		  if TI .CancelPrtessed then
		    exit
		  else
		    res = ScrMan.AddGlobalVar(ti.StringResult)
		    if res <> "0" then
		      if res = "-4013" then
		        MsgBox("Variable exists")
		      else
		        MsgBox("Error: adding Variable")
		      end
		    else
		      lstGlobalVars.AddRow(ti.StringResult)
		    end
		  end
		  
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AssignEventTask(TaskName as string)
		  dim i,ires as integer
		  dim res as string
		  dim d as new date
		  
		  //Check if Cueset is unique
		  for i = 0 to lstEvents.ListIndex-1
		    if lstEvents.Cell(i,3) = TaskName then
		      MsgBox("This Cueset is already an Event Handler")
		      exit sub
		    end
		  next
		  
		  
		  i = lstEvents.ListIndex
		  if i >= 0 then
		    lstEvents.Cell(i,3) = TaskName
		    lstEvents.Refresh
		    //Rebuild EventList
		    DevMan.ClearEventList
		    for i = 0 to lstEvents.ListCount-1
		      if lstEvents.Cell(i,0) = "Calendar" then
		        res =lstEvents.Cell(i,1)
		        d = Calendar.strDateToDate(res)
		        if d <> nil then 
		          res = Calendar.UpdateBaseEvent(lstEvents.Cell(i,2),d,lstEvents.Cell(i,4),lstEvents.Cell(i,3))
		        else
		          MsgBox("Error, invalid date")
		        end
		      end
		      
		      if  lstEvents.Cell(i,0) = "Timer" then
		        ires = TimerEvents.UpdateTimerEvent(val(lstEvents.Cell(i,1)),lstEvents.Cell(i,2),lstEvents.Cell(i,3))
		      end
		      
		      if  lstEvents.Cell(i,0) = "Keyboard" then
		        ires = KeyboardEvents.UpdateKeyboardEvent(lstEvents.Cell(i,1),lstEvents.Cell(i,2),lstEvents.Cell(i,3))
		      end
		      
		      if (lstEvents.Cell(i,0) <> "Calendar") and (lstEvents.Cell(i,0) <> "Timer") and (lstEvents.Cell(i,0) <> "Keyboard") then
		        res = DevMan.AddEventListItem(lstEvents.Cell(i,0),lstEvents.Cell(i,1),lstEvents.Cell(i,2),lstEvents.Cell(i,3),lstEvents.Cell(i,4),lstEvents.Cell(i,5),lstEvents.Cell(i,6),lstEvents.Cell(i,7),lstEvents.Cell(i,8),lstEvents.Cell(i,9),lstEvents.Cell(i,10))
		      end
		    next
		    
		  end
		  
		  Globals.ProjectHasChanged(true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CalendarEvent()
		  frmCalendarEvent.ShowModal
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearAllGUI()
		  //Clears the GUI for a new Project
		  
		  ClearDeviceGUI
		  lstAvailableChannels.DeleteAllRows
		  tbGuiStd.Enabled = false
		  
		  lstDevices.DeleteAllRows
		  lstEvents.DeleteAllRows
		  lstCuesets.DeleteAllRows
		  txtCuesetScript.Text = ""
		  lstACK.DeleteAllRows
		  lstAvailableChannels.DeleteAllRows
		  CurrentSelectedCueset = ""
		  lstCues.DeleteAllRows
		  lstCues.AddRow("")
		  lstCuelists.DeleteAllRows
		  
		  //Timestrip GUI
		  
		  lstTimestrips.DeleteAllRows
		  lstTimestrip.DeleteAllRows
		  lstTimestrip.ColumnCount = 1
		  lstTimestrip.Heading(0) = "Time"
		  lstChaseDevices.DeleteAllRows
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearDeviceGUI()
		  
		  lstDeviceChannels.DeleteAllRows
		  
		  lstChannels.DeleteAllRows
		  lstCommands.DeleteAllRows
		  lstDeviceEvents.DeleteAllRows
		  lstEventChannels.DeleteAllRows
		  
		  //Device GUI
		  lblDP1Name.Visible = false
		  txtDP1Text.Visible = false
		  spnDP1Spin.Visible = false
		  cmbDP1Combo.Visible = false
		  cmbDP1Combo.DeleteAllRows
		  txtDP1Text.Mask = ""
		  
		  lblDP2Name.Visible = false
		  txtDP2Text.Visible = false
		  spnDP2Spin.Visible = false
		  cmbDP2Combo.Visible = false
		  cmbDP2Combo.DeleteAllRows
		  txtDP1Text.Mask = ""
		  
		  lblDP1Name1.Visible = false
		  txtDP1Text1.Visible = false
		  spnDP1Spin1.Visible = false
		  cmbDP1Combo1.Visible = false
		  cmbDP1Combo1.DeleteAllRows
		  txtDP1Text1.Mask = ""
		  
		  lblDP2Name1.Visible = false
		  txtDP2Text1.Visible = false
		  spnDP2Spin1.Visible = false
		  cmbDP2Combo1.Visible = false
		  cmbDP2Combo1.DeleteAllRows
		  txtDP2Text1.Mask = ""
		  
		  //CommandGUI
		  lblP1Name.Visible = false
		  txtP1Text.Visible = false
		  spnP1Spin.Visible = false
		  cmbP1Combo.Visible = false
		  cmbP1Combo.DeleteAllRows
		  txtP1Text.Mask = ""
		  
		  lblP2Name.Visible = false
		  txtP2Text.Visible = false
		  spnP2Spin.Visible = false
		  cmbP2Combo.Visible = false
		  cmbP2Combo.DeleteAllRows
		  txtP2Text.Mask = ""
		  
		  
		  lblP3Name.Visible = false
		  txtP3Text.Visible = false
		  spnP3Spin.Visible = false
		  cmbP3Combo.Visible = false
		  cmbP3Combo.DeleteAllRows
		  txtP3Text.Mask = ""
		  
		  lblP4Name.Visible = false
		  txtP4Text.Visible = false
		  spnP4Spin.Visible = false
		  cmbP4Combo.Visible = false
		  cmbP4Combo.DeleteAllRows
		  txtP4Text.Mask = ""
		  
		  //EventGUI
		  lblP1Name1.Visible = false
		  txtP1Text1.Visible = false
		  spnP1Spin1.Visible = false
		  cmbP1Combo1.Visible = false
		  cmbP1Combo1.DeleteAllRows
		  
		  lblP2Name1.Visible = false
		  txtP2Text1.Visible = false
		  spnP2Spin1.Visible = false
		  cmbP2Combo1.Visible = false
		  cmbP2Combo1.DeleteAllRows
		  
		  
		  lblP3Name1.Visible = false
		  txtP3Text1.Visible = false
		  spnP3Spin1.Visible = false
		  cmbP3Combo1.Visible = false
		  cmbP3Combo1.DeleteAllRows
		  
		  lblP4Name1.Visible = false
		  txtP4Text1.Visible = false
		  spnP4Spin1.Visible = false
		  cmbP4Combo1.Visible = false
		  cmbP4Combo1.DeleteAllRows
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyCue()
		  Dim Clp as new Clipboard
		  dim s1,s2,L1,L2,i as integer
		  dim s as string
		  
		  
		  if tbProgram.Value = 0 then
		    
		    for i = 0 to lstCues.ListCount -1
		      if (lstCues.Selected(i)) and (lstCues.Cell(i,3) <> "") then
		        s = s + lstCues.Cell(i,1)  + chr(9)
		        s =  s + lstCues.Cell(i,2)  + chr(9)
		        s =  s + lstCues.Cell(i,3)  + chr(9)
		        s =  s + lstCues.Cell(i,4)  + chr(13)
		      end
		    next
		    s = DeleteLastChar(s,chr(13))
		    clp.SetText(s)
		  end
		  
		  if tbProgram.Value = 1 then
		    if Globals.CuesetEditReadOnly = true then
		      //get SelStart / Length
		      s1 = txtCuesetScript.SelStart
		      s2 = txtCuesetScript.SelLength
		      //Get Line where selection starts
		      L1 = txtCuesetScript.LineNumAtCharPos(s1+1)
		      //Get line where selection ends
		      L2 = txtCuesetScript.LineNumAtCharPos(s1+s2+1)
		      
		      //set New selection
		      if L1 = L2 then
		        s1 = txtCuesetScript.CharPosAtLineNum(L1)-1
		        s2 = txtCuesetScript.CharPosAtLineNum(L1+1)-1
		        txtCuesetScript.SelStart = s1
		        txtCuesetScript.SelLength = s2-s1
		      else
		        s1 = txtCuesetScript.CharPosAtLineNum(L1)-1
		        s2 = txtCuesetScript.CharPosAtLineNum(L2+1)-1
		        txtCuesetScript.SelStart = s1
		        txtCuesetScript.SelLength = s2-s1
		      end
		    end
		    
		    Clp.SetText(txtCuesetScript.SelText)
		  end
		  
		  if tbProgram.Value = 2 then
		    s = lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn)
		    clp.SetText(s)
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyCueset()
		  dim res as string
		  
		  res = ScrMan.CopyCueset(CurrentSelectedCueset)
		  
		  if res = "-4001" then MsgBox("Cueset " + CurrentSelectedCueset + " not found")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CutCue()
		  Dim Clp as new Clipboard
		  dim s1,s2,L1,L2,i as integer
		  dim s as string
		  
		  
		  if tbProgram.Value = 0 then
		    
		    for i = 0 to lstCues.ListCount -1
		      if (lstCues.Selected(i)) and (lstCues.Cell(i,3) <> "") then
		        s = s + lstCues.Cell(i,1)  + chr(9)
		        s =  s + lstCues.Cell(i,2)  + chr(9)
		        s =  s + lstCues.Cell(i,3)  + chr(9)
		        s =  s + lstCues.Cell(i,4)  + chr(13)
		      end
		    next
		    for i = lstCues.ListCount-1 DownTo 0
		      if (lstCues.Selected(i))  and (lstCues.Cell(i,3) <> "") then 
		        lstCues.RemoveRow(i)
		      end
		    next
		    s = DeleteLastChar(s,chr(13))
		    clp.SetText(s)
		    UpdateCuelist(CurrentSelectedCueset)
		    
		  end
		  
		  if tbProgram.Value = 1 then
		    if Globals.CuesetEditReadOnly = true then
		      
		      //Cut complete lines
		      
		      //get SelStart / Length
		      s1 = txtCuesetScript.SelStart
		      s2 = txtCuesetScript.SelLength
		      //Get Line where selection starts
		      L1 = txtCuesetScript.LineNumAtCharPos(s1)
		      //Get line where selection ends
		      L2 = txtCuesetScript.LineNumAtCharPos(s1+s2)
		      
		      //set New selection
		      s1 = txtCuesetScript.CharPosAtLineNum(L1)-1
		      s2 = txtCuesetScript.CharPosAtLineNum(L2+1)-1
		      txtCuesetScript.SelStart = s1
		      txtCuesetScript.SelLength = s2-s1
		    end
		    
		    Clp.SetText(txtCuesetScript.SelText)
		    txtCuesetScript.SelText = ""
		    
		  end
		  
		  if tbProgram.Value = 2 then
		    s = lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn)
		    clp.SetText(s)
		    lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn) = ""
		    if currentSelectedTimestripColumn = 0 then lstTimestrip.RemoveRow(currentSelectedTimestripRow)
		    UpdateTimestripScript
		    
		  end
		  
		  
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CutCueset()
		  dim res As  String
		  dim i as integer
		  
		  res = ScrMan.CutCueset(CurrentSelectedCueset)
		  
		  if res = "0" then
		    if tbProgram.Value = 0 then
		      for i = 0 to lstCuelists.ListCount-1
		        if lstCuelists.Cell(i,0) = CurrentSelectedCueset then
		          lstCuelists.RemoveRow(i)
		          CurrentSelectedCueset = ""
		          lstCues.DeleteAllRows
		          lstCues.Enabled = false
		        end
		      next
		    end
		    
		    if tbProgram.Value = 1 then
		      for i = 0 to lstCuesets.ListCount-1
		        if lstCuesets.Cell(i,0) = CurrentSelectedCueset then
		          lstCuesets.RemoveRow(i)
		          CurrentSelectedCueset = ""
		          txtCuesetScript.Text = ""
		          txtCuesetScript.Enabled = false
		        end
		      next
		    end
		    
		    if tbProgram.Value = 2 then
		      for i = 0 to lstTimestrips.ListCount-1
		        if lstTimestrips.Cell(i,0) = CurrentSelectedCueset then
		          lstTimestrips.RemoveRow(i)
		          CurrentSelectedCueset = ""
		          lstTimestrip.DeleteAllRows
		          lstChaseDevices.DeleteAllRows
		          grpTimestrip.Enabled = false
		        end
		      next
		    end
		    
		  else
		    if res = "-4001" then MsgBox("Cueset not found")
		    if res = "-4004" then MsgBox("Cueset is blocked")
		  end
		  
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteCueset()
		  dim res As  String
		  dim i as integer
		  
		  res = ScrMan.RemoveCueset(CurrentSelectedCueset)
		  
		  if res = "0" then
		    for i = 0 to lstCuesets.ListCount-1
		      if lstCuesets.Cell(i,0) = CurrentSelectedCueset then 
		        lstCuesets.RemoveRow(i)
		        CurrentSelectedCueset = ""
		        txtCuesetScript.Text = ""
		        txtCuesetScript.Enabled = false
		      end
		    next
		    for i = 0 to lstCuelists.ListCount-1
		      if lstCuelists.Cell(i,0) = CurrentSelectedCueset then
		        CurrentSelectedCueset = ""
		        lstCues.DeleteAllRows
		        lstCues.Enabled = false
		        lstCuelists.RemoveRow(i)
		        
		      end
		    next
		    for i = 0 to lstTimestrips.ListCount-1
		      if lstTimestrips.Cell(i,0) = CurrentSelectedCueset then
		        CurrentSelectedCueset = ""
		        lstTimestrip.DeleteAllRows
		        lstChaseDevices.DeleteAllRows
		        grpTimestrip.Enabled = false
		        lstTimestrips.RemoveRow(i)
		        
		      end
		    next
		  else
		    if res = "-4001" then MsgBox("Task not found")
		    if res = "-4004" then frmMain.lblStatus.Text =  "Task is Blocked"
		  end
		  
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteEvent()
		  dim i,ires as Integer
		  dim res as String
		  
		  i = lstEvents.ListIndex
		  if i >= 0 then 
		    if lstEvents.Cell(i,0) = "Calendar" then Calendar.RemoveBaseEvent(lstEvents.Cell(i,2))
		    if lstEvents.Cell(i,0) = "Timer" then  ires = TimerEvents.DeleteTimerEvent(lstEvents.Cell(i,2))
		    lstEvents.RemoveRow(i)
		    lstEvents.Refresh
		    //Rebuild EventList
		    DevMan.ClearEventList
		    for i = 0 to lstEvents.ListCount-1
		      res = DevMan.AddEventListItem(lstEvents.Cell(i,0),lstEvents.Cell(i,1),lstEvents.Cell(i,2),lstEvents.Cell(i,3),lstEvents.Cell(i,4),lstEvents.Cell(i,5),lstEvents.Cell(i,6),lstEvents.Cell(i,7),lstEvents.Cell(i,8),lstEvents.Cell(i,9),lstEvents.Cell(i,10))
		    next
		  else
		    MsgBox("No Event selected")
		  end
		  
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawTimestrip(Script as string)
		  dim s as string
		  Dim LI,i,y,count as integer
		  
		  
		  LI = lstTimestrip.ListIndex
		  App.MouseCursor = System.Cursors.Wait
		  
		  lstTimestrip.DeleteAllRows
		  //Get The Tracks
		  s = NthField(Script,chr(13),1)
		  i = CountFields(s,chr(9))
		  
		  lstTimestrip.ColumnCount = i
		  
		  lstTimestrip.Heading(0) = "Time"
		  s = "100"
		  for i = 1 to lstTimestrip.ColumnCount-1
		    lstTimestrip.Heading(i) = "Track " + str(i)
		    s = s + ",130"
		  next
		  lstTimestrip.ColumnWidths = s
		  
		  //Get the Content
		  for i = 1 to CountFields(Script,chr(13))
		    s = NthField(Script,chr(13),i)
		    //Nur dann neue Reihe wenn auch Zeitangabe vorhanden
		    if len(NthField(s,chr(9),1)) > 8 then
		      lstTimestrip.AddRow("")
		      count = CountFields(s,chr(9))
		      for y = 1 to count
		        lstTimestrip.Cell(i-1,y-1) = NthField(s,chr(9),y)
		      next
		    end
		  next
		  //Disable Column Sort
		  for i = 0 to frmMain.lstTimestrip.ColumnCount-1
		    frmMain.lstTimestrip.ColumnSortDirection(i) = 0
		  next
		  
		  if LI >= 0 then
		    if LI <= lstTimestrip.LastIndex then lstTimestrip.ListIndex = LI
		  end
		  App.MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EditCue()
		  dim clp as new Clipboard
		  dim DevName,ChName, CmdName,DP1,DP2,P1,P2,P3,P4,res,stmp as string
		  dim clist(-1) as string
		  dim seperator as string
		  dim TI as new TInputWindow
		  dim i,x,y,Li as integer
		  dim b as boolean
		  
		  if tbProgram.Value = 0 then
		    for i = 0 to lstCues.ListCount-1
		      if lstCues.Selected(i) then
		        // if empty Line then exit
		        if lstCues.Cell(i,3) = "" then 
		          cmdAddCmd.Caption = "Add Cmd"
		          exit sub
		        end
		        //if RunCmd
		        if lstCues.Cell(i,1) <> "" then
		          res = "RunCmd(" + """" + lstCues.Cell(i,1) + """" + "," + """" + lstCues.Cell(i,2) + """" + "," + """" + lstCues.Cell(i,3) + """" + ","  + lstCues.Cell(i,4) + ")"
		          exit
		        end
		        //if any other Command
		        if (lstCues.Cell(i,1) = "") and (lstCues.Cell(i,3) <> "") then
		          res = lstCues.Cell(i,3) + "(" + """" + lstCues.Cell(i,4) + """" + ")"+chr(13)
		          exit
		        end
		      end
		    next
		  end
		  
		  if tbProgram.Value = 1 then
		    //Beim EditCue muss  Globals.CuesetEditReadOnly = true sein damit die komplette Zeile kopiert wird
		    b = Globals.CuesetEditReadOnly
		    Globals.CuesetEditReadOnly = true
		    CopyCue
		    Globals.CuesetEditReadOnly = b
		    res = clp.Text
		  end
		  
		  if tbProgram.Value = 2 then
		    stmp = lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn)
		    
		    if stmp = "" then
		      cmdAddCmd.Caption = "Add Cmd"
		      exit sub
		    end
		    
		    
		    //if RunCmd
		    if CountFields(stmp,chr(10)) = 4 then
		      res = "RunCmd(" + """" + NthField(stmp,chr(10),1) + """" + "," + """" + NthField(stmp,chr(10),2) + """" + "," + """" +NthField(stmp,chr(10),3) + """" + ","  + NthField(stmp,chr(10),4) + ")"
		    else
		      //if any other Command
		      res = NthField(stmp,chr(10),1)+NthField(stmp,chr(10),2)
		    end
		  end
		  
		  cmdAddEvent.Caption = "Add Event"
		  
		  seperator = """"+","+""""
		  
		  //If RunCmd Edit
		  i = InStr(res,"RunCmd(")
		  if i > 0 then
		    res = NthField(res,"(",2)
		    res =res.Mid(1,Len(res)-2)
		    DevName = NthField(res,seperator,1)
		    ChName = NthField(res,seperator,2)
		    CmdName = NthField(res,seperator,3)
		    DP1 = NthField(res,seperator,4)
		    DP2 = NthField(res,seperator,5)
		    P1 = NthField(res,seperator,6)
		    P2 = NthField(res,seperator,7)
		    P3 = NthField(res,seperator,8)
		    P4 = NthField(res,seperator,9)
		    DevName = DevName.ReplaceAll("""","")
		    ChName = ChName.ReplaceAll("""","")
		    CmdName = CmdName.ReplaceAll("""","")
		    DP1 = DP1.ReplaceAll("""","")
		    DP2 = DP2.ReplaceAll("""","")
		    P1 = P1.ReplaceAll("""","")
		    P2 = P2.ReplaceAll("""","")
		    P3 = P3.ReplaceAll("""","")
		    P4 = P4.ReplaceAll("""","")
		    for i = 0 to lstDevices.ListCount-1
		      if lstDevices.Cell(i,0) = DevName then 
		        //Show the Device
		        UpdateDeviceGUI(i)
		        //Select the Channels
		        clist = ChName.Split(",")
		        for x = 0 to lstChannels.ListCount-1
		          for y = 0 to UBound(clist)
		            if lstChannels.Cell(x,0) = clist(y) then lstChannels.Selected(x) = true
		          next
		        next
		        //Select the Command
		        for x = 0 to lstCommands.ListCount-1
		          if lstCommands.Cell(x,1) = CmdName then 
		            lstCommands.ListIndex = x
		            UpdateCommandGUI(x)
		            //Set the Parameter
		            //DP1
		            if txtDP1Text.Visible then txtDP1Text.text = DP1
		            if spnDP1Spin.Visible then spnDP1Spin.SetVal(val(DP1))
		            if cmbDP1Combo.Visible then
		              for y = 0 to cmbDP1Combo.ListCount-1
		                cmbDP1Combo.ListIndex = y
		                if DP1 = cmbDP1Combo.Text then exit
		              next
		            end
		            //DP2
		            if txtDP2Text.Visible then txtDP2Text.text = DP2
		            if spnDP2Spin.Visible then spnDP2Spin.SetVal(val(DP2))
		            if cmbDP2Combo.Visible then
		              for y = 0 to cmbDP2Combo.ListCount-1
		                cmbDP2Combo.ListIndex = y
		                if DP2 = cmbDP2Combo.Text then exit
		              next
		            end
		            //P1
		            if txtP1Text.Visible then txtP1Text.text = P1
		            if spnP1Spin.Visible then spnP1Spin.SetVal(val(P1))
		            if cmbP1Combo.Visible then
		              for y = 0 to cmbP1Combo.ListCount-1
		                cmbP1Combo.ListIndex = y
		                if P1 = cmbP1Combo.Text then exit
		              next
		            end
		            //P2
		            if txtP2Text.Visible then txtP2Text.text = P2
		            if spnP2Spin.Visible then spnP2Spin.SetVal(val(P2))
		            if cmbP2Combo.Visible then
		              for y = 0 to cmbP2Combo.ListCount-1
		                cmbP2Combo.ListIndex = y
		                if P2 = cmbP2Combo.Text then exit
		              next
		            end
		            //P3
		            if txtP3Text.Visible then txtP3Text.text = P3
		            if spnP3Spin.Visible then spnP3Spin.SetVal(val(P3))
		            if cmbP3Combo.Visible then
		              for y = 0 to cmbP3Combo.ListCount-1
		                cmbP3Combo.ListIndex = y
		                if P3 = cmbP3Combo.Text then exit
		              next
		            end
		            //P4
		            if txtP4Text.Visible then txtP4Text.text = P4
		            if spnP4Spin.Visible then spnP4Spin.SetVal(val(P4))
		            if cmbP4Combo.Visible then
		              for y = 0 to cmbP4Combo.ListCount-1
		                cmbP4Combo.ListIndex = y
		                if P4 = cmbP4Combo.Text then exit
		              next
		            end
		            
		            
		          end
		        next
		        exit
		      end
		      
		    next
		  end
		  
		  //If CallAsFunction Edit
		  i = InStr(res,"CallAsFunction(")
		  if i > 0 then
		    if tbProgram.Value = 0 then frmCuesetSelector.EditMode = true
		    frmCuesetSelector.InsertFunction = 1
		    frmCuesetSelector.Show
		  end
		  
		  //If CallAsThread Edit
		  i = InStr(res,"CallAsThread(")
		  if i > 0 then
		    if tbProgram.Value = 0 then frmCuesetSelector.EditMode = true
		    frmCuesetSelector.InsertFunction = 2
		    frmCuesetSelector.Show
		  end
		  
		  //If StopTask Edit
		  i = InStr(res,"StopTask(")
		  if i > 0 then
		    if tbProgram.Value = 0 then frmCuesetSelector.EditMode = true
		    frmCuesetSelector.InsertFunction = 3
		    frmCuesetSelector.Show
		  end
		  
		  //If DisableTimerEvents Edit
		  i = InStr(res,"DisableTimerEvent(")
		  if i > 0 then
		    if tbProgram.Value = 0 then frmTimerSelector.EditMode = true
		    frmTimerSelector.InsertFunction = 1
		    frmTimerSelector.Show
		  end
		  
		  //If EnableTimerEvents Edit
		  i = InStr(res,"EnableTimerEvent(")
		  if i > 0 then
		    if tbProgram.Value = 0 then frmTimerSelector.EditMode = true
		    frmTimerSelector.InsertFunction = 2
		    frmTimerSelector.Show
		  end
		  
		  //If Delay
		  i = InStr(res,"Delay(")
		  if i > 0 then
		    TI .lblMsg.Text = "Delay in ms"
		    TI.txtValue.Text = mid(res,8,len(res)-10)
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      cmdAddCmd.Caption = "Add Cmd"
		      exit
		    else
		      //check if Cueset is selected
		      if CurrentSelectedCueset <> "" then
		        res = TI.StringResult
		        if tbProgram.Value = 0 then
		          Li = lstCues.ListIndex
		          if Li < 0 then Li = 0
		          lstCues.RemoveRow(Li)
		          lstCues.InsertRow(Li,"")
		          lstCues.Cell(Li,3) = "Delay"
		          lstCues.Cell(Li,4) = res
		          UpdateCuelist(CurrentSelectedCueset)
		        end
		        if tbProgram.Value = 1 then
		          clp = nil
		          clp = new Clipboard
		          Clp.SetText "Delay("+""""+res+""""+")" +chr(13)
		          
		          frmMain.txtCuesetScript.ReadOnly = false
		          //Set the cursor to the beginning of the current line
		          frmMain.txtCuesetScript.PasteCommand
		          frmMain.txtCuesetScript.SetFocus
		          frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
		        end
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		  end
		  
		  //If EndRepeat do nothing
		  if InStr(res,"EndRepeat(") > 0 then
		    cmdAddCmd.Caption = "Add Cmd"
		    exit sub
		  end
		  
		  //If Repeat
		  i = InStr(res,"Repeat(")
		  if i > 0 then
		    TI .lblMsg.Text = "Repeat (0 = for ever)"
		    TI.txtValue.Text = mid(res,9,len(res)-11)
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      cmdAddCmd.Caption = "Add Cmd"
		      exit
		    else
		      //check if Cueset is selected
		      if CurrentSelectedCueset <> "" then
		        res = TI.StringResult
		        if tbProgram.Value = 0 then
		          Li = lstCues.ListIndex
		          if Li < 0 then Li = 0
		          lstCues.RemoveRow(Li)
		          lstCues.InsertRow(Li,"")
		          lstCues.Cell(Li,3) = "Repeat"
		          lstCues.Cell(Li,4) = res
		          UpdateCuelist(CurrentSelectedCueset)
		        end
		        
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		  end
		  
		  //If Comment
		  i = InStr(res,"Comment(")
		  if i > 0 then
		    TI .lblMsg.Text = "Comment"
		    TI.txtValue.Text = mid(res,10,len(res)-12)
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      cmdAddCmd.Caption = "Add Cmd"
		      exit
		    else
		      //check if Cueset is selected
		      if CurrentSelectedCueset <> "" then
		        res = TI.StringResult
		        if tbProgram.Value = 0 then
		          Li = lstCues.ListIndex
		          if Li < 0 then Li = 0
		          lstCues.RemoveRow(Li)
		          lstCues.InsertRow(Li,"")
		          lstCues.Cell(Li,3) = "Comment"
		          lstCues.Cell(Li,4) = res
		          UpdateCuelist(CurrentSelectedCueset)
		        end
		        
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		  end
		  
		  //If PromptMessage
		  'if tbProgram.Value = 0 then
		  'i = InStr(res,"PromptMessage(")
		  'if i > 0 then
		  'TI .lblMsg.Text = "PromptMessage"
		  'TI.txtValue.Text = mid(res,16,len(res)-18)
		  'TI .ShowModal
		  'if TI .CancelPrtessed then
		  'cmdAddCmd.Caption = "Add Cmd"
		  'exit
		  'else
		  '//check if Cueset is selected
		  'if CurrentSelectedCueset <> "" then
		  'res = TI.StringResult
		  'if tbProgram.Value = 0 then
		  'Li = lstCues.ListIndex
		  'if Li < 0 then Li = 0
		  'lstCues.RemoveRow(Li)
		  'lstCues.InsertRow(Li,"")
		  'lstCues.Cell(Li,3) = "PromptMessage"
		  'lstCues.Cell(Li,4) = res
		  'UpdateCuelist(CurrentSelectedCueset)
		  'end
		  '
		  'else
		  'MsgBox("No cueset selected")
		  'end
		  'end
		  'end
		  'end
		  
		  //IfShowMessage
		  if tbProgram.Value = 0 then
		    i = InStr(res,"ShowMessage(")
		    if i > 0 then
		      TI .lblMsg.Text = "ShowMessage"
		      TI.txtValue.Text = mid(res,14,len(res)-16)
		      TI .ShowModal
		      if TI .CancelPrtessed then
		        cmdAddCmd.Caption = "Add Cmd"
		        exit
		      else
		        //check if Cueset is selected
		        if CurrentSelectedCueset <> "" then
		          res = TI.StringResult
		          if tbProgram.Value = 0 then
		            Li = lstCues.ListIndex
		            if Li < 0 then Li = 0
		            lstCues.RemoveRow(Li)
		            lstCues.InsertRow(Li,"")
		            lstCues.Cell(Li,3) = "ShowMessage"
		            lstCues.Cell(Li,4) = res
		            UpdateCuelist(CurrentSelectedCueset)
		          end
		          
		        else
		          MsgBox("No cueset selected")
		        end
		      end
		    end
		  end
		  if tbProgram.Value = 2 then
		    i = InStr(res,"ShowMessage(")
		    if i > 0 then
		      TI .lblMsg.Text = "ShowMessage"
		      TI.txtValue.Text = mid(res,14,len(res)-15)
		      TI .ShowModal
		      if TI .CancelPrtessed then
		        cmdAddCmd.Caption = "Add Cmd"
		        exit
		      else
		        res = TI.StringResult
		        lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn) = "ShowMessage"+chr(10)+"("+""""+res+""""+")"
		        UpdateTimestripScript
		      end
		    end
		  end
		  
		  //If ShellExecuteAsFunction
		  i = InStr(res,"ShellExecuteAsFunction(")
		  if i > 0 then
		    TI .lblMsg.Text ="The shell executes its command and returns when the script has finished running."+chr(13)+chr(13)+"Shell Command with Arguments:"
		    
		    if tbProgram.Value <> 2 then
		      TI.txtValue.Text = mid(res,25,len(res)-27)
		    else
		      TI.txtValue.Text = mid(res,25,len(res)-26)
		    end
		    
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      cmdAddCmd.Caption = "Add Cmd"
		      exit
		    else
		      //check if Cueset is selected
		      if CurrentSelectedCueset <> "" then
		        res = TI.StringResult
		        if tbProgram.Value = 0 then
		          Li = lstCues.ListIndex
		          if Li < 0 then Li = 0
		          lstCues.RemoveRow(Li)
		          lstCues.InsertRow(Li,"")
		          lstCues.Cell(Li,3) = "ShellExecuteAsFunction"
		          lstCues.Cell(Li,4) = res
		          UpdateCuelist(CurrentSelectedCueset)
		        end
		        if tbProgram.Value = 1 then
		          clp = nil
		          clp = new Clipboard
		          Clp.SetText "ShellExecuteAsFunction("+""""+res+""""+")" +chr(13)
		          
		          frmMain.txtCuesetScript.ReadOnly = false
		          //Set the cursor to the beginning of the current line
		          frmMain.txtCuesetScript.PasteCommand
		          frmMain.txtCuesetScript.SetFocus
		          frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
		        end
		        if tbProgram.Value = 2 then
		          lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn) = "ShellExecuteAsFunction"+chr(10)+"("+""""+res+""""+")"
		          UpdateTimestripScript
		        end
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		  end
		  
		  //If ShellExecuteAsThread
		  i = InStr(res,"ShellExecuteAsThread(")
		  if i > 0 then
		    TI .lblMsg.Text = "The shell executes its command and returns. It does not wait for a command to finish before executing the next command. An asynchronous shell script can run in the background."+chr(13)+chr(13)+"Shell Command with Arguments:"
		    if tbProgram.value <> 2 then
		      TI.txtValue.Text = mid(res,23,len(res)-25)
		    else
		      TI.txtValue.Text = mid(res,23,len(res)-24)
		    end
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      cmdAddCmd.Caption = "Add Cmd"
		      exit
		    else
		      //check if Cueset is selected
		      if CurrentSelectedCueset <> "" then
		        res = TI.StringResult
		        if tbProgram.Value = 0 then
		          Li = lstCues.ListIndex
		          if Li < 0 then Li = 0
		          lstCues.RemoveRow(Li)
		          lstCues.InsertRow(Li,"")
		          lstCues.Cell(Li,3) = "ShellExecuteAsThreadn"
		          lstCues.Cell(Li,4) = res
		          UpdateCuelist(CurrentSelectedCueset)
		        end
		        if tbProgram.Value = 1 then
		          clp = nil
		          clp = new Clipboard
		          Clp.SetText "ShellExecuteAsThread("+""""+res+""""+")" +chr(13)
		          
		          frmMain.txtCuesetScript.ReadOnly = false
		          //Set the cursor to the beginning of the current line
		          frmMain.txtCuesetScript.PasteCommand
		          frmMain.txtCuesetScript.SetFocus
		          frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
		        end
		        if tbProgram.Value = 2 then
		          lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn) = "ShellExecuteAsThread"+chr(10)+"("+""""+res+""""+")"
		          UpdateTimestripScript
		        end
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		  end
		  
		  
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EditEvent()
		  dim DevName,ChName, CmdName,DP1,DP2,P1,P2,P3,P4 as string
		  dim clist(-1) as string
		  
		  dim i,x,y as integer
		  
		  for i = 0 to lstEvents.ListCount-1
		    if lstEvents.Selected(i) then
		      if (lstEvents.Cell(i,0) <> "Calendar") and (lstEvents.Cell(i,0) <> "Timer")  and (lstEvents.Cell(i,0) <> "Keyboard") then
		        DevName = lstEvents.Cell(i,0)
		        ChName = lstEvents.Cell(i,1)
		        CmdName = lstEvents.Cell(i,2)
		        DP1 = lstEvents.Cell(i,5)
		        DP2 = lstEvents.Cell(i,6)
		        P1 = lstEvents.Cell(i,7)
		        P2 = lstEvents.Cell(i,8)
		        P3 = lstEvents.Cell(i,9)
		        P4 = lstEvents.Cell(i,10)
		      else
		        if lstEvents.Cell(i,0) = "Calendar" then CalendarEvent
		        if lstEvents.Cell(i,0) = "Timer" then TimerEvent
		        if lstEvents.Cell(i,0) = "Keyboard" then KeyboardEvent
		        exit sub
		      end
		    end
		  next
		  
		  cmdAddEvent.Caption = "Update"
		  for i = 0 to lstDevices.ListCount-1
		    if lstDevices.Cell(i,0) = DevName then 
		      //Show the Device
		      UpdateDeviceGUI(i)
		      //Select the Channels
		      clist = ChName.Split(",")
		      for x = 0 to lstEventChannels.ListCount-1
		        for y = 0 to UBound(clist)
		          if lstEventChannels.Cell(x,0) = clist(y) then lstEventChannels.Selected(x) = true
		        next
		      next
		      //Select the Command
		      for x = 0 to lstDeviceEvents.ListCount-1
		        if lstDeviceEvents.Cell(x,1) = CmdName then 
		          lstDeviceEvents.ListIndex = x
		          CurrentSelectedDevice = DevName
		          CurrentSelectedEvent = CmdName
		          UpdateEventGUI
		          //Set the Parameter
		          //DP1
		          if txtDP1Text1.Visible then txtDP1Text1.text = DP1
		          if spnDP1Spin1.Visible then spnDP1Spin1.SetVal(val(DP1))
		          if cmbDP1Combo1.Visible then
		            for y = 0 to cmbDP1Combo1.ListCount-1
		              cmbDP1Combo1.ListIndex = y
		              if DP1 = cmbDP1Combo1.Text then exit
		            next
		          end
		          //DP2
		          if txtDP2Text1.Visible then txtDP2Text1.text = DP2
		          if spnDP2Spin1.Visible then spnDP2Spin1.SetVal(val(DP2))
		          if cmbDP2Combo1.Visible then
		            for y = 0 to cmbDP2Combo1.ListCount-1
		              cmbDP2Combo1.ListIndex = y
		              if DP2 = cmbDP2Combo1.Text then exit
		            next
		          end
		          //P1
		          if txtP1Text1.Visible then txtP1Text1.text = P1
		          if spnP1Spin1.Visible then spnP1Spin1.SetVal(val(P1))
		          if cmbP1Combo1.Visible then
		            for y = 0 to cmbP1Combo1.ListCount-1
		              cmbP1Combo1.ListIndex = y
		              if P1 = cmbP1Combo1.Text then exit
		            next
		          end
		          //P2
		          if txtP2Text1.Visible then txtP2Text1.text = P2
		          if spnP2Spin1.Visible then spnP2Spin1.SetVal(val(P2))
		          if cmbP2Combo1.Visible then
		            for y = 0 to cmbP2Combo1.ListCount-1
		              cmbP2Combo1.ListIndex = y
		              if P2 = cmbP2Combo1.Text then exit
		            next
		          end
		          //P3
		          if txtP3Text1.Visible then txtP3Text1.text = P3
		          if spnP3Spin1.Visible then spnP3Spin1.SetVal(val(P3))
		          if cmbP3Combo1.Visible then
		            for y = 0 to cmbP3Combo1.ListCount-1
		              cmbP3Combo1.ListIndex = y
		              if P3 = cmbP3Combo1.Text then exit
		            next
		          end
		          //P4
		          if txtP4Text1.Visible then txtP4Text1.text = P4
		          if spnP4Spin1.Visible then spnP4Spin1.SetVal(val(P4))
		          if cmbP4Combo1.Visible then
		            for y = 0 to cmbP4Combo1.ListCount-1
		              cmbP4Combo1.ListIndex = y
		              if P4 = cmbP4Combo1.Text then exit
		            next
		          end
		          
		          
		        end
		      next
		      exit
		    end
		    
		  next
		  
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindAckRow(ChannelName as string, DeviceName as string) As integer
		  dim i as integer
		  
		  if bLoggAck = false then
		    for i = 0 to lstACK.ListCount - 1
		      if (lstACK.Cell(i,0) = DeviceName) and (lstACK.Cell(i,2) = ChannelName) then Return i
		    next
		  end
		  
		  lstACK.AddRow ""
		  i = lstACK.ListCount -1
		  if i < 0 then i = 0
		  Return i
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HandleEngineEvent(EventSourceModule as string, EventSourceDevice as string, EventSourceChannel as string, EventType as string, EventData as string,EventSourceCmd as string)
		  EngineEventList.Append(EventSourceModule+chr(2)+EventSourceDevice+chr(2)+EventSourceChannel+chr(2)+EventType+chr(2)+StringToHexString(EventData)+chr(2)+EventSourceCmd)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub KeyboardEvent()
		  frmKeyboardEvent.ShowModal
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadProject()
		  Dim dlg as New OpenDialog
		  Dim f as FolderItem
		  Dim VC3_FileType as New FileType
		  
		  
		  VC3_FileType.Name = "Project/V-Control"
		  VC3_FileType.MacType = "VC3"
		  VC3_FileType.Extensions = "vc3;vc3"
		  
		  
		  dlg.ActionButtonCaption="Open"
		  dlg.Title="Open V-Control Project File"
		  dlg.PromptText="Select V-Control Project File"
		  #If Not ( TargetLinux) then
		    dlg.InitialDirectory= Volume(0).Child("Documents")
		  #Else   //open Home directory on linux
		    //dlg.InitialDirectory= Volume(0).Child("home")
		    dlg.InitialDirectory= SpecialFolder.Documents
		  #endif
		  dlg.Filter = VC3_FileType
		  f=dlg.ShowModal()
		  if f <> nil then OpenProject(f.AbsolutePath)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenProject(Filename as string)
		  dim res,csname as string
		  dim i,x as integer
		  
		  
		  StopAllCuesets
		  ClearAllGUI
		  CurrentSelectedDevice = ""
		  CurrentSelectedCueset = ""
		  Calendar.ClearAllEvents
		  App.MouseCursor = System.Cursors.Wait
		  res = ScrMan.scrdb_OpenProject(Filename)
		  App.MouseCursor = System.Cursors.StandardPointer
		  if res <> "0" then
		    if res = "-4015" then
		       MsgBox("This file is not compatible with " + Globals.cnt_ProgamName)
		    else
		      MsgBox("Could not open Project, Error " + res)
		    end
		  else
		    RefreshAvailableChannels
		    frmMain.Title = Globals.cnt_ProgamName + " " + Filename
		    CurrentScript = Filename
		    
		    //Show Devices
		    res = DevMan.GetDeviceList
		    if res <> "" then
		      lstDevices.DeleteAllRows
		      for i = 1 to CountFields(res,chr(2))
		        lstDevices.AddRow(NthField(res,chr(2),i))
		      next
		    end
		    
		    //Show Cuesets
		    res = ScrMan.GetTaskList
		    if res <> "" then
		      lstCuesets.DeleteAllRows
		      lstCuelists.DeleteAllRows
		      lstTimestrips.DeleteAllRows
		      for i = 1 to CountFields(res,chr(2))
		        csname = NthField(res,chr(2),i)
		        x = ScrMan.GetCuesetIdByName(csname)
		        if x >= 0 then
		          if ScrMan.aCuesets(x).Type = "Cueset" then lstCuesets.AddRow(csname)
		          if ScrMan.aCuesets(x).Type = "Cuelist" then lstCuelists.AddRow(csname)
		          if ScrMan.aCuesets(x).Type = "Timestrip" then lstTimestrips.AddRow(csname)
		        end
		      next
		    end
		    
		    //Show Basic Variables
		    lstGlobalVars.DeleteAllRows
		    res = ScrMan.GetGlobalVarList
		    for i = 1 to CountFields(res,chr(2))
		      lstGlobalVars.AddRow(NthField(res,chr(2),i))
		    next
		    
		    RefreshEventList
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PasteCue()
		  Dim Clp as new Clipboard
		  dim cl,Li,i as integer
		  dim s,s1 as string
		  
		  if tbProgram.Value = 0 then
		    s = Clp.Text
		    Li = lstCues.ListIndex
		    if Li < 0 then Li = 0
		    for i = 1 to CountFields(s,chr(13))
		      s1 = NthField(s,chr(13),i)
		      if CountFields(s1,chr(9)) = 4 then
		        lstCues.InsertRow(Li,"")
		        lstCues.Cell(Li,1) = NthField(s1,chr(9),1)
		        lstCues.Cell(Li,2) = NthField(s1,chr(9),2)
		        lstCues.Cell(Li,3) = NthField(s1,chr(9),3)
		        lstCues.Cell(Li,4) = NthField(s1,chr(9),4)
		        Li = Li + 1
		      end
		    next
		    UpdateCuelist(CurrentSelectedCueset)
		  end
		  
		  if tbProgram.Value = 1 then
		    if Globals.CuesetEditReadOnly = true then
		      cl = txtCuesetScript.LineNumAtCharPos(txtCuesetScript.SelStart+1)
		      txtCuesetScript.SelStart = txtCuesetScript.CharPosAtLineNum(cl)-1
		      txtCuesetScript.SelLength = 0
		      txtCuesetScript.PasteCommand
		    else
		      txtCuesetScript.Paste
		    end
		  end
		  
		  if tbProgram.Value = 2 then
		    lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn) = clp.Text
		    UpdateTimestripScript
		    
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PasteCueset()
		  Dim TI as New TInputWindow
		  dim res As String
		  dim i As  integer
		  
		  TI .lblMsg.Text = "Cueset Name:"
		  TI .ShowModal
		  
		  if TI .CancelPrtessed then
		    exit
		  else
		    if tbProgram.Value = 0 then
		      res = ScrMan.PasteCueset(ti.StringResult,"Cuelist")
		      if res = "0" then
		        i = lstCuelists.ListIndex
		        lstCuelists.InsertRow(i+1,ti.StringResult)
		        lstCuelists.Refresh
		        CurrentSelectedCueset = ""
		        
		      else
		        MsgBox("Cueset Exists")
		      end
		    end
		    if tbProgram.Value = 1 then
		      res = ScrMan.PasteCueset(ti.StringResult,"Cueset")
		      if res = "0" then
		        i = lstCuesets.ListIndex
		        lstCuesets.InsertRow(i+1,ti.StringResult)
		        lstCuesets.Refresh
		        CurrentSelectedCueset = ""
		        txtCuesetScript.Text = ScrMan.GetCuesetScript(ti.StringResult)
		        txtCuesetScript.ColorSyntax(txtCuesetScript.Text,0)
		      else
		        MsgBox("Cueset Exists")
		      end
		    end
		    
		    if tbProgram.Value = 2 then
		      res = ScrMan.PasteCueset(ti.StringResult,"Timestrip")
		      if res = "0" then
		        i = lstTimestrips.ListIndex
		        lstTimestrips.InsertRow(i+1,ti.StringResult)
		        CurrentSelectedCueset = ""
		        lstTimestrip.ListIndex = i+1
		      else
		        MsgBox("Cueset Exists")
		      end
		    end
		  end
		  
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshAvailableChannels()
		  //Refresch the available channel list on standard GUI ( tbGuiStd ) and any further
		  dim res as string
		  dim i as integer
		  
		  lstAvailableChannels.DeleteAllRows
		  
		  
		  res = IOMan.GetChannels
		  for i = 1 to CountFields(res,chr(2)) step 3
		    lstAvailableChannels.AddRow(NthField(res,chr(2),i))
		  next
		  
		  lstAvailableChannels.SortedColumn = 0
		  lstAvailableChannels.Sort
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshEventList()
		  dim res,tmp,evtList,evt,param as String
		  dim c,i as integer
		  
		  lstEvents.DeleteAllRows
		  //Show Eventlist
		  for i = 0 to UBound(DevMan.EventList)
		    lstEvents.AddRow("")
		    lstEvents.Cell(i,0) = DevMan.EventList(i).DeviceName
		    lstEvents.Cell(i,1) = DevMan.EventList(i).ChannelName
		    lstEvents.Cell(i,2) = DevMan.EventList(i).EventName
		    lstEvents.Cell(i,3) = DevMan.EventList(i).CuesetName
		    lstEvents.Cell(i,4) = DevMan.EventList(i).TermChar
		    lstEvents.Cell(i,5) = DevMan.EventList(i).DP1
		    lstEvents.Cell(i,6) = DevMan.EventList(i).DP2
		    lstEvents.Cell(i,7) = DevMan.EventList(i).P1
		    lstEvents.Cell(i,8) = DevMan.EventList(i).P2
		    lstEvents.Cell(i,9) = DevMan.EventList(i).P3
		    lstEvents.Cell(i,10) = DevMan.EventList(i).P4
		  next
		  //Add Calendar Events
		  evtList = Calendar.GetAllBaseEvents
		  for i = 1 to CountFields(evtList,chr(3))
		    res = NthField(evtList,chr(3),i)
		    c = InStr(res,chr(2))
		    if c > 0 then
		      evt = NthField(res,chr(2),1)
		      param = mid(res,c+1)
		      param = DeleteLastChar(param,chr(3))
		      frmMain.lstEvents.AddRow("Calendar")
		      
		      tmp = NthField(param,chr(2),2) + " " + NthField(param,chr(2),1)
		      frmMain.lstEvents.Cell(frmMain.lstEvents.ListCount-1,1) = tmp
		      
		      tmp = NthField(param,chr(2),4)
		      frmMain.lstEvents.Cell(frmMain.lstEvents.ListCount-1,3) = tmp
		      frmMain.lstEvents.Cell(frmMain.lstEvents.ListCount-1,2) = evt
		      
		      tmp = NthField(param,chr(2),3)
		      frmMain.lstEvents.Cell(frmMain.lstEvents.ListCount-1,4) = tmp
		      
		    end
		  next
		  //Add Timer Events
		  evtList = TimerEvents.GetAllTimerEvents
		  for i = 1 to CountFields(evtList,chr(3))
		    res = NthField(evtList,chr(3),i)
		    c = InStr(res,chr(2))
		    if c > 0 then
		      param = NthField(res,chr(2),1)
		      evt = NthField(res,chr(2),2)
		      tmp = NthField(res,chr(2),3)
		      frmMain.lstEvents.AddRow("Timer")
		      frmMain.lstEvents.Cell(frmMain.lstEvents.ListCount-1,1) = param
		      frmMain.lstEvents.Cell(frmMain.lstEvents.ListCount-1,2) = evt
		      frmMain.lstEvents.Cell(frmMain.lstEvents.ListCount-1,3) = tmp
		    end
		  next
		  
		  //Add Keyboard Events
		  evtList = KeyboardEvents.GetAllKeyboardEvents
		  for i = 1 to CountFields(evtList,chr(3))
		    res = NthField(evtList,chr(3),i)
		    c = InStr(res,chr(2))
		    if c > 0 then
		      param = NthField(res,chr(2),1)
		      evt = NthField(res,chr(2),2)
		      tmp = NthField(res,chr(2),3)
		      frmMain.lstEvents.AddRow("Keyboard")
		      frmMain.lstEvents.Cell(frmMain.lstEvents.ListCount-1,1) = param
		      frmMain.lstEvents.Cell(frmMain.lstEvents.ListCount-1,2) = evt
		      frmMain.lstEvents.Cell(frmMain.lstEvents.ListCount-1,3) = tmp
		    end
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveGlobalVar()
		  dim i as integer
		  dim varsel as boolean
		  dim s,res as string
		  
		  //Check if selected
		  varsel = false
		  for i = 0 to lstGlobalVars.ListCount -1
		    if lstGlobalVars.Selected(i) = true then varsel = true
		  next
		  
		  if varsel = false then
		    MsgBox("No Global Variable selected")
		    exit sub
		  end
		  
		  for i = 0 to lstGlobalVars.ListCount -1
		    if lstGlobalVars.Selected(i) = true then 
		      s = lstGlobalVars.Cell(i,0)
		      res = ScrMan.RemoveGlobalVar(s)
		      if res = "0" then 
		        lstGlobalVars.RemoveRow(i)
		        exit sub
		      else
		        MsgBox("Could not Delete Global Var " + s)
		      end
		    end
		  next
		  
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RenameCueset()
		  Dim TI as New TInputWindow
		  dim res,csname As String
		  dim i,CurrentRow As  integer
		  
		  csname = ""
		  if tbProgram.Value = 0 then
		    for i = 0 to lstCuelists.ListCount-1
		      if lstCuelists.Selected(i) then
		        csname = lstCuelists.Cell(i,0)
		        CurrentRow = i
		      end
		    next
		  end
		  
		  if tbProgram.Value = 1 then
		    for i = 0 to lstCuesets.ListCount-1
		      if lstCuesets.Selected(i) then
		        csname = lstCuesets.Cell(i,0)
		        CurrentRow = i
		      end
		    next
		  end
		  
		  if tbProgram.Value = 2 then
		    for i = 0 to lstTimestrips.ListCount-1
		      if lstTimestrips.Selected(i) then
		        csname = lstTimestrips.Cell(i,0)
		        CurrentRow = i
		      end
		    next
		  end
		  
		  if csname = "" then
		    MsgBox("No Cueset selected")
		    exit
		  end
		  
		  TI .lblMsg.Text = "Task Name:"
		  ti.txtValue.Text = csname
		  TI .ShowModal
		  
		  if TI .CancelPrtessed then
		    exit
		  else
		    res = ScrMan.RenameCueset(csname,ti.StringResult)
		    if res = "0" then
		      if tbProgram.Value = 0 then
		        lstCuelists.Cell(CurrentRow,0) = ti.StringResult
		        RefreshEventList
		      end
		      if tbProgram.Value = 1 then
		        lstCuesets.Cell(CurrentRow,0) = ti.StringResult
		        RefreshEventList
		      end
		      if tbProgram.Value = 2 then
		        lstTimestrips.Cell(CurrentRow,0) = ti.StringResult
		        RefreshEventList
		      end
		    else
		      MsgBox("Cueset Exists")
		    end
		  end
		  
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunCueset()
		  dim res as string
		  
		  
		  
		  if CurrentSelectedCueset = "" then
		    MsgBox("No Task selected")
		    exit
		  end
		  
		  res = ScrMan.RunCueset(CurrentSelectedCueset,1)
		  
		  if res = "-4001" then MsgBox("Task " + CurrentSelectedCueset + " not found")
		  if res = "-4004" then frmMain.lblStatus.Text =  "Task is Blocked"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveProject()
		  dim sfile as string
		  dim f as FolderItem
		  Dim VC3_FileType as New FileType
		  dim res as string
		  dim Emsg as string
		  
		  VC3_FileType.Name = "Project/V-Control"
		  VC3_FileType.MacType = "VC3"
		  VC3_FileType.Extensions = "vc3;vc3"
		  
		  if CurrentScript = "not saved.vc3" then
		    SaveProjectAs
		    exit sub
		  else
		    f = GetFolderItem(CurrentScript)
		  end
		  if f <> nil then
		    sfile = f.AbsolutePath
		    App.MouseCursor = System.Cursors.Wait
		    res = ScrMan.scrdb_SaveProject(sfile)
		    App.MouseCursor = System.Cursors.StandardPointer
		    
		    if res <> "0" then
		      if res = "-4006" then Emsg = "Could not create project database"
		      if res = "-4009" then Emsg = "Project could not be saved because a CallAsFunction is running"
		      MsgBox("Error: " + emsg)
		    else
		      frmMain.Title = Globals.cnt_ProgamName + " " + sfile
		      CurrentScript = sfile
		      globals.ProjectChanged = false
		    end
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveProjectAs()
		  Dim dlg as New SaveAsDialog
		  Dim f as FolderItem
		  Dim VC3_FileType as New FileType
		  dim sfile,res,Emsg as string
		  
		  
		  VC3_FileType.Name = "Project/V-Control"
		  VC3_FileType.MacType = "VC3"
		  VC3_FileType.Extensions = "vc3;vc3"
		  
		  
		  dlg.ActionButtonCaption="Save"
		  dlg.Title="Save V-Control Project"
		  dlg.PromptText="Save V-Control Project File"
		  #If Not ( TargetLinux) then
		    dlg.InitialDirectory= Volume(0).Child("Documents")
		  #Else   //open Home directory on linux
		    //dlg.InitialDirectory= Volume(0).Child("home")
		    dlg.InitialDirectory= SpecialFolder.Documents
		  #endif
		  dlg.Filter = VC3_FileType
		  f=dlg.ShowModal()
		  
		  if f <> nil then
		    sfile = f.AbsolutePath
		    App.MouseCursor = System.Cursors.Wait
		    res = ScrMan.scrdb_SaveProject(sfile)
		    App.MouseCursor = System.Cursors.StandardPointer
		    
		    if res <> "0" then
		      if res = "-4006" then Emsg = "Could not create project database"
		      if res = "-4009" then Emsg = "Project could not be saved because a CallAsFunction is running"
		      MsgBox("Error: " + emsg)
		    else
		      frmMain.Title = Globals.cnt_ProgamName + " " + sfile
		      CurrentScript = sfile
		      globals.ProjectChanged = false
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetChaseDevices(Cueset as string, Position as string)
		  //Set the Chse devices
		  dim i,x as Integer
		  dim CHDevice,CHChannel,s as string
		  dim res as TResult
		  
		  s = Scrman.GetCuesetParams(Cueset )
		  if s <> "-4001" then
		    i = Scrman.GetCuesetIdByName(Cueset )
		    if i >=0 then
		      if aCuesets(i).IsBlocked = false then
		        //Get the Chase Devices
		        s = Scrman.GetCuesetParams(Cueset )
		        for x = 9 to CountFields(s,chr(2)) step 2
		          CHDevice = NthField(s,chr(2),x)
		          CHChannel = NthField(s,chr(2),X+1)
		          res = DevMan.RunCommand("DirectAccessModeCommand",CHDevice,CHChannel,"CueUpNoAck","","",Position,"","","","")
		        next
		      end
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowCuesetError(Line as integer, ErrorNumber as integer, ErrorMsg as string)
		  Dim i as integer
		  
		  
		  //MsgBox("compile Error at Line:" + str(line) + " Error Number:" + str( ErrorNumber ))
		  beep
		  
		  txtCuesetScript.SelStart = txtCuesetScript.CharPosAtLineNum(line)-1
		  lblStatus2.Text = ""
		  i = InStr( txtCuesetScript.CharPosAtLineNum(line),txtCuesetScript.Text, chr(13) )
		  txtCuesetScript.SelLength = i - txtCuesetScript.CharPosAtLineNum(line)
		  
		  select case ErrorNumber
		    
		  case 1
		    lblStatus2.Text = lblStatus2.Text + "Error: " + "Syntax does not make sense."
		    
		  case 2
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Type mismatch."
		    
		  case 3
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Select Case does not support that type of expression."
		    
		  case 4
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "The compiler is not implemented (obsolete)."
		    
		  case 5
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "The parser's internal stack has overflowed."
		    
		  case 6
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Too many parameters for this function."
		    
		  case 7
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Not enough parameters for this function call."
		    
		  case 8
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Wrong number of parameters for this function call."
		    
		  case 9
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Parameters are incompatible with this function."
		    
		  case 10
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + " Assignment of an incompatible data type."
		    
		  case 11
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Undefined identifier."
		    
		  case 12
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Undefined operator."
		    
		  case 13
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Logic operations require Boolean operands."
		    
		  case 14
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Array bounds must be integers."
		    
		  case 15
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Can't call a non-function."
		    
		  case 16
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Can't get an element from something that isn't an array."
		    
		  case 17
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Not enough subscripts for this array's dimensions."
		    
		  case 18
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Too many subscripts for this array's dimensions."
		    
		  case 19
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Can't assign an entire array."
		    
		  case 20
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Can't use an entire array in an expression."
		    
		  case 21
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Can't pass an expression as a ByRef parameter."
		    
		  case 22
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Duplicate identifier."
		    
		  case 23
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "The backend code generator failed."
		    
		  case 24
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Ambiguous call to overloaded method."
		    
		  case 25
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Multiple inheritance is not allowed."
		    
		  case 26
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Cannot create an instance of an interface."
		    
		  case 27
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Cannot implement a class as though it were an interface."
		    
		  case 28
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Cannot inherit from something that is not a class."
		    
		  case 29
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "This class does not fully implement the specified interface."
		    
		  case 30
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Event handlers cannot live outside of a class."
		    
		  case 31
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "It is not legal to ignore the result of a function call."
		    
		  case 32
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Can't use 'Self' keyword outside of a class."
		    
		  case 33
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Can't use 'Me' keyword outside of a class."
		    
		  case 34
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Can't return a value from a Sub."
		    
		  case 35
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "An exception object required here."
		    
		  case 40
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Destructors can't have parameters."
		    
		  case 41
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Can't use 'Super' keyword outside of a class."
		    
		  case 42
		    lblStatus2.Text = lblStatus2.Text +  "Error: " + "Can't use 'Super' keyword in a class that has no parent."
		    
		  end select
		  lblStatus2.Text = lblStatus2.Text + " " + ErrorMsg
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowHelp()
		  
		  dim f as FolderItem
		  
		  if TargetWin32 then
		    f = GetFolderItem("Help\index.html")
		    if f <> nil then
		      f.Launch
		    else
		      MsgBox("Can't Locate index.html in Help Folder")
		    end
		  end
		  
		  if TargetLinux then
		    dim sh as new shell
		    f = GetFolderItem("Help/index.html")
		    if f <> nil then
		      'f.Launch
		      sh.Execute("firefox "+f.AbsolutePath)
		    else
		      MsgBox("Can't Locate index.html in Help Folder")
		    end
		  end
		  
		  if TargetMacOS then
		    dim s as string
		    f = GetFolderItem("")
		    s = f.AbsolutePath
		    s = s + "Help:index.html"
		    f = nil
		    f = GetFolderItem(s)
		    
		    if f <> nil then
		      f.Launch
		    else
		      MsgBox("Can't Locate index.html in Help Folder")
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopAllCuesets()
		  dim i as Integer
		  
		  
		  for i = 0 to lstCuesets.ListCount-1
		    ScrMan.StopCueset(lstCuesets.Cell(i,0))
		  next
		  
		  
		  for i = 0 to lstCuelists.ListCount-1
		    ScrMan.StopCueset(lstCuelists.Cell(i,0))
		  next
		  
		  
		  
		  for i = 0 to lstTimestrips.ListCount-1
		    ScrMan.StopCueset(lstTimestrips.Cell(i,0))
		  next
		  
		  
		  DevMan.UnblockAllDevices
		  
		  IOMan.UnBlockAllChannels
		  
		  'for i = 0 to UBound(ScrMan.aCuesets)
		  'ScrMan.aCuesets(i).Blocked = false
		  'scrMan.HandleEngineEvent("ScrMan","Cueset","NoChannels","CuesetMsg",ScrMan.aCuesets(i).Name+";STOP","")
		  'next
		  'DevMan.UnblockAllDevices
		  'IOMan.UnBlockAllChannels
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopCueset()
		  
		  
		  if CurrentSelectedCueset = "" then
		    MsgBox("No Cueset selected")
		    exit
		  end
		  
		  ScrMan.StopCueset(CurrentSelectedCueset)
		  
		  'if res = "-4001" then 
		  'MsgBox("Cueset " + CurrentSelectedCueset + " not found")
		  'else
		  'i = val(res)
		  'ScrMan.aCuesets(i).CuesetScript.Reset
		  'ScrMan.aCuesets(i).Kill
		  'end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TimerEvent()
		  frmTimerEvent.ShowModal
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnlinkEventCueset()
		  dim i,ires as integer
		  dim res as string
		  dim d as new date
		  
		  
		  i = lstEvents.ListIndex
		  if i >= 0 then
		    lstEvents.Cell(i,3) = ""
		    lstEvents.Refresh
		    //Rebuild EventList
		    DevMan.ClearEventList
		    for i = 0 to lstEvents.ListCount-1
		      if lstEvents.Cell(i,0) = "Calendar" then
		        res =lstEvents.Cell(i,1)
		        d = Calendar.strDateToDate(res)
		        if d <> nil then
		          res = Calendar.UpdateBaseEvent(lstEvents.Cell(i,2),d,lstEvents.Cell(i,4),lstEvents.Cell(i,3))
		        else
		          MsgBox("Error, invalid date")
		        end
		      else
		        if  lstEvents.Cell(i,0) = "Timer" then
		          ires = TimerEvents.UpdateTimerEvent(val(lstEvents.Cell(i,1)),lstEvents.Cell(i,2),lstEvents.Cell(i,3))
		        else
		          res = DevMan.AddEventListItem(lstEvents.Cell(i,0),lstEvents.Cell(i,1),lstEvents.Cell(i,2),lstEvents.Cell(i,3),lstEvents.Cell(i,4),lstEvents.Cell(i,5),lstEvents.Cell(i,6),lstEvents.Cell(i,7),lstEvents.Cell(i,8),lstEvents.Cell(i,9),lstEvents.Cell(i,10))
		        end
		      end
		    next
		    
		  end
		  
		  Globals.ProjectHasChanged(true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateCommandGUI(row as integer)
		  
		  dim i as Integer
		  dim P1Name,P1GUIType,P1MinMax,P1Default,P1Mask,P2Name,P2GUIType,P2MinMax,P2Default,P2Mask as string
		  dim P3Name,P3GUIType,P3MinMax,P3Default,P3Mask,P4Name,P4GUIType,P4MinMax,P4Default,P4Mask as string
		  dim res,sarray(-1), TabID as string
		  
		  
		  
		  if row = -1 then exit
		  
		  lstCommands.ListIndex = row
		  
		  res = DevMan.GetCommandProperties(CurrentSelectedDevice,lstCommands.Cell(row,1))
		  
		  
		  if CountFields(res,chr(2)) < 29 then
		    MsgBox(res)
		    exit
		  end
		  
		  tbGuiStd.Value = 0
		  CurrentSelectedCommand = lstCommands.Cell(row,1)
		  
		  //Get CmdProperties
		  TabID = NthField(res,chr(2),4)
		  
		  P1Name = NthField(res,chr(2),5)
		  P1GUIType = NthField(res,chr(2),6)
		  P1MinMax  = NthField(res,chr(2),7)
		  P1Mask = NthField(res,chr(2),8)
		  P1Default = NthField(res,chr(2),9)
		  
		  P2Name = NthField(res,chr(2),10)
		  P2GUIType = NthField(res,chr(2),11)
		  P2MinMax  = NthField(res,chr(2),12)
		  P2Mask = NthField(res,chr(2),13)
		  P2Default = NthField(res,chr(2),14)
		  
		  P3Name = NthField(res,chr(2),15)
		  P3GUIType = NthField(res,chr(2),16)
		  P3MinMax  = NthField(res,chr(2),17)
		  P3Mask = NthField(res,chr(2),18)
		  P3Default = NthField(res,chr(2),19)
		  
		  P4Name = NthField(res,chr(2),20)
		  P4GUIType = NthField(res,chr(2),21)
		  P4MinMax  = NthField(res,chr(2),22)
		  P4Mask = NthField(res,chr(2),23)
		  P4Default = NthField(res,chr(2),24)
		  
		  //StdGUI
		  if tbGuiStd.Visible then
		    lblP1Name.Visible = false
		    txtP1Text.Visible = false
		    spnP1Spin.Visible = false
		    cmbP1Combo.Visible = false
		    txtP1Text.Mask = ""
		    
		    lblP2Name.Visible = false
		    txtP2Text.Visible = false
		    spnP2Spin.Visible = false
		    cmbP2Combo.Visible = false
		    txtP2Text.Mask = ""
		    
		    lblP3Name.Visible = false
		    txtP3Text.Visible = false
		    spnP3Spin.Visible = false
		    cmbP3Combo.Visible = false
		    txtP3Text.Mask = ""
		    
		    lblP4Name.Visible = false
		    txtP4Text.Visible = false
		    spnP4Spin.Visible = false
		    cmbP4Combo.Visible = false
		    txtP4Text.Mask = ""
		    
		    try
		      if P1Name <> "" then
		        lblP1Name.Visible = true
		        lblP1Name.Text = P1Name
		        //TextField
		        if P1GUIType = "0" then
		          txtP1Text.Visible = true
		          txtP1Text.Mask = P1Mask
		          txtP1Text.Text = P1Default
		        end
		        if P1GUIType = "1" then
		          //SpinButton
		          spnP1Spin.Top = txtP1Text.Top
		          spnP1Spin.Left = txtP1Text.Left
		          spnP1Spin.Width = txtP1Text.Width
		          spnP1Spin.Visible = true
		          sarray = split(P1MinMax,";")
		          if UBound(sarray) > 0 then
		            spnP1Spin.Min = val(sarray(0))
		            spnP1Spin.Max = val(sarray(1))
		            spnP1Spin.SetVal(val(P1Default))
		          end
		        end
		        if P1GUIType = "2" then
		          cmbP1Combo.DeleteAllRows
		          cmbP1Combo.Visible = true
		          cmbP1Combo.Top = txtP1Text.Top
		          cmbP1Combo.Left = txtP1Text.Left
		          cmbP1Combo.Width = txtP1Text.Width
		          sarray = split(P1MinMax,";")
		          for i = 0 to UBound(sarray)
		            cmbP1Combo.AddRow(sarray(i))
		          next
		          //cmbP1Combo.Text = P1Default
		          for i = 0 to cmbP1Combo.ListCount-1
		            cmbP1Combo.ListIndex = i
		            if P1Default = cmbP1Combo.Text then exit
		          next
		        end
		      end
		      
		      if P2Name <> "" then
		        lblP2Name.Visible = true
		        lblP2Name.Text = P2Name
		        //TextField
		        if P2GUIType = "0" then
		          txtP2Text.Visible = true
		          txtP2Text.Mask = P2Mask
		          txtP2Text.Text = P2Default
		        end
		        if P2GUIType = "1" then
		          //SpinButton
		          spnP2Spin.Top = txtP2Text.Top
		          spnP2Spin.Left = txtP2Text.Left
		          spnP2Spin.Width = txtP2Text.Width
		          spnP2Spin.Visible = true
		          sarray = split(P2MinMax,";")
		          if UBound(sarray) > 0 then
		            spnP2Spin.Min = val(sarray(0))
		            spnP2Spin.Max = val(sarray(1))
		            spnP2Spin.SetVal(val(P2Default))
		          end
		        end
		        if P2GUIType = "2" then
		          cmbP2Combo.DeleteAllRows
		          cmbP2Combo.Visible = true
		          cmbP2Combo.Top = txtP2Text.Top
		          cmbP2Combo.Left = txtP2Text.Left
		          cmbP2Combo.Width = txtP2Text.Width
		          sarray = split(P2MinMax,";")
		          for i = 0 to UBound(sarray)
		            cmbP2Combo.AddRow(sarray(i))
		          next
		          //cmbP2Combo.Text = P2Default
		          for i = 0 to cmbP2Combo.ListCount-1
		            cmbP2Combo.ListIndex = i
		            if P2Default = cmbP2Combo.Text then exit
		          next
		        end
		      end
		      
		      if P3Name <> "" then
		        lblP3Name.Visible = true
		        lblP3Name.Text = P3Name
		        //TextField
		        if P3GUIType = "0" then
		          txtP3Text.Visible = true
		          txtP3Text.Mask = P3Mask
		          txtP3Text.Text = P3Default
		        end
		        if P3GUIType = "1" then
		          //SpinButton
		          spnP3Spin.Top = txtP3Text.Top
		          spnP3Spin.Left = txtP3Text.Left
		          spnP3Spin.Width = txtP3Text.Width
		          spnP3Spin.Visible = true
		          sarray = split(P3MinMax,";")
		          if UBound(sarray) > 0 then
		            spnP3Spin.Min = val(sarray(0))
		            spnP3Spin.Max = val(sarray(1))
		            spnP3Spin.SetVal(val(P3Default))
		          end
		        end
		        if P3GUIType = "2" then
		          cmbP3Combo.DeleteAllRows
		          cmbP3Combo.Visible = true
		          cmbP3Combo.Top = txtP3Text.Top
		          cmbP3Combo.Left = txtP3Text.Left
		          cmbP3Combo.Width = txtP3Text.Width
		          sarray = split(P3MinMax,";")
		          for i = 0 to UBound(sarray)
		            cmbP3Combo.AddRow(sarray(i))
		          next
		          //cmbP3Combo.Text = P3Default
		          for i = 0 to cmbP3Combo.ListCount-1
		            cmbP3Combo.ListIndex = i
		            if P3Default = cmbP3Combo.Text then exit
		          next
		        end
		      end
		      
		      if P4Name <> "" then
		        lblP4Name.Visible = true
		        lblP4Name.Text = P4Name
		        //TextField
		        if P4GUIType = "0" then
		          txtP4Text.Visible = true
		          txtP4Text.Mask = P4Mask
		          txtP4Text.Text = P4Default
		        end
		        if P4GUIType = "1" then
		          //SpinButton
		          spnP4Spin.Top = txtP4Text.Top
		          spnP4Spin.Left = txtP4Text.Left
		          spnP4Spin.Width = txtP4Text.Width
		          spnP4Spin.Visible = true
		          sarray = split(P4MinMax,";")
		          if UBound(sarray) > 0 then
		            spnP4Spin.Min = val(sarray(0))
		            spnP4Spin.Max = val(sarray(1))
		            spnP4Spin.SetVal(val(P4Default))
		          end
		        end
		        if P4GUIType = "2" then
		          cmbP4Combo.DeleteAllRows
		          cmbP4Combo.Visible = true
		          cmbP4Combo.Top = txtP4Text.Top
		          cmbP4Combo.Left = txtP4Text.Left
		          cmbP4Combo.Width = txtP4Text.Width
		          sarray = split(P4MinMax,";")
		          for i = 0 to UBound(sarray)
		            cmbP4Combo.AddRow(sarray(i))
		          next
		          //cmbP4Combo.Text = P4Default
		          for i = 0 to cmbP4Combo.ListCount-1
		            cmbP4Combo.ListIndex = i
		            if P4Default = cmbP4Combo.Text then exit
		          next
		        end
		      end
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateCuelist(CuelistName as string)
		  dim i as integer
		  dim s,res as string
		  
		  App.MouseCursor = System.Cursors.Wait
		  s = ""
		  for i = 0 to lstCues.ListCount-1
		    s = s + str(i) + chr(9)
		    s = s + lstcues.Cell(i,1) + chr(9)
		    s = s + lstcues.Cell(i,2) + chr(9)
		    s = s + lstcues.Cell(i,3) + chr(9)
		    s = s + lstcues.Cell(i,4) + chr(13)
		  next
		  
		  s = DeleteLastChar(s,chr(13))
		  res = ScrMan.SetCuesetScript(CuelistName, s)
		  cmdAddCmd.Caption = "Add Cmd"
		  UpdateCuelistGrid
		  App.MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateCuelistGrid()
		  dim res,tmp as string
		  dim i,CuelistsRow,OldCueIndex as integer
		  
		  CuelistsRow = lstCuelists.ListIndex
		  OldCueIndex = lstCues.listindex
		  
		  //if CurrentSelectedCueset = "" then exit sub
		  if lstcues.ListCount < 1 then 
		     lstCues.AddRow("0")
		    exit
		  end
		  
		  
		  if CuelistsRow = -1 then exit
		  lstCuelists.ListIndex = CuelistsRow
		  cmdAddCmd.Caption = "Add Cmd"
		  
		  res = ScrMan.GetCuesetScript(lstCuelists.Cell(CuelistsRow,0))
		  if res = "-4001" then
		    MsgBox("Task not found")
		  else
		    App.MouseCursor = System.Cursors.wait
		    CurrentSelectedCueset = lstCuelists.Cell(CuelistsRow,0)
		    lstCues.Enabled = true
		    lstcues.DeleteAllRows
		    for i = 1 to CountFields(res,chr(13))
		      tmp = NthField(res,chr(13),i)
		      lstCues.AddRow(NthField(tmp,chr(9),1))
		      lstCues.Cell(lstCues.ListCount-1,1) = NthField(tmp,chr(9),2)
		      lstCues.Cell(lstCues.ListCount-1,2) = NthField(tmp,chr(9),3)
		      lstCues.Cell(lstCues.ListCount-1,3) = NthField(tmp,chr(9),4)
		      lstCues.Cell(lstCues.ListCount-1,4) = NthField(tmp,chr(9),5)
		    next
		    if lstCues.ListCount < 1 then lstCues.AddRow("0")
		  end
		  
		  
		  //Leere letzte Zeile hinzufügen falls nicht vorhanden
		  if (lstCues.Cell(lstCues.ListCount-1,3) <> "") then 
		    lstCues.AddRow(str(lstCues.ListCount))
		  end
		  
		  App.MouseCursor = System.Cursors.StandardPointer
		  if lstCues.ListCount > 1 then lstCues.ListIndex = 0
		  if (OldCueIndex >= 0) and (OldCueIndex <= lstCues.LastIndex) then lstCues.ListIndex = OldCueIndex
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateDeviceGUI(row as integer)
		  dim res,s as string
		  dim i as integer
		  dim DP1Name, DP1GUIType, DP1MinMax, DP1Default, DP1Mask, DP2Name, DP2GUIType, DP2MinMax, DP2Default, DP2Mask as string
		  dim sarray(-1) As  String
		  
		  
		  if row = -1 then exit
		  lstDevices.ListIndex = row
		  CurrentSelectedCommand = ""
		  CurrentSelectedEvent = ""
		  
		  CurrentSelectedDevice = lstDevices.Cell(row,0)
		  if CurrentSelectedDevice = "" then
		    tbGuiStd.Enabled = false
		  else
		    ClearDeviceGUI
		    tbGuiStd.Enabled = true
		    //Update Command List
		    res = DevMan.GetCommandList(CurrentSelectedDevice)
		    if left(res,1) <> "-" then
		      for i = 1 to CountFields(res,chr(2)) step 3
		        if NthField(res,chr(2),i+2) = "Commands" then
		          s = NthField(res,chr(2),i)
		          if len(s) < 3 then s = "0" + s
		          if len(s) < 3 then s = "0" + s
		          lstCommands.AddRow(s)
		          lstCommands.Cell(lstCommands.ListCount-1,1) = NthField(res,chr(2),i+1)
		          lstCommands.ColumnSortDirection(0) = Listbox.SortAscending
		          lstCommands.SortedColumn = 0
		          lstCommands.Sort
		        end
		        
		      next
		      //Update EventList
		      res = DevMan.GetEventList(CurrentSelectedDevice)
		      for i = 1 to CountFields(res,chr(2)) step 3
		        if NthField(res,chr(2),i+2) = "Events" then
		          s = NthField(res,chr(2),i)
		          if len(s) < 3 then s = "0" + s
		          if len(s) < 3 then s = "0" + s
		          lstDeviceEvents.AddRow(s)
		          lstDeviceEvents.Cell(lstDeviceEvents.ListCount-1,1) = NthField(res,chr(2),i+1)
		          lstDeviceEvents.ColumnSortDirection(0) = Listbox.SortAscending
		          lstDeviceEvents.SortedColumn = 0
		          lstDeviceEvents.Sort
		        end
		      next
		      
		      //Add Channels
		      res = DevMan.GetIoChannels(CurrentSelectedDevice)
		      lstDeviceChannels.DeleteAllRows
		      lstChannels.DeleteAllRows
		      lstEventChannels.DeleteAllRows
		      for i = 1 to CountFields(res,",")
		        lstDeviceChannels.AddRow(NthField(res,",",i))
		        lstChannels.AddRow(NthField(res,",",i))
		        lstEventChannels.AddRow(NthField(res,",",i))
		      next
		      
		      //Get Device Properties
		      s = DevMan.GetDevicePropertiesByName(CurrentSelectedDevice)
		      if left(s,1) = "-" then
		        MsgBox(s)
		        exit
		      end
		      
		      DP1Name = NthField(s,chr(2),7)
		      DP1GUIType = NthField(s,chr(2),8)
		      DP1MinMax = NthField(s,chr(2),9)
		      DP1Default = NthField(s,chr(2),10)
		      DP1Mask = NthField(s,chr(2),11)
		      
		      DP2Name = NthField(s,chr(2),12)
		      DP2GUIType = NthField(s,chr(2),13)
		      DP2MinMax = NthField(s,chr(2),14)
		      DP2Default = NthField(s,chr(2),15)
		      DP2Mask = NthField(s,chr(2),16)
		      
		      //Set Device GUI Commands
		      if DP1Name <> "" then
		        lblDP1Name.Visible = true
		        lblDP1Name.Text = DP1Name
		        //TextField
		        if DP1GUIType = "0" then
		          txtDP1Text.Visible = true
		          txtDP1Text.Text = DP1Default
		          if DP1Mask <> chr(0) then txtDP1Text.Mask = DP1Mask
		        end
		        if DP1GUIType = "1" then
		          //SpinButton
		          spnDP1Spin.Top = txtDP1Text.Top
		          spnDP1Spin.Left = txtDP1Text.Left
		          spnDP1Spin.Width = txtDP1Text.Width
		          spnDP1Spin.Visible = true
		          sarray = split(DP1MinMax,";")
		          if UBound(sarray) > 0 then
		            spnDP1Spin.Min = val(sarray(0))
		            spnDP1Spin.Max = val(sarray(1))
		            spnDP1Spin.SetVal(val(DP1Default))
		          end
		        end
		        if DP1GUIType = "2" then
		          cmbDP1Combo.DeleteAllRows
		          cmbDP1Combo.Visible = true
		          cmbDP1Combo.Top = txtDP1Text.Top
		          cmbDP1Combo.Left = txtDP1Text.Left
		          cmbDP1Combo.Width = txtDP1Text.Width
		          sarray = split(DP1MinMax,";")
		          for i = 0 to UBound(sarray)
		            cmbDP1Combo.AddRow(sarray(i))
		          next
		          for i = 0 to cmbDP1Combo.ListCount-1
		            cmbDP1Combo.ListIndex = i
		            if DP1Default = cmbDP1Combo.Text then exit
		          next
		        end
		      end
		      
		      if DP2Name <> "" then
		        lblDP2Name.Visible = true
		        lblDP2Name.Text = DP2Name
		        //TextField
		        if DP2GUIType = "0" then
		          txtDP2Text.Visible = true
		          txtDP2Text.Text = DP2Default
		          if DP2Mask <> chr(0) then txtDP2Text.Mask = DP2Mask
		        end
		        if DP2GUIType = "1" then
		          //SpinButton
		          spnDP2Spin.Top = txtDP2Text.Top
		          spnDP2Spin.Left = txtDP2Text.Left
		          spnDP2Spin.Width = txtDP2Text.Width
		          spnDP2Spin.Visible = true
		          sarray = split(DP2MinMax,";")
		          if UBound(sarray) > 0 then
		            spnDP2Spin.Min = val(sarray(0))
		            spnDP2Spin.Max = val(sarray(1))
		            spnDP2Spin.SetVal(val(DP2Default))
		          end
		        end
		        if DP2GUIType = "2" then
		          cmbDP2Combo.DeleteAllRows
		          cmbDP2Combo.Visible = true
		          cmbDP2Combo.Top = txtDP2Text.Top
		          cmbDP2Combo.Left = txtDP2Text.Left
		          cmbDP2Combo.Width = txtDP2Text.Width
		          sarray = split(DP2MinMax,";")
		          for i = 0 to UBound(sarray)
		            cmbDP2Combo.AddRow(sarray(i))
		          next
		          for i = 0 to cmbDP2Combo.ListCount-1
		            cmbDP2Combo.ListIndex = i
		            if DP2Default = cmbDP2Combo.Text then exit
		          next
		        end
		      end
		      
		      //Set Device GUI Events
		      if DP1Name <> "" then
		        lblDP1Name1.Visible = true
		        lblDP1Name1.Text = DP1Name
		        //TextField
		        if DP1GUIType = "0" then
		          txtDP1Text1.Visible = true
		          txtDP1Text1.Text = DP1Default
		          if DP1Mask <> chr(0) then txtDP1Text1.Mask = DP1Mask
		        end
		        if DP1GUIType = "1" then
		          //SpinButton
		          spnDP1Spin1.Top = txtDP1Text1.Top
		          spnDP1Spin1.Left = txtDP1Text1.Left
		          spnDP1Spin1.Width = txtDP1Text1.Width
		          spnDP1Spin1.Visible = true
		          sarray = split(DP1MinMax,";")
		          if UBound(sarray) > 0 then
		            spnDP1Spin1.Min = val(sarray(0))
		            spnDP1Spin1.Max = val(sarray(1))
		            spnDP1Spin1.SetVal(val(DP1Default))
		          end
		        end
		        if DP1GUIType = "2" then
		          cmbDP1Combo1.DeleteAllRows
		          cmbDP1Combo1.Visible = true
		          cmbDP1Combo1.Top = txtDP1Text1.Top
		          cmbDP1Combo1.Left = txtDP1Text1.Left
		          cmbDP1Combo1.Width = txtDP1Text1.Width
		          sarray = split(DP1MinMax,";")
		          for i = 0 to UBound(sarray)
		            cmbDP1Combo1.AddRow(sarray(i))
		          next
		          for i = 0 to cmbDP1Combo1.ListCount-1
		            cmbDP1Combo1.ListIndex = i
		            if DP1Default = cmbDP1Combo1.Text then exit
		          next
		        end
		      end
		      
		      if DP2Name <> "" then
		        lblDP2Name1.Visible = true
		        lblDP2Name1.Text = DP2Name
		        //TextField
		        if DP2GUIType = "0" then
		          txtDP2Text1.Visible = true
		          txtDP2Text1.Text = DP2Default
		          if DP2Mask <> chr(0) then txtDP2Text1.Mask = DP2Mask
		        end
		        if DP2GUIType = "1" then
		          //SpinButton
		          spnDP2Spin1.Top = txtDP2Text1.Top
		          spnDP2Spin1.Left = txtDP2Text1.Left
		          spnDP2Spin1.Width = txtDP1Text1.Width
		          spnDP2Spin1.Visible = true
		          sarray = split(DP2MinMax,";")
		          if UBound(sarray) > 0 then
		            spnDP2Spin1.Min = val(sarray(0))
		            spnDP2Spin1.Max = val(sarray(1))
		            spnDP2Spin1.SetVal(val(DP2Default))
		          end
		        end
		        if DP2GUIType = "2" then
		          cmbDP2Combo1.DeleteAllRows
		          cmbDP2Combo1.Visible = true
		          cmbDP2Combo1.Top = txtDP2Text1.Top
		          cmbDP2Combo1.Left = txtDP2Text1.Left
		          cmbDP2Combo1.Width = txtDP1Text1.Width
		          sarray = split(DP2MinMax,";")
		          for i = 0 to UBound(sarray)
		            cmbDP2Combo1.AddRow(sarray(i))
		          next
		          for i = 0 to cmbDP2Combo1.ListCount-1
		            cmbDP2Combo1.ListIndex = i
		            if DP2Default = cmbDP2Combo1.Text then exit
		          next
		        end
		      end
		    else
		      CurrentSelectedDevice = ""
		    end
		    
		    
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateEventGUI()
		  
		  dim i as Integer
		  dim P1Name,P1GUIType,P1MinMax,P1Default,P1Mask,P2Name,P2GUIType,P2MinMax,P2Default,P2Mask as string
		  dim P3Name,P3GUIType,P3MinMax,P3Default,P3Mask,P4Name,P4GUIType,P4MinMax,P4Default,P4Mask as string
		  dim res,sarray(-1), TabID as string
		  
		  
		  res = DevMan.GetCommandProperties(CurrentSelectedDevice,CurrentSelectedEvent)
		  
		  
		  if CountFields(res,chr(2)) < 29 then
		    MsgBox(res)
		    exit
		  end
		  tbGuiStd.Value = 1
		  CurrentSelectedEvent = lstDeviceEvents.Cell(lstDeviceEvents.ListIndex,1)
		  
		  //Get EventProperties
		  TabID = NthField(res,chr(2),4)
		  
		  P1Name = NthField(res,chr(2),5)
		  P1GUIType = NthField(res,chr(2),6)
		  P1MinMax  = NthField(res,chr(2),7)
		  P1Mask = NthField(res,chr(2),8)
		  P1Default = NthField(res,chr(2),9)
		  
		  P2Name = NthField(res,chr(2),10)
		  P2GUIType = NthField(res,chr(2),11)
		  P2MinMax  = NthField(res,chr(2),12)
		  P2Mask = NthField(res,chr(2),13)
		  P2Default = NthField(res,chr(2),14)
		  
		  P3Name = NthField(res,chr(2),15)
		  P3GUIType = NthField(res,chr(2),16)
		  P3MinMax  = NthField(res,chr(2),17)
		  P3Mask = NthField(res,chr(2),18)
		  P3Default = NthField(res,chr(2),19)
		  
		  P4Name = NthField(res,chr(2),20)
		  P4GUIType = NthField(res,chr(2),21)
		  P4MinMax  = NthField(res,chr(2),22)
		  P4Mask = NthField(res,chr(2),23)
		  P4Default = NthField(res,chr(2),24)
		  
		  //StdGUI
		  if tbGuiStd.Visible then
		    lblP1Name1.Visible = false
		    txtP1Text1.Visible = false
		    spnP1Spin1.Visible = false
		    cmbP1Combo1.Visible = false
		    
		    lblP2Name1.Visible = false
		    txtP2Text1.Visible = false
		    spnP2Spin1.Visible = false
		    cmbP2Combo1.Visible = false
		    
		    lblP3Name1.Visible = false
		    txtP3Text1.Visible = false
		    spnP3Spin1.Visible = false
		    cmbP3Combo1.Visible = false
		    
		    lblP4Name1.Visible = false
		    txtP4Text1.Visible = false
		    spnP4Spin1.Visible = false
		    cmbP4Combo1.Visible = false
		    
		    
		    if P1Name <> "" then
		      lblP1Name1.Visible = true
		      lblP1Name1.Text = P1Name
		      //TextField
		      if P1GUIType = "0" then
		        txtP1Text1.Visible = true
		        txtP1Text1.Text = P1Default
		        if P1Mask <> chr(0) then txtP1Text1.Mask = P1Mask
		      end
		      if P1GUIType = "1" then
		        //SpinButton
		        spnP1Spin1.Top = txtP1Text1.Top
		        spnP1Spin1.Left = txtP1Text1.Left
		        spnP1Spin1.Width = txtP1Text1.Width
		        spnP1Spin1.Visible = true
		        sarray = split(P1MinMax,";")
		        spnP1Spin1.Min = val(sarray(0))
		        spnP1Spin1.Max = val(sarray(1))
		        spnP1Spin1.SetVal(val(P1Default))
		      end
		      if P1GUIType = "2" then
		        cmbP1Combo1.DeleteAllRows
		        cmbP1Combo1.Visible = true
		        cmbP1Combo1.Top = txtP1Text1.Top
		        cmbP1Combo1.Left = txtP1Text1.Left
		        cmbP1Combo1.Width =txtP1Text1.Width
		        sarray = split(P1MinMax,";")
		        for i = 0 to UBound(sarray)
		          cmbP1Combo1.AddRow(sarray(i))
		        next
		        //cmbP1Combo.Text = P1Default
		        for i = 0 to cmbP1Combo1.ListCount-1
		          cmbP1Combo1.ListIndex = i
		          if P1Default = cmbP1Combo1.Text then exit
		        next
		      end
		    end
		    
		    if P2Name <> "" then
		      lblP2Name1.Visible = true
		      lblP2Name1.Text = P2Name
		      //TextField
		      if P2GUIType = "0" then
		        txtP2Text1.Visible = true
		        txtP2Text1.Text = P2Default
		        if P2Mask <> chr(0) then txtP2Text1.Mask = P2Mask
		      end
		      if P2GUIType = "1" then
		        //SpinButton
		        spnP2Spin1.Top = txtP2Text1.Top
		        spnP2Spin1.Left = txtP2Text1.Left
		        spnP2Spin1.Width = txtP2Text1.Width
		        spnP2Spin1.Visible = true
		        sarray = split(P2MinMax,";")
		        spnP2Spin1.Min = val(sarray(0))
		        spnP2Spin1.Max = val(sarray(1))
		        spnP2Spin1.SetVal(val(P2Default))
		      end
		      if P2GUIType = "2" then
		        cmbP2Combo1.DeleteAllRows
		        cmbP2Combo1.Visible = true
		        cmbP2Combo1.Top = txtP2Text1.Top
		        cmbP2Combo1.Left = txtP2Text1.Left
		        cmbP2Combo1.Width = txtP2Text1.Width
		        sarray = split(P2MinMax,";")
		        for i = 0 to UBound(sarray)
		          cmbP2Combo1.AddRow(sarray(i))
		        next
		        //cmbP2Combo.Text = P2Default
		        for i = 0 to cmbP2Combo1.ListCount-1
		          cmbP2Combo1.ListIndex = i
		          if P2Default = cmbP2Combo1.Text then exit
		        next
		      end
		    end
		    
		    if P3Name <> "" then
		      lblP3Name1.Visible = true
		      lblP3Name1.Text = P3Name
		      //TextField
		      if P3GUIType = "0" then
		        txtP3Text1.Visible = true
		        txtP3Text1.Text = P3Default
		        if P3Mask <> chr(0) then txtP3Text1.Mask = P3Mask
		      end
		      if P3GUIType = "1" then
		        //SpinButton
		        spnP3Spin1.Top = txtP3Text1.Top
		        spnP3Spin1.Left = txtP3Text1.Left
		        spnP3Spin1.Width = txtP3Text1.Width
		        spnP3Spin1.Visible = true
		        sarray = split(P3MinMax,";")
		        spnP3Spin1.Min = val(sarray(0))
		        spnP3Spin1.Max = val(sarray(1))
		        spnP3Spin1.SetVal(val(P3Default))
		      end
		      if P3GUIType = "2" then
		        cmbP3Combo1.DeleteAllRows
		        cmbP3Combo1.Visible = true
		        cmbP3Combo1.Top = txtP3Text1.Top
		        cmbP3Combo1.Left = txtP3Text1.Left
		        cmbP3Combo1.Width = txtP3Text1.Width
		        sarray = split(P3MinMax,";")
		        for i = 0 to UBound(sarray)
		          cmbP3Combo1.AddRow(sarray(i))
		        next
		        //cmbP3Combo.Text = P3Default
		        for i = 0 to cmbP3Combo1.ListCount-1
		          cmbP3Combo1.ListIndex = i
		          if P3Default = cmbP3Combo1.Text then exit
		        next
		      end
		    end
		    
		    if P4Name <> "" then
		      lblP4Name1.Visible = true
		      lblP4Name1.Text = P4Name
		      //TextField
		      if P4GUIType = "0" then
		        txtP4Text1.Visible = true
		        txtP4Text1.Text = P4Default
		        if P4Mask <> chr(0) then txtP4Text1.Mask = P4Mask
		      end
		      if P4GUIType = "1" then
		        //SpinButton
		        spnP4Spin1.Top = txtP4Text1.Top
		        spnP4Spin1.Left = txtP4Text1.Left
		        spnP4Spin1.Width = txtP4Text1.Width
		        spnP4Spin1.Visible = true
		        sarray = split(P4MinMax,";")
		        spnP4Spin1.Min = val(sarray(0))
		        spnP4Spin1.Max = val(sarray(1))
		        spnP4Spin1.SetVal(val(P4Default))
		      end
		      if P4GUIType = "2" then
		        cmbP4Combo1.DeleteAllRows
		        cmbP4Combo1.Visible = true
		        cmbP4Combo1.Top = txtP4Text1.Top
		        cmbP4Combo1.Left = txtP4Text1.Left
		        cmbP4Combo1.Width = txtP4Text1.Width
		        sarray = split(P4MinMax,";")
		        for i = 0 to UBound(sarray)
		          cmbP4Combo1.AddRow(sarray(i))
		        next
		        //cmbP4Combo.Text = P4Default
		        for i = 0 to cmbP4Combo1.ListCount-1
		          cmbP4Combo1.ListIndex = i
		          if P4Default = cmbP4Combo1.Text then exit
		        next
		      end
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateTimestripScript()
		  dim i,x as integer
		  dim s,res as string
		  
		  if BlockTimestripUpdate = False then
		    lstTimestrip.ColumnsortDirection(0)=ListBox.SortAscending
		    lstTimestrip.SortedColumn=0 //first column is the sort column
		    lstTimestrip.Sort
		    
		    for i = 0 to frmMain.lstTimestrip.ColumnCount-1
		      frmMain.lstTimestrip.ColumnSortDirection(i) = 0
		    next
		    
		    s = ""
		    for i = 0 to lstTimestrip.ListCount-1
		      for x = 0 to lstTimestrip.ColumnCount-1
		        s = s + lstTimestrip.Cell(i,x) +  chr(9)
		      next x
		      s = DeleteLastChar(s,chr(9))
		      s = s + chr(13)
		    next
		    s = DeleteLastChar(s,chr(13))
		    res = Scrman.SetCuesetScript(CurrentSelectedCueset,s)
		    
		    //Set Cueset Params
		    if val(txtPreroll.Text) < 0 then txtPreroll.Text = "0"
		    s = cmdTCSource.Caption + chr(2)+str(cmbFramerate.ListIndex) + chr(2) + txtPreroll.Text + chr(2) + str(cmbVorzeichen.ListIndex)+chr(2)+txtRelativeOffset.Text + chr(2)+txtStartTC.Text+chr(2)+txtEndTC.Text+chr(2)
		    if chkLoop.Value = true then
		      s = s + "1"
		    else
		      s = s + "0"
		    end
		    
		    for i = 0 to lstChaseDevices.ListCount-1
		      s=s + chr(2)+lstChaseDevices.Cell(i,0) + chr(2) + lstChaseDevices.Cell(i,1)
		    next
		    res = Scrman.SetCuesetParams(CurrentSelectedCueset,s)
		    
		    //Set Start Timecode to default
		    i = Scrman.GetCuesetIdByName(CurrentSelectedCueset)
		    if i >= 0 then 
		      aCuesets(i).Precompile
		      aCuesets(i).CuesetContext.CurrentStartTC = ""
		    end
		    
		    //If no Internal Timecode then disable Start / EndTC
		    if InStr(cmdTCSource.Caption,"Internal Timecode") > 0 then
		      txtStartTC.Enabled = true
		      txtEndTC.Enabled = true
		      lblStartTC.Enabled = true
		      lblEndTC.Enabled = true
		      cmdStartFromPosition.Enabled =true
		      chkLoop.Enabled = true
		    else
		      txtStartTC.Enabled = False
		      txtEndTC.Enabled = False
		      lblStartTC.Enabled = False
		      lblEndTC.Enabled = False
		      cmdStartFromPosition.Enabled = false
		      chkLoop.Enabled = false
		    end
		  end
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		counter As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		currentSelectedTimestripColumn As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		currentSelectedTimestripRow As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		EngineEventList() As string
	#tag EndProperty

	#tag Property, Flags = &h0
		UndoStore As TUndoStore
	#tag EndProperty

	#tag Property, Flags = &h0
		WasActivated As boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events lstDevices
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  UpdateDeviceGUI(row)
		  cmdAddEvent.Caption = "Add Event"
		  cmdAddCmd.Caption = "Add Cmd"
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lstACK
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  if not me.Enabled then exit
		  
		  Dim m1 as New MenuItem
		  Dim m2 as New MenuItem
		  
		  m1.Text= "Clear List"
		  m2.Text= "Save List to File..."
		  
		  base.append m1
		  base.append m2
		  
		  Return true //display the contextual menu if cueset is not editable
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Dim f As FolderItem
		  Dim t as TextOutputStream
		  Dim csv as New FileType
		  dim i as integer
		  dim s as string
		  
		  csv.Name = "Comma seperated Values"
		  csv.MacType = "CSV"
		  csv.Extensions = "csv;csv"
		  
		  
		  
		  Select Case hititem.text
		    '
		  case "Clear List"
		    lstACK.DeleteAllRows
		    
		  case"Save List to File..."
		    
		    f = GetSaveFolderItem("csv","Loggfile.csv")
		    if f <> nil then
		      s = f.AbsolutePath
		      f = nil
		      if Right(s,4) <> ".csv" then s = s + ".csv"
		      f = GetFolderItem(s)
		      
		      t = TextOutputStream.Create(f)
		      for i = 0 to lstAck.ListCount-1
		        t.WriteLine ConvertEncoding(""""+lstAck.Cell(i,0)+""""+","+""""+lstAck.Cell(i,1)+""""+","+""""+lstAck.Cell(i,2)+""""+ ","+""""+lstAck.Cell(i,3)+"""", Encodings.WindowsANSI)
		      next
		      t.close
		    end
		  End select
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lstAvailableChannels
	#tag Event
		Sub DoubleClick()
		  cmdAdd.Push
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstDeviceChannels
	#tag Event
		Sub DoubleClick()
		  cmdDelete.Push
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstDeviceEvents
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  CurrentSelectedEvent = lstDeviceEvents.Cell(row,1)
		  lstDeviceEvents.ListIndex = row
		  UpdateEventGUI
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cmdAdd
	#tag Event
		Sub Action()
		  Dim i as integer
		  Dim cname,clist,res as String
		  
		  cname = ""
		  clist = ""
		  //check if channel is selected
		  for i = 0 to lstAvailableChannels.ListCount - 1
		    if lstAvailableChannels.Selected(i) then
		      cname = lstAvailableChannels.Cell(i,0)
		      lstDeviceChannels.AddRow(cname)
		      lstDeviceChannels.SortedColumn = 0
		      lstDeviceChannels.Sort
		      
		    end
		  next
		  //add Channels to
		  lstChannels.DeleteAllRows
		  lstEventChannels.DeleteAllRows
		  for i = 0 to lstDeviceChannels.ListCount-1
		    lstChannels.AddRow(lstDeviceChannels.Cell(i,0))
		    lstEventChannels.AddRow(lstDeviceChannels.Cell(i,0))
		    clist = clist + lstDeviceChannels.Cell(i,0) + ","
		  next
		  clist = DeleteLastChar(clist,",")
		  res = DevMan.SetIoChannels(CurrentSelectedDevice,clist)
		  if res <> "0" then MsgBox(res)
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdDelete
	#tag Event
		Sub Action()
		  Dim i as integer
		  Dim cname,clist,res as String
		  
		  cname = ""
		  //check if channel is selected
		  for i = lstDeviceChannels.ListCount - 1 DownTo 0
		    if lstDeviceChannels.Selected(i) then
		      lstDeviceChannels.RemoveRow(i)
		      lstDeviceChannels.SortedColumn = 0
		      lstDeviceChannels.Sort
		    end
		  next
		  
		  //add Channels to
		  lstChannels.DeleteAllRows
		  lstEventChannels.DeleteAllRows
		  for i = 0 to lstDeviceChannels.ListCount-1
		    lstChannels.AddRow(lstDeviceChannels.Cell(i,0))
		    lstEventChannels.AddRow(lstDeviceChannels.Cell(i,0))
		    clist = clist + lstDeviceChannels.Cell(i,0) + ","
		  next
		  clist = DeleteLastChar(clist,",")
		  res = DevMan.SetIoChannels(CurrentSelectedDevice,clist)
		  if res <> "0" then MsgBox(res)
		  Globals.ProjectHasChanged(true)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddEvent
	#tag Event
		Sub Action()
		  dim i,x as integer
		  Dim DeviceName,csvDeviceChannels,res,DP1,DP2,P1,P2,P3,P4,TermChar as string
		  
		  res = ""
		  
		  //get devicename
		  DeviceName = lstDevices.Text
		  //get channels
		  csvDeviceChannels = ""
		  for i = 0 to lstEventChannels.ListCount -1
		    if lstEventChannels.Selected(i) = true then
		      csvDeviceChannels = lstEventChannels.Cell(i,0)
		    end
		  next
		  
		  if csvDeviceChannels = "" then
		    MsgBox("No channel selected")
		    exit
		  end
		  
		  if CurrentSelectedEvent = "" then
		    MsgBox("No Command selected")
		    exit
		  end
		  
		  i = DevMan.GetDeviceIdByName(CurrentSelectedDevice)
		  if i >= 0 then
		    x = DevMan.GetCommandIdByName(CurrentSelectedDevice,CurrentSelectedEvent)
		    if x >= 0 then
		      TermChar = DevMan.aDevices(i).aCMD(x).AckString
		    else
		      MsgBox("Event not found")
		      exit
		    end
		  else
		    MsgBox("Device not found")
		    exit
		  end
		  
		  DP1 = ""
		  DP2 = ""
		  P1 = ""
		  P2 = ""
		  P3 = ""
		  P4 = ""
		  
		  //Check if all params available
		  
		  //check DP1
		  if txtDP1Text1.Visible then DP1 = txtDP1Text1.Text
		  if spnDP1Spin1.Visible then DP1 = str(spnDP1Spin1.GetVal)
		  if cmbDP1Combo1.Visible then DP1 = cmbDP1Combo1.Text
		  //check DP2
		  if txtDP2Text1.Visible then DP2 = txtDP2Text1.Text
		  if spnDP2Spin1.Visible then DP2 = str(spnDP2Spin1.GetVal)
		  if cmbDP2Combo1.Visible then DP2 = cmbDP2Combo1.Text
		  //check P1
		  if txtP1Text1.Visible then P1 = txtP1Text1.Text
		  if spnP1Spin1.Visible then P1 = str(spnP1Spin1.GetVal)
		  if cmbP1Combo1.Visible then P1 = cmbP1Combo1.Text
		  //check P2
		  if txtP2Text1.Visible then P2 = txtP2Text1.Text
		  if spnP2Spin1.Visible then P2 = str(spnP2Spin1.GetVal)
		  if cmbP2Combo1.Visible then P2 = cmbP2Combo1.Text
		  //check P3
		  if txtP3Text1.Visible then P3 = txtP3Text1.Text
		  if spnP3Spin1.Visible then P3 = str(spnP3Spin1.GetVal)
		  if cmbP3Combo1.Visible then P3 = cmbP3Combo1.Text
		  //check P4
		  if txtP4Text1.Visible then P4 = txtP4Text1.Text
		  if spnP4Spin1.Visible then P4 = str(spnP4Spin1.GetVal)
		  if cmbP4Combo1.Visible then P4 = cmbP4Combo1.Text
		  
		  //check if device is selected
		  if CurrentSelectedDevice <> "" then
		    if me.Caption = "Update" then
		      DevMan.ClearEventList
		      for x = 0 to lstEvents.ListCount-1
		        if lstEvents.Selected(x) then
		          lstEvents.Cell(x,0) = CurrentSelectedDevice
		          lstEvents.Cell(x,1) = csvDeviceChannels
		          lstEvents.Cell(x,2) = CurrentSelectedEvent
		          lstEvents.Cell(x,4) = TermChar
		          lstEvents.Cell(x,5) = DP1
		          lstEvents.Cell(x,6) = DP2
		          lstEvents.Cell(x,7) = P1
		          lstEvents.Cell(x,8) = P2
		          lstEvents.Cell(x,9) = P3
		          lstEvents.Cell(x,10) = P4
		        end
		      next
		      for i = 0 to lstEvents.ListCount-1
		        res = DevMan.AddEventListItem(lstEvents.Cell(i,0),lstEvents.Cell(i,1),lstEvents.Cell(i,2),lstEvents.Cell(i,3),lstEvents.Cell(i,4),lstEvents.Cell(i,5),lstEvents.Cell(i,6),lstEvents.Cell(i,7),lstEvents.Cell(i,8),lstEvents.Cell(i,9),lstEvents.Cell(i,10))
		      next
		      me.Caption = "Add Event"
		    else
		      
		      res = DevMan.AddEventListItem(CurrentSelectedDevice,csvDeviceChannels,CurrentSelectedEvent,"",TermChar,DP1,DP2,P1,P2,P3,P4)
		      if left(res,1) <> "-" then
		        lstEvents.AddRow("")
		        i = lstEvents.ListCount-1
		        lstEvents.Cell(i,0) = CurrentSelectedDevice
		        lstEvents.Cell(i,1) = csvDeviceChannels
		        lstEvents.Cell(i,2) = CurrentSelectedEvent
		        lstEvents.Cell(i,4) = TermChar
		        lstEvents.Cell(i,5) = DP1
		        lstEvents.Cell(i,6) = DP2
		        lstEvents.Cell(i,7) = P1
		        lstEvents.Cell(i,8) = P2
		        lstEvents.Cell(i,9) = P3
		        lstEvents.Cell(i,10) = P4
		        tbEventsAndVars.Value = 0
		        tbProgram.Value = 1
		      else
		        if res = "-1017" then MsgBox("There is already an Event on this Channel with a different TermChar")
		        if res = "-3026" then MsgBox("There is already an Event with this Device and Eventname")
		      end
		    end
		    Globals.ProjectHasChanged(true)
		  else
		    
		    MsgBox("No device selected")
		  end
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstCommands
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  CurrentSelectedCommand = lstCommands.Cell(row,1)
		  UpdateCommandGUI(row)
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddCmd
	#tag Event
		Sub Action()
		  dim i,Li as integer
		  Dim DeviceName,csvDeviceChannels,res,DP1,DP2,P1,P2,P3,P4,stmp as string
		  Dim Clp as new Clipboard
		  
		  if (tbProgram.Value = 1) and (txtCuesetScript.Enabled = false) then
		    MsgBox("No editable cueset selected")
		    exit
		  end
		  
		  if (tbProgram.Value = 0) and (lstCues.Enabled = false) then
		    MsgBox("No editable cuelist selected")
		    exit
		  end
		  
		  
		  if (tbProgram.Value = 2) and (lstTimestrip.Enabled = false) then
		    MsgBox("No editable Timestrip selected")
		    exit
		  end
		  
		  
		  i = ScrMan.GetCuesetIdByName(CurrentSelectedCueset)
		  if i >= 0 then
		    if aCuesets(i).IsBlocked = true then
		      MsgBox("Cueset is blocked, editing not possible")
		      exit
		    end
		  else
		    MsgBox("Task not found")
		    exit
		  end
		  
		  res = ""
		  
		  //get devicename
		  DeviceName = lstDevices.Text
		  //get channels
		  csvDeviceChannels = ""
		  for i = 0 to lstChannels.ListCount -1
		    if lstChannels.Selected(i) = true then
		      csvDeviceChannels = csvDeviceChannels + lstChannels.Cell(i,0) + ","
		    end
		  next
		  csvDeviceChannels = DeleteLastChar(csvDeviceChannels,",")
		  if csvDeviceChannels = "" then
		    MsgBox("No channel selected")
		    exit
		  end
		  
		  if CurrentSelectedCommand = "" then
		    MsgBox("No Command selected")
		    exit
		  end
		  
		  DP1 = ""
		  DP2 = ""
		  P1 = ""
		  P2 = ""
		  P3 = ""
		  P4 = ""
		  
		  //Check if all params available
		  
		  //check DP1
		  if txtDP1Text.Visible then DP1 = txtDP1Text.Text
		  if spnDP1Spin.Visible then DP1 = str(spnDP1Spin.GetVal)
		  if cmbDP1Combo.Visible then DP1 = cmbDP1Combo.Text
		  //check DP2
		  if txtDP2Text.Visible then DP2 = txtDP2Text.Text
		  if spnDP2Spin.Visible then DP2 = str(spnDP2Spin.GetVal)
		  if cmbDP2Combo.Visible then DP2 = cmbDP2Combo.Text
		  //check P1
		  if txtP1Text.Visible then P1 = txtP1Text.Text
		  if spnP1Spin.Visible then P1 = str(spnP1Spin.GetVal)
		  if cmbP1Combo.Visible then P1 = cmbP1Combo.Text
		  //check P2
		  if txtP2Text.Visible then P2 = txtP2Text.Text
		  if spnP2Spin.Visible then P2 = str(spnP2Spin.GetVal)
		  if cmbP2Combo.Visible then P2 = cmbP2Combo.Text
		  //check P3
		  if txtP3Text.Visible then P3 = txtP3Text.Text
		  if spnP3Spin.Visible then P3 = str(spnP3Spin.GetVal)
		  if cmbP3Combo.Visible then P3 = cmbP3Combo.Text
		  //check P4
		  if txtP4Text.Visible then P4 = txtP4Text.Text
		  if spnP4Spin.Visible then P4 = str(spnP4Spin.GetVal)
		  if cmbP4Combo.Visible then P4 = cmbP4Combo.Text
		  
		  //check if device is selected
		  if CurrentSelectedDevice <> "" then
		    
		    
		    //Cue in CueList einfügen
		    if tbProgram.Value = 0 then
		      Li = lstCues.ListIndex
		      if li < 0 then Li = 0
		      if cmdAddCmd.Caption <> "Add Cmd" then
		        cmdAddCmd.Caption = "Add Cmd"
		        lstCues.RemoveRow(LI)
		      end
		      
		      
		      lstCues.ListIndex = Li
		      lstCues.InsertRow(Li,"")
		      lstCues.Cell(Li,1) = CurrentSelectedDevice
		      lstCues.Cell(Li,2) = csvDeviceChannels
		      lstCues.Cell(Li,3) = CurrentSelectedCommand
		      lstCues.Cell(Li,4) = """"+dp1+""""+","+""""+dp2+""""+","+""""+p1+""""+","+""""+p2+""""+","+""""+p3+""""+","+""""+p4+""""
		      
		      UpdateCuelist(CurrentSelectedCueset)
		    end
		    
		    //Cue in Cueset einfügeb
		    if tbProgram.Value = 1 then
		      Clp.SetText "RunCmd("+""""+CurrentSelectedDevice+""""+","+""""+csvDeviceChannels+""""+","+""""+CurrentSelectedCommand+""""+","+""""+dp1+""""+","+""""+dp2+""""+","+""""+p1+""""+","+""""+p2+""""+","+""""+p3+""""+","+""""+p4+""""+")" +chr(13)
		      txtCuesetScript.ReadOnly = false
		      //Set the cursor to the beginning of the current line
		      txtCuesetScript.PasteCommand
		      txtCuesetScript.SetFocus
		      txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
		      //save Changes
		      //res = ScrMan.SetCuesetScript(CurrentSelectedCueset,txtCuesetScript.Text)
		    end
		    
		    //Cue Timestrip einfügen
		    if tbProgram.Value = 2 then
		      
		      LI = lstTimestrip.ListIndex
		      if Li < 0 then LI = 0
		      
		      if currentSelectedTimestripColumn = 0 then
		        MsgBox("Column is no Track")
		        exit
		      end
		      if currentSelectedTimestripColumn <1 or currentSelectedTimestripColumn > lstTimestrip.ColumnCount-1 then
		        MsgBox("No Track selected")
		        exit
		      end
		      
		      stmp = CurrentSelectedDevice+chr(10) 
		      stmp = stmp + csvDeviceChannels+chr(10) 
		      stmp = stmp +  CurrentSelectedCommand+chr(10) 
		      stmp = stmp +  """"+dp1+""""+","+""""+dp2+""""+","+""""+p1+""""+","+""""+p2+""""+","+""""+p3+""""+","+""""+p4+""""
		      
		      //Add the Cue to The Timestrip
		      if cmdAddCmd.Caption <> "Add Cmd" then cmdAddCmd.Caption = "Add Cmd"
		      
		      lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn) = stmp
		      
		      UpdateTimestripScript
		    end
		    
		    Globals.ProjectHasChanged(true)
		  else
		    
		    MsgBox("No device selected")
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdHelp1
	#tag Event
		Sub Action()
		  dim res as string
		  
		  res = DevMan.GetDeviceHelp(CurrentSelectedDevice)
		  frmDeviceHelp.Show
		  frmDeviceHelp.txtHelp.Text = res
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdRunCmd
	#tag Event
		Sub Action()
		  dim csvDeviceChannels,DP1,DP2,P1,P2,P3,P4 as String
		  dim i as Integer
		  dim cres as TResult
		  
		  //get channels
		  csvDeviceChannels = ""
		  for i = 0 to lstChannels.ListCount -1
		    if lstChannels.Selected(i) = true then
		      csvDeviceChannels = csvDeviceChannels + lstChannels.Cell(i,0) + ","
		    end
		  next
		  csvDeviceChannels = DeleteLastChar(csvDeviceChannels,",")
		  if csvDeviceChannels = "" then
		    MsgBox("No channel selected")
		    exit
		  end
		  
		  if CurrentSelectedCommand = "" then
		    MsgBox("No Command selected")
		    exit
		  end
		  
		  //check DP1
		  if txtDP1Text.Visible then DP1 = txtDP1Text.Text
		  if spnDP1Spin.Visible then DP1 = str(spnDP1Spin.GetVal)
		  if cmbDP1Combo.Visible then DP1 = cmbDP1Combo.Text
		  //check DP2
		  if txtDP2Text.Visible then DP2 = txtDP2Text.Text
		  if spnDP2Spin.Visible then DP2 = str(spnDP2Spin.GetVal)
		  if cmbDP2Combo.Visible then DP2 = cmbDP2Combo.Text
		  //check P1
		  if txtP1Text.Visible then P1 = txtP1Text.Text
		  if spnP1Spin.Visible then P1 = str(spnP1Spin.GetVal)
		  if cmbP1Combo.Visible then P1 = cmbP1Combo.Text
		  //check P2
		  if txtP2Text.Visible then P2 = txtP2Text.Text
		  if spnP2Spin.Visible then P2 = str(spnP2Spin.GetVal)
		  if cmbP2Combo.Visible then P2 = cmbP2Combo.Text
		  //check P3
		  if txtP3Text.Visible then P3 = txtP3Text.Text
		  if spnP3Spin.Visible then P3 = str(spnP3Spin.GetVal)
		  if cmbP3Combo.Visible then P3 = cmbP3Combo.Text
		  //check P4
		  if txtP4Text.Visible then P4 = txtP4Text.Text
		  if spnP4Spin.Visible then P4 = str(spnP4Spin.GetVal)
		  if cmbP4Combo.Visible then P4 = cmbP4Combo.Text
		  
		  cres = DevMan.RunCommand("DirectAccessModeCommand",CurrentSelectedDevice,csvDeviceChannels,CurrentSelectedCommand,DP1,DP2,P1,P2,P3,P4,"")
		  
		  //if cres.ErrorNum <> 0 then MsgBox(cres.Resultmsg)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtP1Text
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events GlobalVarRefreshTimer
	#tag Event
		Sub Action()
		  dim i as Integer
		  dim s as string
		  
		  for i = 0 to lstGlobalVars.ListCount-1
		    s = lstGlobalVars.Cell(i,0)
		    s = ScrMan.GetGlobalVar(s)
		    lstGlobalVars.Cell(i,1) = s
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbProgram
	#tag Event
		Sub Change()
		  dim i as Integer
		  
		  CurrentSelectedCueset = ""
		  
		  if me.Value = 2 then
		    for i = 0 to lstTimestrips.ListCount-1
		      if lstTimestrips.Selected(i) then
		        CurrentSelectedCueset = lstTimestrips.Cell(i,0)
		        exit sub
		      end
		    next
		  end
		  
		  if me.Value = 1 then
		    for i = 0 to lstCuesets.ListCount-1
		      if lstCuesets.Selected(i) then 
		        CurrentSelectedCueset = lstCuesets.Cell(i,0)
		        exit sub
		      end
		    next
		  end
		  
		  if me.Value = 0 then
		    
		    for i = 0 to lstCuelists.ListCount-1
		      if lstCuelists.Selected(i) then
		        CurrentSelectedCueset = lstCuelists.Cell(i,0)
		        exit sub
		      end
		    next
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstTimestrips
	#tag Event
		Function DragRow(drag As DragItem, row As Integer) As Boolean
		  Drag.Text=Me.List(Row) //get the text
		  Return True //allow the drag
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim res,s as string
		  dim i as integer
		  
		  
		  if row = -1 then exit
		  lstTimestrips.ListIndex = row
		  
		  
		  cmdAddCmd.Caption = "Add Cmd"
		  
		  if res = "-4001" then
		    MsgBox("Cueset not found")
		  else
		    CurrentSelectedTimestrip = lstTimestrips.Cell(row,0)
		    CurrentSelectedCueset = lstTimestrips.Cell(row,0)
		    'app.DoEvents
		    //Load the Timestrip into the GUI
		    BlockTimestripUpdate = true
		    //Get the CuesetParameters
		    res = Scrman.GetCuesetParams(CurrentSelectedCueset)
		    cmdTCSource.Caption = NthField(res,chr(2),1)
		    if cmdTCSource.Caption = "" then cmdTCSource.Caption = "Define TC Source"
		    cmbFramerate.ListIndex = val(NthField(res,chr(2),2)) 
		    txtPreroll.Text = NthField(res,chr(2),3) 
		    if txtPreroll.Text = "" then txtPreroll.Text = "10"
		    i = val(NthField(res,chr(2),4))
		    if i > 0 and i < cmbVorzeichen.ListCount then cmbVorzeichen.ListIndex = i
		    txtRelativeOffset.Text = NthField(res,chr(2),5) 
		    if txtRelativeOffset.Text = "" then txtRelativeOffset.Text = "00-00-00-00"
		    txtStartTC.Text = NthField(res,chr(2),6) 
		    if txtStartTC.Text = "" then txtStartTC.Text = "00-00-00-00"
		    txtEndTC.Text = NthField(res,chr(2),7) 
		    if txtEndTC.Text = "" then txtEndTC.Text = "01-00-00-00"
		    //read the Loop Status
		    s =NthField(res,chr(2),8) 
		    if s = "0" then 
		      chkLoop.Value = false
		    else
		      chkLoop.Value = true
		    end
		    
		    //Read the Chase devices
		    lstChaseDevices.DeleteAllRows
		    for i = 9 to CountFields(res,chr(2)) step 2
		      lstChaseDevices.AddRow(NthField(res,chr(2),i))
		      lstChaseDevices.Cell(lstChaseDevices.ListCount-1,1) = NthField(res,chr(2),i+1)
		    next
		    BlockTimestripUpdate = False
		    res = Scrman.GetCuesetScript(CurrentSelectedCueset)
		    DrawTimestrip(res)
		    //Wenn leere Timeline dann neuen Track hinzufügen
		    if lstTimestrip.ColumnCount < 2 then cmdAddTrack.Push
		    
		    i = Scrman.GetCuesetIdByName(CurrentSelectedCueset)
		    
		    if i >= 0 then
		      grpTimestrip.Enabled = true
		      if InStr(cmdTCSource.Caption,"Internal Timecode") > 0 then 
		        txtStartTC.Enabled = true
		        txtEndTC.Enabled = true
		        lblStartTC.Enabled = true
		        lblEndTC.Enabled = true
		        cmdStartFromPosition.Enabled = true
		        chkLoop.Enabled = true
		      else
		        'txtStartTC.Text = ""
		        txtStartTC.Enabled = False
		        'txtEndTC.Text = ""
		        txtEndTC.Enabled = False
		        lblStartTC.Enabled = False
		        lblEndTC.Enabled = False
		        cmdStartFromPosition.Enabled = false
		        chkLoop.Value = false
		        chkLoop.Enabled = false
		      end
		      
		    end
		  end
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  if not me.Enabled then exit
		  
		  Dim m1 as New MenuItem
		  Dim m2 as New MenuItem
		  Dim m3 as New MenuItem
		  Dim m4 as New MenuItem
		  Dim m5 as New MenuItem
		  Dim m6 as New MenuItem
		  Dim m7 as New MenuItem
		  Dim m8 as New MenuItem
		  Dim m9 as New MenuItem
		  Dim m10 as New MenuItem
		  Dim m11 as New MenuItem
		  Dim m12 as New MenuItem
		  
		  m1.Text= "Run Task"
		  m2.Text= "Stop Task"
		  m3.Text = "Stop All Task"
		  m4.Text= "-"
		  m5.text= "Add Task"
		  m6.Text= "Delete Task"
		  m7.Text = "Rename Task"
		  m8.Text = "Compile Task"
		  m9.text = "-"
		  m10.Text = "Cut Task"
		  m11.Text = "Copy Task"
		  m12.Text = "Paste Task"
		  
		  base.append m1
		  base.append m2
		  base.append m3
		  base.append m4
		  base.append m5
		  base.append m6
		  base.append m7
		  base.append m8
		  base.append m9
		  base.append m10
		  base.append m11
		  base.append m12
		  
		  Return true //display the contextual menu
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  Select Case hititem.text
		    
		  case "Add Task"
		    AddCueset
		    
		  case "Delete Task"
		    DeleteCueset
		    
		  case "Rename Task"
		    RenameCueset
		    
		  case "Cut Task"
		    CutCueset
		    
		  case "Copy Task"
		    CopyCueset
		    
		  case "Paste Task"
		    PasteCueset
		    
		  case "Run Task"
		    RunCueset
		    
		  case "Stop Task"
		    StopCueset
		    
		  case "Stop All Task"
		    StopAllCuesets
		    
		  case "Compile Task"
		    dim res as string
		    
		    res = ScrMan.SetCuesetScript(CurrentSelectedCueset,txtCuesetScript.Text)
		    if res <> "0" then MsgBox("Task not found")
		    CompileErrorOccured = false
		    res = ScrMan.CompileCueset(CurrentSelectedCueset)
		    if res <> "0" then MsgBox("Task not found")
		  End select
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lstTimestrip
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if row mod 2= 0 then
		    g.foreColor=RGB(90,90,255)
		  else
		    g.foreColor=RGB(50,50,200)
		  end
		  
		  
		  g.FillRect 0,0,g.width,g.height
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  if currentSelectedTimestripColumn > 0 then
		    cmdAddCmd.Caption = "Update"
		    txtPosition.Text = Me.Cell(currentSelectedTimestripRow,0)
		    SetChaseDevices(CurrentSelectedCueset,txtPosition.Text)
		    EditCue
		  else
		    Me.CellType(currentSelectedTimestripRow,currentSelectedTimestripColumn)=ListBox.TypeEditable
		    Me.EditCell(currentSelectedTimestripRow,currentSelectedTimestripColumn)
		    
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  if TargetLinux then
		    if column > 0 then
		      g.TextSize = 10
		    else
		      g.TextSize = 12
		    end
		  else
		    if column > 0 then
		      g.TextSize = 11
		    else
		      g.TextSize = 15
		    end
		  end
		  g.ForeColor = rgb(255,255,255)
		  g.DrawString Me.Cell(row,column), 0, g.textAscent, g.Width - 2
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		  currentSelectedTimestripRow = row
		  currentSelectedTimestripColumn = column
		  cmdAddCmd.Caption = "Add Cmd"
		  if column >= 0 and column < lstTimestrip.ColumnCount then lstTimestrip.PressHeader(column)
		End Function
	#tag EndEvent
	#tag Event
		Function CellKeyDown(row as Integer, column as Integer, key as String) As Boolean
		  dim HH,MM,SS,FF,s as string
		  
		  if column = 0 then
		    if key = chr(13) or key = chr(3) then
		      s = me.cell(row,column)
		      if CountFields(s,"-") <> 4 then
		        s = s.ReplaceAll("-","")
		        while len(s) < 8
		          s = "0" + s
		        wend
		        
		        HH = left(s,2)
		        MM = Mid(s,3,2)
		        SS = mid(s,5,2)
		        FF = mid(s,7,2)
		        me.activecell.text = HH+"-"+MM +"-" + SS + "-" + FF
		        UpdateTimestripScript
		      end
		    end
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  UpdateTimestripScript
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  //Insert Menu
		  dim mInsert as New MenuItem
		  dim mInsertRunAsFunction as new MenuItem
		  dim mInsertRunAsThread as new MenuItem
		  dim mInsertStopTask as new MenuItem
		  dim mInsertStopAllTasks as new MenuItem
		  dim mInsertSep1 as new MenuItem
		  dim mInsertShowMsg as new MenuItem
		  dim mInsertShellExecAsFunction as new MenuItem
		  dim mInsertShellExecAsThread as new MenuItem
		  
		  mInsert.Text = "Insert"
		  mInsertRunAsFunction.Text = "Call as Function..."
		  mInsertRunAsThread.Text = "Call as Thread..."
		  mInsertStopTask.Text = "Stop Task..."
		  mInsertStopAllTasks.Text = "Stop All Tasks"
		  mInsertSep1.Text = "-"
		  mInsertShowMsg.Text = "Show Message..."
		  mInsertShellExecAsFunction.Text = "Shell Execute as Function..."
		  mInsertShellExecAsThread.Text = "Shell Execute as Thread..."
		  
		  Base.Append mInsert
		  mInsert.Append mInsertRunAsFunction
		  mInsert.Append mInsertRunAsThread
		  mInsert.Append mInsertStopTask
		  mInsert.Append mInsertStopAllTasks
		  mInsert.Append mInsertSep1
		  mInsert.Append mInsertShowMsg
		  mInsert.Append mInsertShellExecAsFunction
		  mInsert.Append mInsertShellExecAsThread
		  
		  //Edit Menu
		  dim mEdit as New MenuItem
		  dim mEditCue as New MenuItem
		  dim mEditDeleteRow as New MenuItem
		  dim mEditSepCue as New MenuItem
		  dim mEditCut As New MenuItem
		  dim mEditCopy as new MenuItem
		  dim mEditPaste as new MenuItem
		  
		  
		  mEdit.Text = "Edit"
		  mEditCue.Text = "Edit Cue"
		  mEditDeleteRow.Text = "Delete Row"
		  mEditSepCue.Text = "-"
		  mEditCut.Text = "Cut"
		  mEditCopy.Text = "Copy"
		  mEditPaste.Text = "Paste"
		  
		  
		  Base.Append mEdit
		  mEdit.Append mEditCue
		  mEdit.Append mEditDeleteRow
		  mEdit.Append mEditSepCue
		  mEdit.Append mEditCut
		  mEdit.Append mEditCopy
		  mEdit.Append mEditPaste
		  
		  
		  Return true //display the contextual menu if cueset is not editable
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  dim TI as New TInputWindow
		  dim i as integer
		  dim clp as new Clipboard
		  
		  '
		  Select Case hititem.text
		  case "Edit Cue"
		    cmdAddCmd.Caption = "Update"
		    EditCue
		    
		  case "Delete Row"
		    i = lstTimestrip.ListIndex
		    if i >= 0 and i <= lstTimestrip.LastIndex then
		      lstTimestrip.RemoveRow(i)
		      'app.DoEvents
		      UpdateTimestripScript
		    end
		    
		  case "Cut"
		    CutCue
		    
		  case "Copy"
		    CopyCue
		    
		  case "Paste"
		    PasteCue
		    
		  case "Call as Function..."
		    if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
		      if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
		        frmCuesetSelector.InsertFunction = 1
		      end
		    end
		    
		  case "Call as Thread..."
		    if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
		      if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
		        frmCuesetSelector.InsertFunction = 2
		      end
		    end
		    
		  case "Stop Task..."
		    if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
		      if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
		        frmCuesetSelector.InsertFunction = 3
		      end
		    end
		    
		  case "Stop All Tasks"
		    if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
		      if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
		        frmMain.lstTimestrip.Cell(frmMain.currentSelectedTimestripRow,frmMain.currentSelectedTimestripColumn) = "StopAllTasks"
		        frmMain.UpdateTimestripScript
		      end
		    end
		    
		  case "Show Message..."
		    TI .lblMsg.Text = "Message"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      
		      Clp.SetText "ShowMessage"+chr(10)+"("+""""+TI.StringResult+""""+")"
		      if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
		        if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
		          lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn) = clp.Text
		          UpdateTimestripScript
		        end
		      end
		      
		    end
		    
		    
		  case "Shell Execute as Function..."
		    TI .lblMsg.Text ="The shell executes its command and returns when the script has finished running."+chr(13)+chr(13)+"Shell Command with Arguments:"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      
		      Clp.SetText "ShellExecuteAsFunction"+chr(10)+"("+""""+TI.StringResult+""""+")"
		      if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
		        if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
		          lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn) = clp.Text
		          UpdateTimestripScript
		        end
		      end
		    end
		    
		  case "Shell Execute as Thread..."
		    TI .lblMsg.Text ="The shell executes its command and returns when the script has finished running."+chr(13)+chr(13)+"Shell Command with Arguments:"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      
		      Clp.SetText "ShellExecuteAsThread"+chr(10)+"("+""""+TI.StringResult+""""+")"
		      if currentSelectedTimestripRow >= 0 and currentSelectedTimestripRow < lstTimestrip.ListCount then
		        if currentSelectedTimestripColumn >= 0 and currentSelectedTimestripColumn < lstTimestrip.ColumnCount then
		          lstTimestrip.Cell(currentSelectedTimestripRow,currentSelectedTimestripColumn) = clp.Text
		          UpdateTimestripScript
		        end
		      end
		    end
		    
		  End select
		  
		  Return True
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtPosition
	#tag Event
		Sub GotFocus()
		  me.SelStart = 3
		  me.SelLength = 2
		  me.SelectAll
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim HH,MM,SS,FF,s as string
		  
		  if key = chr(13) or key = chr(3) then
		    s = me.Text
		    if CountFields(s,"-") <> 4 then
		      s = s.ReplaceAll("-","")
		      while len(s) < 8
		        s = "0" + s
		      wend
		      
		      HH = left(s,2)
		      MM = Mid(s,3,2)
		      SS = mid(s,5,2)
		      FF = mid(s,7,2)
		      me.Text = HH+"-"+MM +"-" + SS + "-" + FF
		      SetChaseDevices(CurrentSelectedCueset,txtPosition.Text)
		    end
		  end
		  
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  
		  
		  dim i as integer
		  
		  i = TCToFrames(me.Text,Framerate)
		  i = i + deltaY *-1
		  
		  if i < 0 then i = 0
		  
		  me.Text = FramesToTC(i,Framerate)
		  SetChaseDevices(CurrentSelectedCueset,me.Text)
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddTrack
	#tag Event
		Sub Action()
		  dim res,s,NewScript as string
		  dim i as integer
		  
		  
		  if lstTimestrip.ColumnCount > 48 then
		    MsgBox("Maximum number of Tracks is 48")
		    exit
		  end
		  
		  NewScript = ""
		  res = Scrman.GetCuesetScript(CurrentSelectedTimestrip)
		  //add a column to the script
		  for i = 1 to CountFields(res,chr(13))
		    s = NthField(res,chr(13),i)
		    s=s + chr(9)+chr(13)
		    NewScript = NewScript + s
		  next
		  NewScript = DeleteLastChar(NewScript,chr(13))
		  //Wenn leeres Script
		  if CountFields(res,chr(13)) = 0 then
		    NewScript = chr(9)
		  end
		  
		  res = Scrman.SetCuesetScript(CurrentSelectedTimestrip,NewScript)
		  DrawTimestrip(Scrman.GetCuesetScript(CurrentSelectedTimestrip))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddTimestripRow
	#tag Event
		Sub Action()
		  dim i as integer
		  
		  
		  for i = 0 to lstTimestrip.ListCount-1
		    if lstTimestrip.Cell(i,0) = txtPosition.Text then
		      MsgBox("The position exists")
		      exit sub
		    end
		  next
		  lstTimestrip.AddRow(txtPosition.Text)
		  lstTimestrip.ColumnsortDirection(0)=ListBox.SortAscending
		  lstTimestrip.SortedColumn=0 //first column is the sort column
		  lstTimestrip.Sort
		  
		  for i = 0 to frmMain.lstTimestrip.ColumnCount-1
		    frmMain.lstTimestrip.ColumnSortDirection(i) = 0
		  next
		  
		  for i = 0 to lstTimestrip.ListCount-1
		    if lstTimestrip.Cell(i,0) = txtPosition.Text then
		      lstTimestrip.ListIndex = i
		      currentSelectedTimestripRow = i
		    end
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddMinute
	#tag Event
		Sub Action()
		  dim i as integer
		  
		  i = TCToFrames(txtPosition.text,Framerate)
		  i=i+Framerate*60
		  if i > 24*3600*Framerate-1 then i = 24*3600*Framerate-1
		  txtPosition.Text = FramesToTC(i,Framerate)
		  SetChaseDevices(CurrentSelectedCueset,txtPosition.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddFrame
	#tag Event
		Sub Action()
		  dim i as integer
		  
		  i = TCToFrames(txtPosition.text,Framerate)
		  i=i+1
		  if i > 24*3600*Framerate-1 then i = 24*3600*Framerate-1
		  txtPosition.Text = FramesToTC(i,Framerate)
		  SetChaseDevices(CurrentSelectedCueset,txtPosition.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddSecond
	#tag Event
		Sub Action()
		  dim i as integer
		  
		  i = TCToFrames(txtPosition.text,Framerate)
		  i=i+Framerate
		  if i > 24*3600*Framerate-1 then i = 24*3600*Framerate-1
		  txtPosition.Text = FramesToTC(i,Framerate)
		  SetChaseDevices(CurrentSelectedCueset,txtPosition.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdSubSecond
	#tag Event
		Sub Action()
		  dim i as integer
		  
		  i = TCToFrames(txtPosition.text,Framerate)
		  i=i-Framerate
		  if i < 0 then i = 0
		  txtPosition.Text = FramesToTC(i,Framerate)
		  SetChaseDevices(CurrentSelectedCueset,txtPosition.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdSubMinute
	#tag Event
		Sub Action()
		  dim i as integer
		  
		  i = TCToFrames(txtPosition.text,Framerate)
		  i=i-Framerate*60
		  if i < 0 then i = 0
		  txtPosition.Text = FramesToTC(i,Framerate)
		  SetChaseDevices(CurrentSelectedCueset,txtPosition.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdSubFrame
	#tag Event
		Sub Action()
		  dim i as integer
		  
		  i = TCToFrames(txtPosition.text,Framerate)
		  i=i-1
		  if i < 0 then i = 0
		  txtPosition.Text = FramesToTC(i,Framerate)
		  SetChaseDevices(CurrentSelectedCueset,txtPosition.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdRemoveTrack
	#tag Event
		Sub Action()
		  
		  if lstTimestrip.ColumnCount < 2 then
		    exit
		  end
		  
		  lstTimestrip.ColumnCount = lstTimestrip.ColumnCount-1
		  UpdateTimestripScript
		  DrawTimestrip(Scrman.GetCuesetScript(CurrentSelectedTimestrip))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstChaseDevices
	#tag Event
		Sub Change()
		  UpdateTimestripScript
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdRemoveDevice
	#tag Event
		Sub Action()
		  dim i as integer
		  
		  for i = 0 to lstChaseDevices.ListCount-1
		    if lstChaseDevices.Selected(i) then lstChaseDevices.RemoveRow(i)
		  next
		  UpdateTimestripScript
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdAddChaseDevice
	#tag Event
		Sub Action()
		  globals.pty_AddChaseOrTCSource = 0
		  frmSelectChaseDevices.ShowModal
		  UpdateTimestripScript
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdTCSource
	#tag Event
		Sub Action()
		  globals.pty_AddChaseOrTCSource = 1
		  frmSelectChaseDevices.ShowModal
		  UpdateTimestripScript
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmbFramerate
	#tag Event
		Sub Change()
		  if me.ListIndex = 0 then Framerate = 25
		  if me.ListIndex = 1 then Framerate = 30
		  UpdateTimestripScript
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtPreroll
	#tag Event
		Sub TextChange()
		  UpdateTimestripScript
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtStartTC
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim HH,MM,SS,FF,s as string
		  
		  if key = chr(13) or key = chr(3) then
		    s = me.Text
		    if CountFields(s,"-") <> 4 then
		      s = s.ReplaceAll("-","")
		      while len(s) < 8
		        s = "0" + s
		      wend
		      
		      HH = left(s,2)
		      MM = Mid(s,3,2)
		      SS = mid(s,5,2)
		      FF = mid(s,7,2)
		      me.Text = HH+"-"+MM +"-" + SS + "-" + FF
		    end
		    UpdateTimestripScript
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtEndTC
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim HH,MM,SS,FF,s as string
		  
		  if key = chr(13) or key = chr(3) then
		    s = me.Text
		    if CountFields(s,"-") <> 4 then
		      s = s.ReplaceAll("-","")
		      while len(s) < 8
		        s = "0" + s
		      wend
		      
		      HH = left(s,2)
		      MM = Mid(s,3,2)
		      SS = mid(s,5,2)
		      FF = mid(s,7,2)
		      me.Text = HH+"-"+MM +"-" + SS + "-" + FF
		    end
		    UpdateTimestripScript
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cmdOffset
	#tag Event
		Sub Action()
		  frmTimestripOffset.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmbVorzeichen
	#tag Event
		Sub Change()
		  UpdateTimestripScript
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtRelativeOffset
	#tag Event
		Sub GotFocus()
		  me.SelStart = 3
		  me.SelLength = 2
		  me.SelectAll
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim HH,MM,SS,FF,s as string
		  
		  if key = chr(13) or key = chr(3) then
		    s = me.Text
		    if CountFields(s,"-") <> 4 then
		      s = s.ReplaceAll("-","")
		      while len(s) < 8
		        s = "0" + s
		      wend
		      
		      HH = left(s,2)
		      MM = Mid(s,3,2)
		      SS = mid(s,5,2)
		      FF = mid(s,7,2)
		      me.Text = HH+"-"+MM +"-" + SS + "-" + FF
		    end
		    UpdateTimestripScript
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cmdStartFromPosition
	#tag Event
		Sub Action()
		  dim res as string
		  dim i as integer
		  
		  
		  //Set the Timecode Start Position
		  i = Scrman.GetCuesetIdByName(CurrentSelectedCueset)
		  if i >= 0 then
		    aCuesets(i).CuesetContext.CurrentStartTC = txtPosition.Text
		  end
		  
		  
		  if CurrentSelectedCueset = "" then
		    MsgBox("No Task selected")
		    exit
		  end
		  
		  res = ScrMan.RunCueset(CurrentSelectedCueset,1)
		  
		  if res = "-4001" then MsgBox("Task " + CurrentSelectedCueset + " not found")
		  if res = "-4004" then frmMain.lblStatus.Text =  "Task is Blocked"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkLoop
	#tag Event
		Sub Action()
		  UpdateTimestripScript
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblScrollHint
	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  
		  
		  dim i as integer
		  
		  i = TCToFrames(me.Text,Framerate)
		  i = i + deltaY *-1
		  
		  if i < 0 then i = 0
		  
		  txtPosition.Text = FramesToTC(i,Framerate)
		  SetChaseDevices(CurrentSelectedCueset,txtPosition.Text)
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lstEvents
	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  me.ListIndex = me.RowFromXY(x,y)
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.AcceptTextDrop
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  if not me.Enabled then exit
		  
		  Dim m1 as New MenuItem
		  Dim m2 as New MenuItem
		  Dim m3 as New MenuItem
		  Dim m4 as New MenuItem
		  Dim m5 as New MenuItem
		  Dim m6 as New MenuItem
		  Dim m7 as New MenuItem
		  Dim m8 as New MenuItem
		  Dim m9 as New MenuItem
		  
		  m1.Text= "Edit Event"
		  m2.Text = "-"
		  m3.Text= "Assign Task"
		  m4.Text= "Unlink Task"
		  m5.Text= "Delete Event"
		  m6.Text = "-"
		  m7.Text = "Calendar Events"
		  m8.Text = "Timer Events"
		  m9.Text = "Keyboard Events"
		  
		  base.append m1
		  base.append m2
		  base.append m3
		  base.append m4
		  base.append m5
		  base.append m6
		  base.append m7
		  base.append m8
		  base.append m9
		  
		  Return true //display the contextual menu
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  Select Case hititem.text
		    
		  case "Edit Event"
		    EditEvent
		    
		  case "Assign Task"
		    frmEventHandlerSelector.Show
		    
		  case "Unlink Task"
		    UnlinkEventCueset
		    
		  case "Delete Event"
		    DeleteEvent
		    
		  case "Calendar Events"
		    CalendarEvent
		    
		  case "Timer Events"
		    TimerEvent
		    
		  case "Keyboard Events"
		    KeyboardEvent
		    
		  End select
		  
		  Return True
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  cmdAddEvent.Caption = "Add Event"
		End Function
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  
		  
		  If Obj.TextAvailable then
		    AssignEventTask(Obj.Text)
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstGlobalVars
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  if not me.Enabled then exit
		  
		  Dim m1 as New MenuItem
		  Dim m2 as New MenuItem
		  
		  m1.Text= "Add Variable ..."
		  m2.Text = "Remove Variable ..."
		  
		  base.append m1
		  base.append m2
		  
		  Return true //display the contextual menu
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  Select Case hititem.text
		    
		  case "Add Variable ..."
		    AddGlobalVar
		    
		  case "Remove Variable ..."
		    RemoveGlobalVar
		    
		    
		  End select
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events chkEnableKeyboardEvents
	#tag Event
		Sub Action()
		  if me.Value = true then frmCatchKeyboardEvents.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkShowGlobals
	#tag Event
		Sub Action()
		  GlobalVarRefreshTimer.Enabled = me.Value
		  if me.Value = true then
		    lstGlobalVars.ColumnWidths = "50%,50%"
		  else
		    lstGlobalVars.ColumnWidths = "100%"
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstCuesets
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  if not me.Enabled then exit
		  
		  Dim m1 as New MenuItem
		  Dim m2 as New MenuItem
		  Dim m3 as New MenuItem
		  Dim m4 as New MenuItem
		  Dim m5 as New MenuItem
		  Dim m6 as New MenuItem
		  Dim m7 as New MenuItem
		  Dim m8 as New MenuItem
		  Dim m9 as New MenuItem
		  Dim m10 as New MenuItem
		  Dim m11 as New MenuItem
		  Dim m12 as New MenuItem
		  
		  m1.Text= "Run Task"
		  m2.Text= "Stop Task"
		  m3.Text = "Stop All Task"
		  m4.Text= "-"
		  m5.text= "Add Task"
		  m6.Text= "Delete Task"
		  m7.Text = "Rename Task"
		  m8.Text = "Compile Task"
		  m9.text = "-"
		  m10.Text = "Cut Task"
		  m11.Text = "Copy Task"
		  m12.Text = "Paste Task"
		  
		  base.append m1
		  base.append m2
		  base.append m3
		  base.append m4
		  base.append m5
		  base.append m6
		  base.append m7
		  base.append m8
		  base.append m9
		  base.append m10
		  base.append m11
		  base.append m12
		  
		  Return true //display the contextual menu
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  Select Case hititem.text
		    
		  case "Add Task"
		    AddCueset
		    
		  case "Delete Task"
		    DeleteCueset
		    
		  case "Rename Task"
		    RenameCueset
		    
		  case "Cut Task"
		    CutCueset
		    
		  case "Copy Task"
		    CopyCueset
		    
		  case "Paste Task"
		    PasteCueset
		    
		  case "Run Task"
		    RunCueset
		    
		  case "Stop Task"
		    StopCueset
		    
		  case "Stop All Task"
		    StopAllCuesets
		    
		  case "Compile Task"
		    dim res as string
		    
		    res = ScrMan.SetCuesetScript(CurrentSelectedCueset,txtCuesetScript.Text)
		    if res <> "0" then MsgBox("Task not found")
		    CompileErrorOccured = false
		    res = ScrMan.CompileCueset(CurrentSelectedCueset)
		    if res <> "0" then MsgBox("Task not found")
		  End select
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function DragRow(drag As DragItem, row As Integer) As Boolean
		  Drag.Text=Me.List(Row) //get the text
		  Return True //allow the drag
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim res as string
		  
		  if row = -1 then exit
		  lstCuesets.ListIndex = row
		  
		  cmdAddCmd.Caption = "Add Cmd"
		  
		  res = ScrMan.GetCuesetScript(lstCuesets.Cell(row,0))
		  if res = "-4001" then
		    MsgBox("Cueset not found")
		  else
		    CurrentSelectedCueset = lstCuesets.Cell(row,0)
		    txtCuesetScript.Text = res
		    txtCuesetScript.ColorSyntax(txtCuesetScript.Text,0)
		    txtCuesetScript.Enabled = true
		  end
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtCuesetScript
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  dim TI as New TInputWindow
		  dim TV as New TInputWindow
		  
		  dim SelCueset as string
		  dim i as integer
		  dim clp as new Clipboard
		  '
		  Select Case hititem.text
		  case "Edit Cue"
		    cmdAddCmd.Caption = "Update"
		    EditCue
		    
		  case "Cut"
		    CutCue
		    
		  case "Copy"
		    CopyCue
		    
		  case "Paste"
		    PasteCue
		    
		  case "Call as Function..."
		    SelCueset = ""
		    for i = 0 to lstCuesets.ListCount-1
		      if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      frmCuesetSelector.InsertFunction = 1
		      frmCuesetSelector.Show
		    end
		    
		  case "Call as Thread..."
		    SelCueset = ""
		    for i = 0 to lstCuesets.ListCount-1
		      if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      frmCuesetSelector.InsertFunction = 2
		      frmCuesetSelector.Show
		    end
		    
		  case "Stop Task..."
		    SelCueset = ""
		    for i = 0 to lstCuesets.ListCount-1
		      if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      frmCuesetSelector.InsertFunction = 3
		      frmCuesetSelector.Show
		    end
		    
		  case "Stop All Tasks"
		    SelCueset = ""
		    for i = 0 to lstCuesets.ListCount-1
		      if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      
		      Clp.SetText "StopAllTasks" +chr(13)
		      
		      frmMain.txtCuesetScript.ReadOnly = false
		      //Set the cursor to the beginning of the current line
		      frmMain.txtCuesetScript.PasteCommand
		      frmMain.txtCuesetScript.SetFocus
		      frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
		    else
		      MsgBox("No cueset selected")
		    end
		    
		  case "Disable Timer Event..."
		    SelCueset = ""
		    for i = 0 to lstCuelists.ListCount-1
		      if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      frmTimerSelector.InsertFunction = 1
		      frmTimerSelector.Show
		    end
		    
		  case "Enable Timer Event..."
		    SelCueset = ""
		    for i = 0 to lstCuelists.ListCount-1
		      if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      frmTimerSelector.InsertFunction = 2
		      frmTimerSelector.Show
		    end
		    
		  case "Delay..."
		    TI .lblMsg.Text = "Delay in ms"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      SelCueset = ""
		      for i = 0 to lstCuesets.ListCount-1
		        if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		      next
		      //check if Cueset is selected
		      if SelCueset <> "" then
		        
		        Clp.SetText "Delay("+""""+TI.StringResult+""""+")" +chr(13)
		        
		        frmMain.txtCuesetScript.ReadOnly = false
		        //Set the cursor to the beginning of the current line
		        frmMain.txtCuesetScript.PasteCommand
		        frmMain.txtCuesetScript.SetFocus
		        frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		    
		  case "Prompt Message..."
		    TI .lblMsg.Text = "Message"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      SelCueset = ""
		      for i = 0 to lstCuesets.ListCount-1
		        if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		      next
		      //check if Cueset is selected
		      if SelCueset <> "" then
		        TV .lblMsg.Text = "Enter the name of a local boolean variable that gets the return value of this function"
		        TV .ShowModal
		        if TV .CancelPrtessed then
		          exit
		        else
		          if TV.StringResult = "" then exit
		          Clp.SetText TV.StringResult +  " = PromptMessage("+""""+TI.StringResult+""""+")" +chr(13)
		        end
		        frmMain.txtCuesetScript.ReadOnly = false
		        //Set the cursor to the beginning of the current line
		        frmMain.txtCuesetScript.PasteCommand
		        frmMain.txtCuesetScript.SetFocus
		        frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		    
		  case "Show Message..."
		    TI .lblMsg.Text = "Message"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      SelCueset = ""
		      for i = 0 to lstCuesets.ListCount-1
		        if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		      next
		      //check if Cueset is selected
		      if SelCueset <> "" then
		        
		        Clp.SetText "ShowMessage("+""""+TI.StringResult+""""+")" +chr(13)
		        
		        frmMain.txtCuesetScript.ReadOnly = false
		        //Set the cursor to the beginning of the current line
		        frmMain.txtCuesetScript.PasteCommand
		        frmMain.txtCuesetScript.SetFocus
		        frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		    
		  case "SetGlobalVar..."
		    SelCueset = ""
		    for i = 0 to lstCuesets.ListCount-1
		      if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      frmGlobalVarSelector.InsertFunction = 1
		      frmGlobalVarSelector.Show
		    end
		    
		  case "GetGlobalVar..."
		    SelCueset = ""
		    for i = 0 to lstCuesets.ListCount-1
		      if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      frmGlobalVarSelector.InsertFunction = 2
		      frmGlobalVarSelector.Show
		    end
		    
		  case "Shell Execute as Function..."
		    TI .lblMsg.Text = "The shell executes its command and returns when the script has finished running."+chr(13)+chr(13)+"Shell Command with Arguments:"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      SelCueset = ""
		      for i = 0 to lstCuesets.ListCount-1
		        if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		      next
		      //check if Cueset is selected
		      if SelCueset <> "" then
		        
		        Clp.SetText "ShellExecuteAsFunction("+""""+TI.StringResult+""""+")" +chr(13)
		        
		        frmMain.txtCuesetScript.ReadOnly = false
		        //Set the cursor to the beginning of the current line
		        frmMain.txtCuesetScript.PasteCommand
		        frmMain.txtCuesetScript.SetFocus
		        frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		    
		  case "Shell Execute as Thread..."
		    TI .lblMsg.Text = "The shell executes its command and returns. It does not wait for a command to finish before executing the next command. An asynchronous shell script can run in the background."+chr(13)+chr(13)+"Shell Command with Arguments:"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      SelCueset = ""
		      for i = 0 to lstCuesets.ListCount-1
		        if lstCuesets.Selected(i) then SelCueset = lstCuesets.Cell(i,0)
		      next
		      //check if Cueset is selected
		      if SelCueset <> "" then
		        
		        Clp.SetText "ShellExecuteAsThread("+""""+TI.StringResult+""""+")" +chr(13)
		        
		        frmMain.txtCuesetScript.ReadOnly = false
		        //Set the cursor to the beginning of the current line
		        frmMain.txtCuesetScript.PasteCommand
		        frmMain.txtCuesetScript.SetFocus
		        frmMain.txtCuesetScript.ReadOnly = Globals.CuesetEditReadOnly
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		  End select
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  //Paste Menu
		  dim mInsert as New MenuItem
		  dim mInsertRunAsFunction as new MenuItem
		  dim mInsertRunAsThread as new MenuItem
		  dim mInsertStopTask as new MenuItem
		  dim mInsertStopAllTasks as new MenuItem
		  dim mInsertSep1 as new MenuItem
		  dim mInsertDelay as new MenuItem
		  dim mInsertShowMessage as new MenuItem
		  dim mInsertGetGlobalVar as new MenuItem
		  dim mInsertSetGlobalVar as new MenuItem
		  dim mInsertShellExecAsFunction as new MenuItem
		  dim mInsertShellExecAsThread as new MenuItem
		  dim mInsertDisableTimerEvent  as new MenuItem
		  dim mInsertEnableTimerEvent  as new MenuItem
		  
		  mInsert.Text = "Insert"
		  mInsertRunAsFunction.Text = "Call as Function..."
		  mInsertRunAsThread.Text = "Call as Thread..."
		  mInsertStopTask.Text = "Stop Task..."
		  mInsertStopAllTasks.Text = "Stop All Tasks"
		  mInsertSep1.Text = "-"
		  mInsertDelay.Text = "Delay..."
		  mInsertShowMessage.Text = "Show Message..."
		  mInsertGetGlobalVar.Text = "GetGlobalVar..."
		  mInsertSetGlobalVar.Text = "SetGlobalVar..."
		  mInsertShellExecAsFunction.Text = "Shell Execute as Function..."
		  mInsertShellExecAsThread.text = "Shell Execute as Thread..."
		  mInsertDisableTimerEvent.Text = "Disable Timer Event..."
		  mInsertEnableTimerEvent.Text = "Enable Timer Event..."
		  
		  Base.Append mInsert
		  mInsert.Append mInsertRunAsFunction
		  mInsert.Append mInsertRunAsThread
		  mInsert.Append mInsertStopTask
		  mInsert.Append mInsertStopAllTasks
		  mInsert.Append mInsertSep1
		  mInsert.Append mInsertDelay
		  mInsert.Append mInsertShowMessage
		  mInsert.Append mInsertGetGlobalVar
		  mInsert.Append mInsertSetGlobalVar
		  mInsert.Append mInsertShellExecAsFunction
		  mInsert.Append mInsertShellExecAsThread
		  mInsert.Append mInsertDisableTimerEvent
		  mInsert.Append mInsertEnableTimerEvent
		  
		  
		  //Edit Menu
		  dim mEdit as New MenuItem
		  dim mEditCue as New MenuItem
		  dim mEditSepCue as New MenuItem
		  dim mEditCut As New MenuItem
		  dim mEditCopy as new MenuItem
		  dim mEditPaste as new MenuItem
		  
		  mEdit.Text = "Edit"
		  mEditCue.Text = "Edit Cue"
		  mEditSepCue.Text = "-"
		  mEditCut.Text = "Cut"
		  mEditCopy.Text = "Copy"
		  mEditPaste.Text = "Paste"
		  
		  Base.Append mEdit
		  mEdit.Append mEditCue
		  mEdit.Append mEditSepCue
		  mEdit.Append mEditCut
		  mEdit.Append mEditCopy
		  mEdit.Append mEditPaste
		  
		  
		  Return true //display the contextual menu if cueset is not editable
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub LineChange(LineNumber as integer)
		  cmdAddCmd.Caption = "Add Cmd"
		  lblEditStatus.Text = "Line:" + str(LineNumber)
		End Sub
	#tag EndEvent
	#tag Event
		Sub ContendChanged()
		  dim res as string
		  dim i as integer
		  
		  i = ScrMan.GetCuesetIdByName(CurrentSelectedCueset)
		  if i > -1 then
		    if aCuesets(i).IsBlocked = false then res = ScrMan.SetCuesetScript(CurrentSelectedCueset,txtCuesetScript.Text)
		  end
		  CompileErrorOccured = false
		  'if me.Enabled = true then
		  'UndoStore.SetUndo(me.Text)
		  'end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstCuelists
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  Select Case hititem.text
		    
		  case "Add Task"
		    AddCueset
		    
		  case "Delete Task"
		    DeleteCueset
		    
		  case "Rename Task"
		    RenameCueset
		    
		  case "Cut Task"
		    CutCueset
		    
		  case "Copy Task"
		    CopyCueset
		    
		  case "Paste Task"
		    PasteCueset
		    
		  case "Run Task"
		    RunCueset
		    
		  case "Stop Task"
		    StopCueset
		    
		  case "Stop All Task"
		    StopAllCuesets
		    
		  case "Compile Task"
		    dim res as string
		    
		    res = ScrMan.SetCuesetScript(CurrentSelectedCueset,txtCuesetScript.Text)
		    if res <> "0" then MsgBox("Task not found")
		    CompileErrorOccured = false
		    res = ScrMan.CompileCueset(CurrentSelectedCueset)
		    if res <> "0" then MsgBox("Task not found")
		  End select
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function DragRow(drag As DragItem, row As Integer) As Boolean
		  Drag.Text=Me.List(Row) //get the text
		  Return True //allow the drag
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		  lstCuelists.ListIndex = row
		  Globals.CurrentSelectedCueset = lstCuelists.Cell(row,0)
		  UpdateCuelistGrid
		  lstCues.SetFocus
		  
		  
		  
		  'i = Scrman.GetCuesetIdByName(CurrentSelectedCueset)
		  '
		  'if i >= 0 then 
		  'if aCuesets(i).Blocked then
		  'lstCues.Enabled = false
		  'else
		  'lstCues.Enabled = true
		  'end
		  'end
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  if not me.Enabled then exit
		  
		  Dim m1 as New MenuItem
		  Dim m2 as New MenuItem
		  Dim m3 as New MenuItem
		  Dim m4 as New MenuItem
		  Dim m5 as New MenuItem
		  Dim m6 as New MenuItem
		  Dim m7 as New MenuItem
		  Dim m8 as New MenuItem
		  Dim m9 as New MenuItem
		  Dim m10 as New MenuItem
		  Dim m11 as New MenuItem
		  Dim m12 as New MenuItem
		  
		  m1.Text= "Run Task"
		  m2.Text= "Stop Task"
		  m3.Text = "Stop All Task"
		  m4.Text= "-"
		  m5.text= "Add Task"
		  m6.Text= "Delete Task"
		  m7.Text = "Rename Task"
		  m8.Text = "Compile Task"
		  m9.text = "-"
		  m10.Text = "Cut Task"
		  m11.Text = "Copy Task"
		  m12.Text = "Paste Task"
		  
		  base.append m1
		  base.append m2
		  base.append m3
		  base.append m4
		  base.append m5
		  base.append m6
		  base.append m7
		  base.append m8
		  base.append m9
		  base.append m10
		  base.append m11
		  base.append m12
		  
		  Return true //display the contextual menu
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lstCues
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  
		  //Insert Menu
		  dim mInsert as New MenuItem
		  dim mInsertRunAsFunction as new MenuItem
		  dim mInsertRunAsThread as new MenuItem
		  dim mInsertStopTask as new MenuItem
		  dim mInsertStopAllTasks as new MenuItem
		  dim mInsertSep1 as new MenuItem
		  dim mInsertDelay as new MenuItem
		  dim mInsertRepeat as new MenuItem
		  dim mInsertShowMsg as new MenuItem
		  dim mInsertComent as new MenuItem
		  dim mInsertShellExecAsFunction as new MenuItem
		  dim mInsertShellExecAsThread as new MenuItem
		  dim mInsertDisableTimerEvent as new MenuItem
		  dim mInsertEnableTimerEvent as new MenuItem
		  
		  mInsert.Text = "Insert"
		  mInsertRunAsFunction.Text = "Call as Function..."
		  mInsertRunAsThread.Text = "Call as Thread..."
		  mInsertStopTask.Text = "Stop Task..."
		  mInsertStopAllTasks.Text = "Stop All Tasks"
		  mInsertSep1.Text = "-"
		  mInsertDelay.Text = "Delay..."
		  mInsertRepeat.Text = "Repeat..."
		  mInsertShowMsg.Text = "Show Message..."
		  mInsertComent.Text = "Comment..."
		  mInsertShellExecAsFunction.Text = "Shell Execute as Function..."
		  mInsertShellExecAsThread.Text = "Shell Execute as Thread..."
		  mInsertDisableTimerEvent.Text = "Disable Timer Event..."
		  mInsertEnableTimerEvent.Text = "Enable Timer Event..."
		  
		  Base.Append mInsert
		  mInsert.Append mInsertRunAsFunction
		  mInsert.Append mInsertRunAsThread
		  mInsert.Append mInsertStopTask
		  mInsert.Append mInsertStopAllTasks
		  mInsert.Append mInsertSep1
		  mInsert.Append mInsertDelay
		  mInsert.Append mInsertRepeat
		  mInsert.Append mInsertShowMsg
		  mInsert.Append mInsertComent
		  mInsert.Append mInsertShellExecAsFunction
		  mInsert.Append mInsertShellExecAsThread
		  mInsert.Append mInsertDisableTimerEvent
		  mInsert.Append mInsertEnableTimerEvent
		  
		  //Edit Menu
		  dim mEdit as New MenuItem
		  dim mEditCue as New MenuItem
		  dim mEditSepCue as New MenuItem
		  dim mEditCut As New MenuItem
		  dim mEditCopy as new MenuItem
		  dim mEditPaste as new MenuItem
		  dim mEditSepCue2 as new MenuItem
		  dim mEditRunFrom as new MenuItem
		  
		  mEdit.Text = "Edit"
		  mEditCue.Text = "Edit Cue"
		  mEditSepCue.Text = "-"
		  mEditCut.Text = "Cut"
		  mEditCopy.Text = "Copy"
		  mEditPaste.Text = "Paste"
		  mEditSepCue2.Text = "-"
		  mEditRunFrom.Text = "Run from here"
		  
		  Base.Append mEdit
		  mEdit.Append mEditCue
		  mEdit.Append mEditSepCue
		  mEdit.Append mEditCut
		  mEdit.Append mEditCopy
		  mEdit.Append mEditPaste
		  mEdit.Append mEditSepCue2
		  mEdit.Append mEditRunFrom
		  
		  
		  Return true //display the contextual menu if cueset is not editable
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  dim TI as New TInputWindow
		  dim res as String
		  dim SelCueset as string
		  dim i as integer
		  
		  '
		  Select Case hititem.text
		  case "Edit Cue"
		    cmdAddCmd.Caption = "Update"
		    EditCue
		    
		  case "Cut"
		    CutCue
		    
		  case "Copy"
		    CopyCue
		    
		  case "Paste"
		    PasteCue
		    
		  case "Run from here"
		    i = lstCues.ListIndex
		    if (i >= 0) and (i < lstCues.LastIndex) then res = ScrMan.RunCueset(CurrentSelectedCueset,i+1)
		    
		  case "Call as Function..."
		    SelCueset = ""
		    for i = 0 to lstCuelists.ListCount-1
		      if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      frmCuesetSelector.InsertFunction = 1
		      frmCuesetSelector.Show
		    end
		    
		  case "Call as Thread..."
		    SelCueset = ""
		    for i = 0 to lstCuelists.ListCount-1
		      if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      frmCuesetSelector.InsertFunction = 2
		      frmCuesetSelector.Show
		    end
		    
		  case "Stop Task..."
		    SelCueset = ""
		    for i = 0 to lstCuelists.ListCount-1
		      if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      frmCuesetSelector.InsertFunction = 3
		      frmCuesetSelector.Show
		    end
		    
		  case "Stop All Tasks"
		    SelCueset = ""
		    for i = 0 to lstCuelists.ListCount-1
		      if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      i = lstCues.ListIndex
		      if i < 0 then i = 0
		      lstCues.InsertRow(i,"")
		      lstCues.Cell(i,3) = "StopAllTasks"
		      UpdateCuelist(CurrentSelectedCueset)
		      
		    else
		      MsgBox("No cueset selected")
		    end
		    
		  case "Disable Timer Event..."
		    SelCueset = ""
		    for i = 0 to lstCuelists.ListCount-1
		      if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      frmTimerSelector.InsertFunction = 1
		      frmTimerSelector.Show
		    end
		    
		  case "Enable Timer Event..."
		    SelCueset = ""
		    for i = 0 to lstCuelists.ListCount-1
		      if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		    next
		    //check if Cueset is selected
		    if SelCueset <> "" then
		      frmTimerSelector.InsertFunction = 2
		      frmTimerSelector.Show
		    end
		    
		  case "Delay..."
		    TI .lblMsg.Text = "Delay in ms"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      SelCueset = ""
		      for i = 0 to lstCuelists.ListCount-1
		        if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		      next
		      //check if Cueset is selected
		      if SelCueset <> "" then
		        i = lstCues.ListIndex
		        if i < 0 then i = 0
		        lstCues.InsertRow(i,"")
		        lstCues.Cell(i,3) = "Delay"
		        lstCues.Cell(i,4) = TI.StringResult
		        UpdateCuelist(CurrentSelectedCueset)
		        
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		    
		  case"Repeat..."
		    TI .lblMsg.Text = "Repeat (0 = for ever)"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      SelCueset = ""
		      for i = 0 to lstCuelists.ListCount-1
		        if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		      next
		      //check if Cueset is selected
		      if SelCueset <> "" then
		        i = lstCues.ListIndex
		        if i < 0 then i = 0
		        lstCues.InsertRow(i,"")
		        lstCues.Cell(i,3) = "Repeat"
		        lstCues.Cell(i,4) = TI.StringResult
		        i = i + 1
		        lstCues.InsertRow(i,"")
		        lstCues.Cell(i,3) = "EndRepeat"
		        UpdateCuelist(CurrentSelectedCueset)
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		    
		  case "Prompt Message..."
		    TI .lblMsg.Text = "Message"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      SelCueset = ""
		      for i = 0 to lstCuelists.ListCount-1
		        if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		      next
		      //check if Cueset is selected
		      if SelCueset <> "" then
		        i = lstCues.ListIndex
		        if i < 0 then i = 0
		        lstCues.InsertRow(i,"")
		        lstCues.Cell(i,3) = "PromptMessage"
		        lstCues.Cell(i,4) = TI.StringResult
		        UpdateCuelist(CurrentSelectedCueset)
		        
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		    
		  case "Show Message..."
		    TI .lblMsg.Text = "Message"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      SelCueset = ""
		      for i = 0 to lstCuelists.ListCount-1
		        if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		      next
		      //check if Cueset is selected
		      if SelCueset <> "" then
		        i = lstCues.ListIndex
		        if i < 0 then i = 0
		        lstCues.InsertRow(i,"")
		        lstCues.Cell(i,3) = "ShowMessage"
		        lstCues.Cell(i,4) = TI.StringResult
		        UpdateCuelist(CurrentSelectedCueset)
		        
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		    
		  case "Comment..."
		    TI .lblMsg.Text = "Comment"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      SelCueset = ""
		      for i = 0 to lstCuelists.ListCount-1
		        if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		      next
		      //check if Cueset is selected
		      if SelCueset <> "" then
		        i = lstCues.ListIndex
		        if i < 0 then i = 0
		        lstCues.InsertRow(i,"")
		        lstCues.Cell(i,3) = "Comment"
		        lstCues.Cell(i,4) = TI.StringResult
		        UpdateCuelist(CurrentSelectedCueset)
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		    
		  case "Shell Execute as Function..."
		    TI .lblMsg.Text = "The shell executes its command and returns when the script has finished running."+chr(13)+chr(13)+"Shell Command with Arguments:"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      SelCueset = ""
		      for i = 0 to lstCuelists.ListCount-1
		        if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		      next
		      //check if Cueset is selected
		      if SelCueset <> "" then
		        i = lstCues.ListIndex
		        if i < 0 then i = 0
		        lstCues.InsertRow(i,"")
		        lstCues.Cell(i,3) = "ShellExecuteAsFunction"
		        lstCues.Cell(i,4) = TI.StringResult
		        UpdateCuelist(CurrentSelectedCueset)
		        
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		    
		  case "Shell Execute as Thread..."
		    TI .lblMsg.Text = "The shell executes its command and returns. It does not wait for a command to finish before executing the next command. An asynchronous shell script can run in the background."+chr(13)+chr(13)+"Shell Command with Arguments:"
		    TI .ShowModal
		    if TI .CancelPrtessed then
		      exit
		    else
		      SelCueset = ""
		      for i = 0 to lstCuelists.ListCount-1
		        if lstCuelists.Selected(i) then SelCueset = lstCuelists.Cell(i,0)
		      next
		      //check if Cueset is selected
		      if SelCueset <> "" then
		        i = lstCues.ListIndex
		        if i < 0 then i = 0
		        lstCues.InsertRow(i,"")
		        lstCues.Cell(i,3) = "ShellExecuteAsThread"
		        lstCues.Cell(i,4) = TI.StringResult
		        UpdateCuelist(CurrentSelectedCueset)
		        
		      else
		        MsgBox("No cueset selected")
		      end
		    end
		  End select
		  
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  cmdAddCmd.Caption = "Add Cmd"
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  cmdAddCmd.Caption = "Update"
		  EditCue
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  //SyntaxHighlight
		  '
		  if row mod 2= 0 then 
		    g.foreColor=RGB(170,170,170)
		  else
		    g.foreColor=RGB(150,150,150)
		  end
		  
		  if me.ListCount -1  >= row then
		    if column > 2 then
		      //g.foreColor=RGB(255,255,255)
		      
		      if (me.Cell(row,column) = "Delay") or (me.Cell(row,column-1) = "Delay") then
		        g.foreColor=RGB(130,130,200)
		      end
		      if (me.Cell(row,column) = "PromptMessage") or (me.Cell(row,column-1) = "PromptMessage") then
		        g.foreColor=RGB(130,130,200)
		      end
		      if (me.Cell(row,column) = "ShowMessage") or (me.Cell(row,column-1) = "ShowMessage") then
		        g.foreColor=RGB(130,130,200)
		      end
		      
		      if (me.Cell(row,column) = "Repeat") or (me.Cell(row,column-1) = "Repeat") then
		        g.foreColor=RGB(130,200,130)
		      end
		      if (me.Cell(row,column) = "EndRepeat") or (me.Cell(row,column-1) = "EndRepeat") then
		        g.foreColor=RGB(130,200,130)
		      end
		      
		      if (me.Cell(row,column) = "Comment") or (me.Cell(row,column-1) = "Comment") then
		        g.foreColor=RGB(150,80,80)
		      end
		      
		      if (me.Cell(row,column) = "CallAsFunction") or (me.Cell(row,column-1) = "CallAsFunction") then
		        g.foreColor=RGB(250,100,100)
		      end
		      if (me.Cell(row,column) = "CallAsThread") or (me.Cell(row,column-1) = "CallAsThread") then
		        g.foreColor=RGB(250,100,100)
		      end
		      if (me.Cell(row,column) = "StopTask") or (me.Cell(row,column-1) = "StopTask") then
		        g.foreColor=RGB(250,100,100)
		      end
		      if (me.Cell(row,column) = "StopAllTasks") or (me.Cell(row,column-1) = "StopAllTasks") then
		        g.foreColor=RGB(200,150,150)
		      end
		      if (me.Cell(row,column) = "ShellExecuteAsFunction") or (me.Cell(row,column-1) = "ShellExecuteAsFunction") then
		        g.foreColor=RGB(200,50,50)
		      end
		      if (me.Cell(row,column) = "ShellExecuteAsThread") or (me.Cell(row,column-1) = "ShellExecuteAsThread") then
		        g.foreColor=RGB(200,50,50)
		      end
		      
		    end
		  end
		  
		  g.FillRect 0,0,g.width,g.height
		End Function
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  g.ForeColor = rgb(0,0,0)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events tbMain
	#tag Event
		Sub Action(item As ToolItem)
		  
		  Select case item.Name
		  case "tiOpen"
		    LoadProject
		    
		  case "tiSave"
		    SaveProject
		    
		  case "tiSaveAs"
		    SaveProjectAs
		    
		  case "tiRun"
		    RunCueset
		    
		  case "tiStop"
		    StopCueset
		    
		  case "tiStopAll"
		    StopAllCuesets
		    
		  case "tiChannelConfig"
		    frmConfigureChannels.Show
		    Globals.ProjectHasChanged(true)
		    
		  case "tiDeviceConfig"
		    frmDeviceSetup.Show
		    Globals.ProjectHasChanged(true)
		    
		  case "tiEditDevice"
		    db_Mode = false
		    Globals.ProjectHasChanged(true)
		    frmDeviceEditor.Show
		    
		  case "tiAddTask"
		    AddCueset
		    
		  case "tiPlaylist"
		    if Globals.ptyModalPlaylist = True then
		      frmPlaylistModal.ShowModal
		    else
		      frmPlaylist.Show
		    end
		    
		  case "tiHelp"
		    ShowURL("http://www.v-control.com/wiki")
		    
		  case "tiHomePage"
		    ShowURL("http://www.v-control.com")
		    
		  end Select
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmeHandleEngineEvent
	#tag Event
		Sub Action()
		  me.Mode = 0
		  
		  
		  
		  dim res,s as string
		  dim i as integer
		  dim f as FolderItem
		  dim d as Date
		  Dim txtStream as TextOutputStream
		  dim tmp,EventSourceModule,EventSourceDevice,EventSourceChannel,EventType,EventData,EventSourceCmd as String
		  
		  dim MsgID as integer
		  
		  if Globals.ptyOnClose = true then 
		    Return
		  end
		  
		  //Show the number of messages in EngineEventList every 20th time the timer is fired
		  static count as integer
		  
		  'count = count + 1
		  'if count > 5 then
		  frmMain.lblEngineEventMessageStack.Text = str(UBound(EngineEventList))
		  'count = 0
		  'end
		  
		  While UBound(EngineEventList) > -1
		    
		    MsgID = 0
		    tmp = EngineEventList(MsgID)
		    
		    EventSourceModule = NthField(tmp,chr(2),1)
		    EventSourceDevice = NthField(tmp,chr(2),2)
		    EventSourceChannel = NthField(tmp,chr(2),3)
		    EventType = NthField(tmp,chr(2),4)
		    EventData = NthField(tmp,chr(2),5)
		    EventData = HexStringToString(EventData)
		    EventSourceCmd = NthField(tmp,chr(2),6)
		    
		    //Send to connected remote systems
		    
		    NodeIF.DistributeMessageToRemoteClients(EventSourceModule,EventSourceDevice,EventSourceChannel,EventData,EventSourceCmd)
		    
		    'frmMain.lstACK.AddRow(EventData)
		    
		    //EventSourceModule = IOMan, DevMan, ScrMan
		    //EventSourceDevice = DeviceName
		    //EventType = CompileError, ACK, iAck, NAK, Timeout, Event, Message,CuesetMsg,CatchError(zeigt fehler z.B. "-2002" der abgefangen wurde)
		    //EventData = The Event Message
		    
		    if Globals.ptyOnClose = true then Return
		    
		    //Disable Timer during processing 
		    me.Mode = 0
		    
		    //Write To Logfile
		    if Globals.bLogToFile = true then
		      d = new Date
		      f = GetFolderItem ("Logfile.txt")
		      s = d.ShortDate + " " + d.LongTime + ": " + EventSourceModule + " " +EventSourceDevice + " "+ EventSourceChannel + " " + EventType + " " + EventData + " " + EventSourceCmd
		      //In file schreiben
		      if f.Exists = False then
		        txtStream=TextOutputStream.Create(f)
		      else
		        txtStream=TextOutputStream.Append(f)
		        txtStream.WriteLine(s)
		        txtStream.Close
		      end
		    end
		    //ScriptManager
		    if EventSourceModule = "ScrMan" then
		      //ShowMessage from Script or Cuelist
		      if EventType = "ShowMessage" then
		        lblStatus2.Text = EventData
		        lblStatus2.Refresh
		        'if frmSplash.Visible then
		        'frmSplash.lblStatus.Text = EventData
		        'frmSplash.lblStatus.Refresh
		        'end
		      end
		      
		      //Messages
		      if EventType = "Message" then
		        lblStatus.Text = EventData
		        lblStatus.Refresh
		        'if frmSplash.Visible then
		        'frmSplash.lblStatus.Text = EventData
		        'frmSplash.lblStatus.Refresh
		        'end
		      end
		      //Popup Message
		      if EventType = "Popup" then
		        MsgBox("Message from Script Manager:"+EventData)
		      end
		      //Compiler error
		      if EventType = "CompilerError" then
		        //Show only first error
		        if CompileErrorOccured = true then exit
		        CompileErrorOccured = true
		        ShowCuesetError(val(NthField(EventData,chr(2),1)),val(NthField(EventData,chr(2),2)),NthField(EventData,chr(2),3))
		      end
		      //Catched Runtime Error
		      if EventType = "CatchError" then
		        lblStatus.Text = "CatchError from " + EventSourceModule+":"+EventSourceDevice+":"+EventData
		      end
		      
		      //Start / Stop Cueset
		      if EventType = "CuesetMsg" then
		        dim CsName,csData As  String
		        CsName = NthField(EventData,";",1)
		        CsData = NthField(EventData,";",2)
		        //Mark Cuesets
		        for i = 0 to lstCuesets.ListCount-1
		          if lstCuesets.Cell(i,0) = CsName then
		            if csData = "START" then
		              lstCuesets.CellBold(i,0) = true
		            else
		              lstCuesets.CellBold(i,0) = false
		              lstCuesets.CellItalic(i,0) = false
		            end
		          end
		          //Check if the Task is visible and Disable the GUI if running
		          'if lstCuesets.Selected(i) = true and lstCuesets.Cell(i,0) = CsName  then
		          'if csData = "START" then txtCuesetScript.Enabled= false
		          'if csData = "STOP" then txtCuesetScript.Enabled= true
		          'end
		        next
		        //Mark Cuelists
		        for i = 0 to lstCuelists.ListCount-1
		          if lstCuelists.Cell(i,0) = CsName then
		            if csData = "START" then
		              lstCuelists.CellBold(i,0) = true
		            else
		              lstCuelists.CellBold(i,0) = false
		              lstCuelists.CellItalic(i,0) = false
		            end
		          end
		          //Check if the Task is visible and Disable the GUI if running
		          'if lstCuelists.Selected(i) = true and lstCuelists.Cell(i,0) = CsName then
		          'if csData = "START" then lstcues.Enabled= false
		          'if csData = "STOP" then lstcues.Enabled= true
		          'end
		        next
		        //Mark Timestrips
		        
		        for i = 0 to lstTimestrips.ListCount-1
		          if lstTimestrips.Cell(i,0) = CsName then
		            if csData = "START" then
		              lstTimestrips.CellBold(i,0) = true
		              
		            else
		              lstTimestrips.CellBold(i,0) = false
		              lstTimestrips.CellItalic(i,0) = false
		            end
		          end
		          //Check if the Task is visible and Disable the GUI if running
		          'if lstTimestrips.Selected(i) = true and lstTimestrips.Cell(i,0) = CsName then
		          'if csData = "START" then grpTimestrip.Enabled= false
		          'if csData = "STOP" then grpTimestrip.Enabled= true
		          'end
		        next
		        
		      end
		      
		      //Start / Stop Function  wird ausgeführt wenn Cueset als Function aufgerugfen wird, und nicht als Thread
		      if EventType = "FunctionMsg" then
		        dim CsName,csData As  String
		        CsName = NthField(EventData,";",1)
		        CsData = NthField(EventData,";",2)
		        //Mark Cuesets
		        for i = 0 to lstCuesets.ListCount-1
		          if lstCuesets.Cell(i,0) = CsName then
		            if csData = "START" then
		              lstCuesets.CellItalic(i,0) = true
		              lstCuesets.CellBold(i,0) = true
		            else
		              lstCuesets.CellItalic(i,0) = false
		              lstCuesets.CellBold(i,0) = false
		            end
		          end
		        next
		        
		        //Mark Cuelists
		        for i = 0 to lstCuelists.ListCount-1
		          if lstCuelists.Cell(i,0) = CsName then
		            if csData = "START" then
		              lstCuelists.CellItalic(i,0) = true
		              lstCuelists.CellBold(i,0) = true
		            else
		              lstCuelists.CellItalic(i,0) = false
		              lstCuelists.CellBold(i,0) = false
		            end
		          end
		        next
		        
		        //Mark lstTimestrips
		        for i = 0 to lstTimestrips.ListCount-1
		          if lstTimestrips.Cell(i,0) = CsName then
		            if csData = "START" then
		              lstTimestrips.CellItalic(i,0) = true
		              lstTimestrips.CellBold(i,0) = true
		            else
		              lstTimestrips.CellItalic(i,0) = false
		              lstTimestrips.CellBold(i,0) = false
		            end
		          end
		        next
		      end
		      
		      //Show Current CuelistLine
		      if tbProgram.value = 0 then
		        if EventType = "LineChange" then
		          if lstCuelists.Cell(lstCuelists.ListIndex,0) = EventSourceDevice then
		            lstCues.ListIndex = val(EventData)
		          end
		        end
		      end
		      
		      //Show Current TimestripLine
		      if tbProgram.value = 2 then
		        if EventType = "TimestripLineChange" then
		          if lstTimestrips.Cell(lstTimestrips.ListIndex,0) = EventSourceDevice then
		            lstTimestrip.ListIndex = val(EventData)
		          end
		        end
		      end
		      
		      //Show Timestrip Position in Textfield
		      if tbProgram.value = 2 then
		        if EventType = "PositionChange" then
		          if lstTimestrips.Cell(lstTimestrips.ListIndex,0) = EventSourceDevice then
		            txtPosition.Text = EventData
		          end
		        end
		      end
		    end
		    
		    //Device Manager Messages
		    if EventSourceModule = "DevMan" then
		      //CompilerError
		      if EventType = "CompilerError" then
		        res = DevMan.GetScript(EventSourceDevice)
		        if left(res,1) <> "-" then
		          frmScriptEditor.Show
		          //Show only first Error if more than one Compile error is fired
		          if frmScriptEditor.txtScript.Text = "" then
		            frmScriptEditor.txtScript.Text = res
		            frmScriptEditor.txtScript.ColorSyntax(frmScriptEditor.txtScript.Text,0)
		            frmScriptEditor.ShowError(val(NthField(EventData,chr(2),1)),val(NthField(EventData,chr(2),2)),NthField(EventData,chr(2),3))
		          end
		        end
		      end
		      
		      if EventType = "Timeout" then
		        i = FindAckRow(EventSourceChannel ,EventSourceDevice)
		        lstACK.Cell(i,0) = EventSourceDevice
		        lstACK.Cell(i,1) = EventSourceCmd
		        lstACK.Cell(i,2) = EventSourceChannel
		        lstACK.Cell(i,3) = "Timeout"
		      end
		      
		      if (EventType = "ACK") or (EventType = "NAK")  then
		        if EventData <> "" then
		          i = FindAckRow(EventSourceChannel ,EventSourceDevice)
		          lstACK.Cell(i,0) = EventSourceDevice
		          lstACK.Cell(i,1) = EventSourceCmd
		          lstACK.Cell(i,2) = EventSourceChannel
		          lstACK.Cell(i,3) = EventData
		        end
		      end
		      
		      if EventType = "iACK" then
		        i = FindAckRow(EventSourceChannel ,EventSourceDevice)
		        lstACK.Cell(i,0) = EventSourceDevice
		        lstACK.Cell(i,1) = EventSourceCmd
		        lstACK.Cell(i,2) = EventSourceChannel
		        //Wenn Countdown
		        Select Case NthField(EventData,";",1)
		          //Zahlencountdown
		        case "CountdownNB"
		          dim Restwert,Sollwert,Istwert as integer
		          
		          Sollwert = val(NthField(EventData,";",2))
		          Istwert = val(NthField(EventData,";",3))
		          Restwert = Sollwert - Istwert
		          lstACK.Cell(i,3) = "From:"+str(Istwert)+" To:"+str(Sollwert)+" Remain:"+str(Restwert)
		          if Globals.ptyCallButtonWindowOpen = True then frmButtons.lblTC.Text = "From:"+str(Istwert)+" To:"+str(Sollwert)+" Remain:"+str(Restwert)
		          //lstACK.Refresh
		          
		          //Timecode Countdown
		        case "CountdownTC"
		          if (len(NthField(EventData,";",2)) >= 11) and (len(NthField(EventData,";",3)) >= 11) then
		            dim TSoll as New Date
		            dim TIst as New Date
		            dim RemainingSeconds, SollSeconds, IstSeconds as integer
		            dim TS,TI,Rhh,Rmm,Rss as string
		            
		            TS = NthField(EventData,";",2)
		            TI = NthField(EventData,";",3)
		            TSoll.Hour = val(NthField(TS,"-",1))
		            TSoll.Minute = val(NthField(TS,"-",2))
		            TSoll.Second = val(NthField(TS,"-",3))
		            TIst.Hour = val(NthField(TI,"-",1))
		            TIst.Minute = val(NthField(TI,"-",2))
		            TIst.Second = val(NthField(TI,"-",3))
		            IstSeconds = TIst.Hour * 3600 + TIst.Minute * 60 + TIst.Second
		            SollSeconds = TSoll.Hour * 3600 + TSoll.Minute * 60 + TSoll.Second
		            RemainingSeconds = SollSeconds - IstSeconds
		            
		            Rhh = str(RemainingSeconds \ 3600)
		            Rmm = str((RemainingSeconds - val(Rhh) * 3600) \ 60)
		            Rss = str(RemainingSeconds - val(Rhh)*3600 - val(Rmm)*60)
		            if len(Rhh) < 2 then Rhh = "0" + Rhh
		            if len(Rmm) < 2 then Rmm = "0" + Rmm
		            if len(Rss) < 2 then Rss = "0" + Rss
		            lstACK.Cell(i,3) = TI + ">" + Rhh + "-" + Rmm + "-" + Rss
		            if Globals.ptyCallButtonWindowOpen = True then frmButtons.lblTC.Text  = TI + ">" + Rhh + "-" + Rmm + "-" + Rss
		          else
		            lstACK.Cell(i,3) = EventData
		            if Globals.ptyCallButtonWindowOpen = True then frmButtons.lblTC.Text = EventData
		          end
		          //Broadcast the timecode if selected
		          if Globals.ptyBroadcastWaitForTC = true then
		            counter = counter + 1
		            //broadcast only every xth frame
		            if counter >= Globals.ptyBroadcastTCRate then
		              UDPTC.Write(UDPTC.BroadcastAddress,"TC,"+lstACK.Cell(i,3))
		              counter = 0
		            end
		          end
		          
		          //wenn etwas anderes
		        else
		          lstACK.Cell(i,3) = "Unhandled Event: " + EventData
		        end
		      end
		      
		      //A Channel Event
		      if EventType = "Event" then
		        for i = 0 to lstEvents.ListCount-1
		          lstEvents.Selected(i) = false
		        next
		        
		        for i = 0 to lstEvents.ListCount-1
		          if (lstEvents.Cell(i,0) = EventSourceDevice) and (lstEvents.Cell(i,1) = EventSourceChannel) and (lstEvents.Cell(i,2) = EventSourceCmd) and (lstEvents.Cell(i,3) = EventData) then
		            lstEvents.Selected(i) = true
		            exit
		          end
		        next
		        lstEvents.Refresh
		      end
		    end
		    
		    //Node Interface Messages
		    if EventSourceModule = "NodeIF" then
		      if EventType = "Message" then
		        if EventData <> "" then
		          i = FindAckRow(EventSourceChannel ,EventSourceDevice)
		          lstACK.Cell(i,0) = EventSourceDevice
		          lstACK.Cell(i,1) = EventSourceCmd
		          lstACK.Cell(i,2) = EventSourceChannel
		          lstACK.Cell(i,3) = EventData
		        end
		      end
		    end
		    
		    //Remove the processed message from list
		    EngineEventList.Remove(MsgID)
		    
		  wend
		  
		  me.Mode = 2
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
		Name="counter"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="currentSelectedTimestripColumn"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="currentSelectedTimestripRow"
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
		Name="WasActivated"
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
