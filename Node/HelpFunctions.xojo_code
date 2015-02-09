#tag Module
Protected Module HelpFunctions
	#tag Method, Flags = &h0
		Function CheckSum8Bit(chkString as string) As integer
		  dim i,cs as integer
		  
		  for i = 1 to Len(chkString)
		    cs = cs + asc(mid(chkString,i,1))
		  next
		  
		  i = cs / 256
		  cs = cs - i * 256
		  Return cs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Decrypt(eText as string, strKey as string) As String
		  dim i,x,c as integer
		  dim iCryptChar as integer
		  dim iv as integer
		  dim strDecrypted,s as string
		  
		  strKey = ReplaceAll(strKey,chr(13),"")
		  strKey = ReplaceAll(strKey," ","")
		  
		  eText = ReplaceAll(eText,"W","F")
		  eText = ReplaceAll(eText,"Q","A")
		  eText = ReplaceAll(eText,"U","0")
		  eText = ReplaceAll(eText,"Z","3")
		  eText = ReplaceAll(eText,"K","6")
		  try
		    //Check that keylength is at least Textlength
		    for i = 1 to Len(eText) / 3
		      if len(strKey) < len(eText) / 3then strKey = strKey + str(i)
		    next
		    
		    strDecrypted = ""
		    x = Len(eText) / 3
		    
		    c = 0
		    for i = 1 to Len(eText) step 3
		      c = c +1
		      s = mid(eText,i,3)
		      iv = Val("&h" + s)
		      iv = iv / 2
		      iCryptChar = asc(mid(strKey,c,1))
		      iv = iv - iCryptChar - CheckSum8Bit(strKey)
		      
		      strDecrypted = strDecrypted + chr(iv)
		      
		    next
		    
		    Return strDecrypted
		    
		  Exception
		    Return ""
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteLastChar(str as string, LastChar as string) As string
		  //Delete Last Character in string if matches LastChar
		  if right(str,1) = LastChar then str = mid(str,1,len(str)-1)
		  Return str
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Encrypt(eText as string, strKey as string) As String
		  dim i,x as integer
		  dim iChar, iCryptChar as integer
		  dim iArray(-1) as integer
		  dim strEncrypted,s as string
		  
		  strKey = ReplaceAll(strKey,chr(13),"")
		  strKey = ReplaceAll(strKey," ","")
		  
		  try
		    //Check that keylength is at least Textlength
		    for i = 1 to Len(eText)
		      if len(strKey) < len(eText) then strKey = strKey + str(i)
		    next
		    
		    strEncrypted = ""
		    ReDim iArray(Len(eText))
		    
		    for i = 1 to Len(eText)
		      iChar = asc(mid(eText,i,1))
		      iCryptChar = asc(mid(strKey,i,1))
		      iArray(i) = iChar + iCryptChar + CheckSum8Bit(strKey)
		      iArray(i) = iArray(i) * 2
		      //Wert nach Hex
		      s = Hex(iArray(i))
		      //Wert muss dreistellig sein
		      for x = 1 to 4
		        if len(s) < 3 then s = "0" + s
		      next
		      strEncrypted = strEncrypted + s
		    next
		    
		    strEncrypted = ReplaceAll(strEncrypted,"F","W")
		    strEncrypted = ReplaceAll(strEncrypted,"A","Q")
		    strEncrypted = ReplaceAll(strEncrypted,"0","U")
		    strEncrypted = ReplaceAll(strEncrypted,"3","Z")
		    strEncrypted = ReplaceAll(strEncrypted,"6","K")
		    Return strEncrypted
		    
		  Exception
		    Return ""
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindRightVal(strVar as string, Position as integer) As integer
		  //Sucht value in string von rechts, Position gibt an wieviel nach rechts gesucht werden soll
		  dim i as integer
		  dim s,sval,res as string
		  
		  s = right(strVar,Position)
		  for i = len(s) DownTo 0
		    sval = mid(s,i,1)
		    if (asc(sval) >= 48) and (asc(sval) <= 57) then 
		      res = sval + res
		    else
		      Return val(res)
		    end
		  next
		  Return val(res)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FramesToTC(Frames as integer, fps as integer) As string
		  dim hh,mm,ss,sstmp,ff as integer
		  dim shh,smm,sss,sff as string
		  
		  sstmp = frames \ fps
		  hh =sstmp \ 3600
		  mm = (sstmp-hh*3600) \ 60
		  ss = (sstmp-(hh*3600)-(mm*60)) 
		  ff = (Frames-(hh*3600*fps)-(mm*60*fps)- (ss*fps))
		  
		  if (hh > 23) or (mm > 59) or (ss > 59) then 
		    Return "-1"
		  end
		  
		  sHH = str(hh)
		  sMM = str(mm)
		  sSS = str(ss)
		  sFF = str(ff)
		  if len(sHH) < 2 then sHH = "0" + sHH
		  if len(sMM) < 2 then sMM = "0" + sMM
		  if len(sSS) < 2 then sSS = "0" + sSS
		  if len(sFF) < 2 then sFF = "0" + sFF
		  
		  
		  Return sHH + "-" + sMM + "-" + sSS + "-" + sFF
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FramesToTCFullSeconds(Frames as integer, fps as integer) As string
		  // Liefert immer volle sekunden und null frames zurück
		  //Wird gebraucht wenn man 25 und 30 fps Player gemischt im chase mode laufen lassen will
		  dim hh,mm,ss,sstmp,ff as integer
		  dim shh,smm,sss,sff as string
		  
		  sstmp = frames \ fps
		  hh =sstmp \ 3600
		  mm = (sstmp-hh*3600) \ 60
		  ss = (sstmp-(hh*3600)-(mm*60))  + 1
		  ff = 0
		  
		  if ss > 59 then
		    ss = 0
		    mm = mm + 1
		  end
		  if mm > 59 then
		    mm = 0
		    hh = hh + 1
		  end
		  
		  
		  sHH = str(hh)
		  sMM = str(mm)
		  sSS = str(ss)
		  sFF = str(ff)
		  if len(sHH) < 2 then sHH = "0" + sHH
		  if len(sMM) < 2 then sMM = "0" + sMM
		  if len(sSS) < 2 then sSS = "0" + sSS
		  if len(sFF) < 2 then sFF = "0" + sFF
		  
		  
		  Return sHH + "-" + sMM + "-" + sSS + "-" + sFF
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HexStringToString(HexString as string) As String
		  Dim i,v as Integer
		  Dim ret,s as String
		  
		  ret = ""
		  if Len(HexString) >= 1 then
		    for i = 1 to Len(HexString) Step 2
		      s = mid(HexString,i,2)
		      v = val("&H"+s)
		      ret = ret + chrB(v)
		    next
		  end
		  return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function strCheckSum8Bit(chkString as string) As string
		  dim i,cs as integer
		  
		  for i = 1 to Len(chkString)
		    cs = cs + asc(mid(chkString,i,1))
		  next
		  
		  i = cs / 256
		  cs = cs - i * 256
		  Return chrB(cs)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StringToHexString(InputString as String) As String
		  Dim i,v as Integer
		  Dim ret,s as String
		  
		  ret = ""
		  if Len(InputString) >= 1 then
		    for i = 1 to Len(InputString)
		      v = asc(mid(InputString,i,1))
		      s = hex(v)
		      if len(s) = 1 then s = "0"+s
		      ret = ret + s
		    next
		  end
		  return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TCToFrames(TC as string, fps as integer) As integer
		  dim hh,mm,ss,ff, Frames as integer
		  
		  
		  hh = val(mid(TC,1,2))
		  mm = val(mid(TC,4,2))
		  ss = val(mid(TC,7,2))
		  ff = val(mid(TC,10,2))
		  
		  Frames = hh * 3600
		  Frames =Frames + mm * 60
		  Frames = Frames + ss
		  Frames = Frames * fps
		  Frames = Frames + ff
		  
		  Return Frames
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ThreadSleep(SleepTime as integer)
		  app.SleepCurrentThread(SleepTime)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WaitTicks(tk as integer)
		  //Wait tk Ticks (1 Tick = 16,666 ms)
		  Dim i as Integer
		  
		  i = Ticks
		  while Ticks < i + tk
		    //Bei Überlauf resetten
		    if Ticks < i then i = Ticks
		    app.SleepCurrentThread(1)
		  wend
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
