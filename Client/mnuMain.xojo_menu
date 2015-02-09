#tag Menu
Begin Menu mnuMain
   Begin MenuItem FileMenu
      SpecialMenu = 0
      Text = "&File"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem mnuFileSave
         SpecialMenu = 0
         Text = "Save Project"
         Index = -2147483648
         ShortcutKey = "s"
         Shortcut = "Cmd+s"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuFileOpen
         SpecialMenu = 0
         Text = "Open Project"
         Index = -2147483648
         ShortcutKey = "o"
         Shortcut = "Cmd+o"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuSaveAs
         SpecialMenu = 0
         Text = "Save Project as..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuFileNew
         SpecialMenu = 0
         Text = "New Project"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator0
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin QuitMenuItem FileQuit
         SpecialMenu = 0
         Text = "#App.kFileQuit"
         Index = -2147483648
         ShortcutKey = "#App.kFileQuitShortcut"
         Shortcut = "#App.kFileQuitShortcut"
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem mnuCuesets
      SpecialMenu = 0
      Text = "Tasks"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem mnuCuesetsRun
         SpecialMenu = 0
         Text = "Run selected"
         Index = -2147483648
         ShortcutKey = "F5"
         Shortcut = "F5"
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCuesetStop
         SpecialMenu = 0
         Text = "Stop selected"
         Index = -2147483648
         ShortcutKey = "F6"
         Shortcut = "F6"
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCuesetStopAll
         SpecialMenu = 0
         Text = "Stop all"
         Index = -2147483648
         ShortcutKey = "F7"
         Shortcut = "F7"
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator1
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCuesetsAdd
         SpecialMenu = 0
         Text = "Add..."
         Index = -2147483648
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCuesetsDelete
         SpecialMenu = 0
         Text = "Delete"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCuesetsRename
         SpecialMenu = 0
         Text = "Rename..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator3
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCuesetCut
         SpecialMenu = 0
         Text = "Cut"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCuesetsCopy
         SpecialMenu = 0
         Text = "Copy"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCuesetsPaste
         SpecialMenu = 0
         Text = "Paste"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem mnuCues
      SpecialMenu = 0
      Text = "Cues"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem mnuCuesCut
         SpecialMenu = 0
         Text = "Cut"
         Index = -2147483648
         ShortcutKey = "x"
         Shortcut = "Cmd+x"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCuesCopy
         SpecialMenu = 0
         Text = "Copy"
         Index = -2147483648
         ShortcutKey = "c"
         Shortcut = "Cmd+c"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCuesPaste
         SpecialMenu = 0
         Text = "Paste"
         Index = -2147483648
         ShortcutKey = "v"
         Shortcut = "Cmd+v"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCuesSep
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCuesUndo
         SpecialMenu = 0
         Text = "Undo"
         Index = -2147483648
         ShortcutKey = "z"
         Shortcut = "Cmd+z"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem mnuCueSep2
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCueGlobalVars
         SpecialMenu = 0
         Text = "Add Global Variable ..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuCueremoveGlobal
         SpecialMenu = 0
         Text = "Remove Global Variable"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem mnuEvents
      SpecialMenu = 0
      Text = "Events"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem mnuEditEvent
         SpecialMenu = 0
         Text = "Edit Event"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator6
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuEventsUnlink
         SpecialMenu = 0
         Text = "Unlink"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuEventsDelete
         SpecialMenu = 0
         Text = "Delete"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator4
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuEventsCalendar
         SpecialMenu = 0
         Text = "Calendar"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuEvents_Keyboard
         SpecialMenu = 0
         Text = "Keyboard"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator5
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuEventsTimer
         SpecialMenu = 0
         Text = "Timer"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuEventsTimerEnambeAll
         SpecialMenu = 0
         Text = "Enable All Timer"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuEventsDisableAllTimer
         SpecialMenu = 0
         Text = "DisableAllTimer"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem mnuInsert
      SpecialMenu = 0
      Text = "Insert"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem mnuInsertRunAsFunction
         SpecialMenu = 0
         Text = "Call As Function..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuInsertRunAsThread
         SpecialMenu = 0
         Text = "Call As Thread..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuInsertStopTask
         SpecialMenu = 0
         Text = "Stop Task..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuInsertStopAll
         SpecialMenu = 0
         Text = "Stop All Tasks"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuInsertRepeat
         SpecialMenu = 0
         Text = "Repeat..."
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem mnuInsertDelay
         SpecialMenu = 0
         Text = "Delay..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuInserShowMsg
         SpecialMenu = 0
         Text = "Show Message..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuInsertSetGlobalVar
         SpecialMenu = 0
         Text = "Set Global Var..."
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem mnuInsertGetGlobalVar
         SpecialMenu = 0
         Text = "Get Global Var..."
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem mnuShellExecAsFunction
         SpecialMenu = 0
         Text = "Shell Execute As Function"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuShellExecAsThread
         SpecialMenu = 0
         Text = "Shell Execute As Thread"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem mnuConfigure
      SpecialMenu = 0
      Text = "Configure"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem mnuConfigChannels
         SpecialMenu = 0
         Text = "Channels..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuConfigSyncPort
         SpecialMenu = 0
         Text = "Sync Box Commport"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuConfigDevices
         SpecialMenu = 0
         Text = "Devices..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuEditDevices
         SpecialMenu = 0
         Text = "Edit Devices..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuConfigDeviceEditor
         SpecialMenu = 0
         Text = "Edit Device Templates..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator2
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuConfigSavePositions
         SpecialMenu = 0
         Text = "Save Window Positions"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator7
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuOptions
         SpecialMenu = 0
         Text = "Options..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem mnuPlayout
      SpecialMenu = 0
      Text = "Playout"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem mnuPlayoutPlayList
         SpecialMenu = 0
         Text = "Playlist"
         Index = -2147483648
         ShortcutKey = "p"
         Shortcut = "Cmd+p"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuPlayoutCallButtons
         SpecialMenu = 0
         Text = "Call Buttons"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem mnuTools
      SpecialMenu = 0
      Text = "Tools"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem mnuHexCalc
         SpecialMenu = 0
         Text = "Hex/Bin/Dec/ASCII Calc"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem mnuHelp
      SpecialMenu = 0
      Text = "Help"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem mnuHelpHtml
         SpecialMenu = 0
         Text = "Help"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuHelpAbaout
         SpecialMenu = 0
         Text = "About"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
