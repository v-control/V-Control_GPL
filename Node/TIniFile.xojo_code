#tag Class
Protected Class TIniFile
	#tag Method, Flags = &h21
		Private Sub ClearAIni()
		  dim i as integer
		  
		  for i = UBound( aIniFile ) DownTo 0
		    aIniFile.Remove(i)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetIni(iniFile as Folderitem) As string
		  Dim iniStream as TextInputStream
		  dim ares as String
		  dim i as integer
		  
		  if iniFile = Nil then Return "False"
		  if iniFile.Exists = False then Return "False"
		  if not IniFile.IsReadable then Return "False"
		  
		  ClearAIni
		  
		  iniStream=TextInputStream.Open(iniFile)
		  //Ini File komplett in Speicher einlesen
		  while not iniStream.EOF
		    aIniFile.Append(iniStream.ReadLine)
		  wend
		  
		  iniStream.Close
		  ares = Join(aIniFile,chr(13))
		  
		  Return ares
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetValue(IniItem as string) As string
		  Dim i,L as integer
		  
		  L = len(IniItem) + 1
		  for i = 0 to UBound(aIniFile)
		    if Left(aIniFile(i),L) = IniItem + "=" then Return Mid(aIniFile(i),L+1)
		  next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function iniReadBool(Lable as string, Default as Boolean) As Boolean
		  Dim s as string
		  
		  
		  s = GetValue(Lable)
		  if s = "1" then Return True
		  if s = "0" then Return False
		  if s <> "0" and s <> "1" Then return Default
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function iniReadInt(Lable as string, Default as Integer) As integer
		  Dim s as string
		  
		  s = GetValue(Lable)
		  
		  if s = "0" then Return 0
		  if val(s) > 0 or val(s) < 0 then 
		    Return val(s)
		  Else
		    return Default
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function iniReadString(Lable as String, Default as string) As String
		  dim s as string
		  
		  
		  s = GetValue(Lable)
		  
		  if s <> "" then 
		    Return s
		  else
		    Return Default
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub iniWriteBool(Lable as string, Value as Boolean)
		  dim s as string
		  
		  if Value then
		    s = "1"
		  else
		    s = "0"
		  end
		  SetValue(Lable,s)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub iniWriteInt(Lable as string, Value as integer)
		  dim s as string
		  
		  s = str(Value)
		  SetValue(Lable,s)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub iniWriteString(Lable as string, Value as string)
		  
		  SetValue(Lable,Value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OpenIni(iniFile as Folderitem) As Boolean
		  Dim iniStream as TextInputStream
		  
		  if iniFile = Nil then Return False
		  if iniFile.Exists = False then Return False
		  if not IniFile.IsReadable then Return False
		  
		  ClearAIni
		  
		  iniStream=TextInputStream.Open(iniFile)
		  //Ini File komplett in Speicher einlesen
		  while not iniStream.EOF
		    aIniFile.Append(iniStream.ReadLine)
		  wend
		  
		  iniStream.Close
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetValue(IniItem as string, Value as string)
		  Dim i as integer
		  
		  //Wenn Eintrag nicht gefunden dann neu anlegen
		  i = UBound(aIniFile) + 1
		  Redim aIniFile(i)
		  aIniFile(i) = IniItem + "=" + Value
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteIni(f as FolderItem)
		  Dim iniStream as TextOutputStream
		  Dim i as Integer
		  
		  //In inifile schreiben
		  iniStream=TextOutputStream.Create(f)
		  for i = 0 to UBound(aIniFile)
		    iniStream.WriteLine aIniFile(i)
		  next
		  iniStream.Flush
		  iniStream.Close
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private aIniFile(-1) As string
	#tag EndProperty


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
End Class
#tag EndClass
