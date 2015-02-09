#tag Class
Protected Class SyntaxField
Inherits Textarea
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if me.ReadOnly = true then exit
		  
		  if asc(key) > 127 then
		    key = ""
		    return true
		  end
		  //Set Tabs like line before
		  if key = chr(13) then
		    dim s as string
		    dim i,x as integer
		    s = NthField(me.Text,chr(13),line+1)
		    i = CountFields(s,chr(9))
		    s = chr(13)
		    for x = 2 to i
		      s = s + chr(9)
		    next
		    me.SelText = s
		    return true
		  end
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  keywords = split("Abs Acos And Asc AscB As Asin Atan Atan2 BitwiseAnd BitwiseOr BitwiseXor Boolean ByVal CDbl Ceil Chr ChrB CMY Color Const Cos CountFields CStr Dim Do Loop End Exit Exp False Floor For Next Format Function Goto Hex HSV If Integer Then Else ElseIf Input InStr InStrB IsA Left LeftB Len LenB Log Lowercase LTrim Max Me Microseconds Mid MidB Min Nil NthField Oct Or Pow Print Redim Rem Replace ReplaceB ReplaceAll ReplaceAllB Return RGB Right RightB Rnd Round RTrim Select Case Self Sin Sqrt Str String StrComp Sub Tan Ticks Titlecase Trim True Ubound Until Uppercase Val While Wend RunCmd AckCmd NextCmd CMD ScriptResult IOResult WaitTicks ACK ACKMessage DP1 DP2 P1 P2 P3 P4 DP1Default DP2Default P1Default P2Default P3Default P4Default ShowMessage CallAsFunction CallAsThread StopTask Delay GetGlobalVar SetGlobalVar ChangeCMD_MinMax ShellExecuteAsFunction ShellExecuteAsThread StartEvent HexToStr StrToHex strCheckSum8Bit EnableTimerEvent DisableTimerEvent GetYear GetMonth GetDayOfMonth GetDayOfWeek GetHour GetMinute GetSecond GetTime")
		  comments = split("//")
		  DontUpdate = false
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub SelChange()
		  line = LineNumAtCharPos( SelStart+1 )
		  LineChange( line )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub TextChange()
		  ChangesSaved = False
		  
		  if DontUpdate then exit
		  
		  line = LineNumAtCharPos( SelStart+1 )
		  LineChange( line )
		  
		  If pasted then
		    ColorSyntax(pastedtext, charposatlinenum(pasteline)-1)
		    pasted = false
		  else
		    ColorSyntax(nthfield(text, Chr(13), line+1), charposatlinenum(line) - 1)
		  end
		  
		  ContendChanged //fire event content changed
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ColorSyntax(thetext as string, start as integer)
		  dim item as string
		  dim r as RegEx, m as RegExMatch
		  dim i, j as integer, laststart as integer
		  dim c as color
		  
		  if DoColorSyntax = false then exit
		  
		  
		  App.MouseCursor = System.Cursors.Wait
		  
		  DontUpdate = true
		  laststart = selstart
		  // Clear styles on current line
		  selstart = start
		  sellength = len(thetext)
		  seltextcolor = RGB(0,0,0)
		  
		  try
		    me.visible = false
		    
		    // Keyword highlighting
		    if ColorKeywords = true then
		      If ubound(keywords) > -1 and thetext <> "" then
		        r = new regex
		        for each item in keywords
		          r.searchpattern = "\b" + item + "\b"
		          m = r.search(thetext)
		          while m <> nil
		            //Keyword farbe
		            selstart = start + m.subexpressionstartb(0)
		            sellength = len(item)
		            seltextcolor = RGB(0, 0, 255)
		            //SelText = item
		            m = r.search()
		          wend
		        next
		      end if
		    end
		    
		    
		    if ColorNumberStrings = true then
		      // Number Highlighting 
		      r = new regex
		      r.searchpattern = "\b[0-9.]+\b"
		      m = r.search(thetext)
		      while m <> nil
		        selstart = start + m.subexpressionstartb(0)
		        sellength = len(m.subexpressionstring(0))
		        If len(m.SubExpressionString(0)) > 10 or instr(m.SubExpressionString(0), ".") > 0 then
		          c = RGB(0, 128, 0)
		        else
		          c = RGB(0, 128, 128)
		        end if
		        seltextcolor = c
		        m = r.search()
		      wend
		      
		      // String Highlighting 
		      r = new regex
		      r.searchpattern = """" + "[^" + """" + "\r\n]*" + """"
		      m = r.search(thetext)
		      while m <> nil
		        selstart = start + m.subexpressionstartb(0)
		        sellength = len(m.subexpressionstring(0))
		        seltextcolor = RGB(0, 128, 0)
		        m = r.search()
		      wend
		    end
		    
		    // Comment Highlighting
		    if ColorRemarks = true then
		      for each item in comments
		        i = instr(thetext, item)
		        while i > 0
		          selstart = start + i - 1
		          j = instr(i + 1, thetext, Chr(13))
		          If j = 0 then
		            j = len(thetext)
		          end if
		          sellength = j - i + 1
		          seltextcolor = RGB(128, 0, 0)
		          i = instr(j,thetext, item)
		        wend
		      next
		    end
		  Exception
		    MsgBox("Error occured by syntax higlighting")
		  end
		  
		  me.visible = true
		  
		  sellength = 0
		  selstart = laststart
		  
		  DontUpdate = false
		  me.SetFocus
		  App.MouseCursor = System.Cursors.StandardPointer
		  me.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  ChangesSaved = true
		  me.Styled = true
		  me.MultiLine = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Paste()
		  dim c as clipboard
		  c = new clipboard
		  pasted = true
		  pasteline = line
		  pastedtext = c.text
		  seltext = pastedtext
		  c.close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PasteCommand()
		  dim c as clipboard
		  c = new clipboard
		  
		  SelStart = me.CharPosAtLineNum(line)-1
		  
		  pasted = true
		  pasteline = line
		  pastedtext = c.text
		  seltext = pastedtext
		  c.close
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ContendChanged()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LineChange(LineNumber as integer)
	#tag EndHook


	#tag Property, Flags = &h0
		ChangesSaved As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ColorKeywords As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		ColorNumberStrings As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		ColorRemarks As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected comments(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			//wenn true dann colorsyntax
		#tag EndNote
		DoColorSyntax As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DontUpdate As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected keywords(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected line As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected NewKeywords(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected pasted As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected pastedtext As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected pasteline As integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alignment"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Left"
				"2 - Center"
				"3 - Right"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutomaticallyCheckSpelling"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Appearance"
			InitialValue="&hFFFFFF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ChangesSaved"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorKeywords"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorNumberStrings"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorRemarks"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataField"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSource"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataSource"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoColorSyntax"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Format"
			Visible=true
			Group="Appearance"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HideSelection"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LimitText"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineHeight"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineSpacing"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
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
			Name="Mask"
			Visible=true
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Multiline"
			Visible=true
			Group="Appearance"
			InitialValue="True"
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
			Name="ReadOnly"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollbarHorizontal"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollbarVertical"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Styled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
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
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Initial State"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inch"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
