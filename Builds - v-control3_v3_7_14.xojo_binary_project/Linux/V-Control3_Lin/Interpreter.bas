dim strLine,ID, Device,Channels,Command,Parameter,DP1,DP2,P1,P2,P3,P4,s,tmp as string
dim Seperator as string
dim iLine, curLine,RepeatCounter,i as integer
dim RepeatStack(-1) as string
dim bol as boolean

Seperator = chr(34)+","+chr(34)
for iLine = StartLine to CountFields(Script,chr(13))
	strLine = NthField(Script,chr(13),iLine)
	ID = NthField(strLine,chr(9),1)
	Device = NthField(strLine,chr(9),2)
	Channels = NthField(strLine,chr(9),3)
	Command = NthField(strLine,chr(9),4)
	Parameter = NthField(strLine,chr(9),5)
	//Nur wenn RunCmd dann erstes und letztes Zeichen l�schen
	if Device <> "" then Parameter = Mid(Parameter,2,Len(Parameter)-2)
	DP1 = NthField(Parameter,seperator,1)
	DP2 = NthField(Parameter,seperator,2)
	P1 = NthField(Parameter,seperator,3)
	P2 = NthField(Parameter,seperator,4)
	P3 = NthField(Parameter,seperator,5)
	P4 = NthField(Parameter,seperator,6)
	
	//Show Current Line in User Interface
	ShowLineNum(Val(ID))
	if Device <> "" then RunCmd(Device,Channels,Command,DP1,DP2,P1,P2,P3,P4)
	if Device = "" then
		if Command = "Delay" then Delay(DP1)
		if Command = "ShowMessage" then ShowMessage(DP1)
		if Command = "CallAsThread" then CallAsThread(DP1)
		if Command = "CallAsFunction" then CallAsFunction(DP1)
		if Command = "StopTask" then StopTask(DP1)
		if Command = "DisableTimerEvent" then DisableTimerEvent(DP1)
		if Command = "EnableTimerEvent" then EnableTimerEvent(DP1)
		if Command = "StopAllTasks" then StopAllTasks
		if Command = "ShellExecuteAsFunction" then ShellExecuteAsFunction(DP1)
		if Command = "ShellExecuteAsThread" then ShellExecuteAsThread(DP1)
		if Command = "Repeat" then
			RepeatStack.Append(str(iLine)+":"+DP1)
		end
		if Command = "EndRepeat" then
			i = UBound(RepeatStack)
			if i >= 0 then 
				s = RepeatStack(i)
				RepeatCounter = val(NthField(s,":",2))
				RepeatCounter = RepeatCounter - 1
				if RepeatCounter > 0 then
					tmp = NthField(s,":",1)
					iLine = val(tmp)
					tmp = tmp + ":" + str(RepeatCounter)
					RepeatStack(i) = tmp
				end
				if RepeatCounter = 0 then
					if UBound(RepeatStack) > -1 then RepeatStack.Remove(i)
				end	
				if RepeatCounter < 0 then
					tmp = NthField(s,":",1)
					iLine = val(tmp)
				end
			end
			
		end
	end
Next

