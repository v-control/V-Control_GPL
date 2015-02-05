dim i,x,y,WaitForFrame,LastFrame as integer
dim s as string
dim aTimestrip(-1,-1) as string

' ****************** Initialize the Timestrip ***********
InitChaser

' ****************** Fill Command Array ****************
dim Framepos,ColNum,RowNum as integer
s = NthField(Script,chr(13),1)
'Get Rows
RowNum = CountFields(Script,chr(13))
'GetColums
ColNum = CountFields(s,chr(9))
ReDim aTimestrip(ColNum-1,RowNum-1)
'Read Lines
for x = 1 to RowNum
	s = NthField(Script,chr(13),x)
	for y = 1 to ColNum
		'Convert Timecode to Framenumber
		if y = 1 then 
			Framepos = TimecodeToFramecode(NthField(s,chr(9),y))
			aTimestrip(y-1,x-1) = str(Framepos)
		else
			aTimestrip(y-1,x-1) = NthField(s,chr(9),y)
		end
	next
next



' ******************* Start the Loop **************************
dim sDevice,sCmd,sChannels,sParams as string

while true
	CheckSync
	i = 0
	'Find the next cue to execute
	while i <= UBound(aTimestrip,2) and bResync = false
		'Find the next cue
		WaitForFrame = val(aTimestrip(0,i)) + RelativeOffset
		if WaitForFrame >= MasterTCPosition or (WaitForFrame-LastFrame < 50 and WaitForFrame-LastFrame > 0) then
			LastFrame = WaitForFrame
			ShowTimestripRow(i)
			'Wait for the Time to execute the cue
			while WaitForFrame >= MasterTCPosition and bResync = false
				CheckSync
			wend
			
			'Run the Cue
			if bResync = false then
				'Read the row
				for x = 1 to UBound(aTimestrip)
					sDevice = NthField(aTimestrip(x,i),chr(10),1)
					sChannels = NthField(aTimestrip(x,i),chr(10),2)
					sCmd = NthField(aTimestrip(x,i),chr(10),3)
					sParams = NthField(aTimestrip(x,i),chr(10),4)
					'Check if this is a Command
					if sDevice <> "" and sChannels <> "" and sCmd <> "" and sParams <> "" then
						RunTimestripCue(sDevice,sChannels,sCmd,sParams)
					else
						'This is a special command
						sChannels = mid(sChannels,3,len(sChannels)-4)
						if sDevice = "CallAsFunction" then CallAsFunction(sChannels)
						if sDevice = "CallAsThread" then CallAsThread(sChannels)
						if sDevice = "StopTask" then StopTask(sChannels)
						if sDevice = "StopAllTasks" then StopAllTasks
						if sDevice = "ShowMessage" then ShowMessage(sChannels)
						if sDevice = "ShellExecuteAsFunction" then ShellExecuteAsFunction(sChannels)
						if sDevice = "ShellExecuteAsThread" then ShellExecuteAsThread(sChannels)
					end
				next
			end
		end
		i = i + 1
	wend
wend
