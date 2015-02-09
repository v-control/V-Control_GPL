#tag Class
Protected Class TSerialServer
Inherits Serial
	#tag Event
		Sub DataAvailable()
		  dim sres,tmp as string
		  dim pos as integer
		  
		  if BlockDataAvailable = false then
		    BlockDataAvailable = True
		    RecBuffer = RecBuffer + me.ReadAll
		    
		    if Len(RecBuffer) > 500 then 
		      RecBuffer = ""
		      BlockDataAvailable = False
		      Return
		    end
		    
		    
		    if leftB(RecBuffer,1) <> chr(4) then
		      RecBuffer = ""
		      BlockDataAvailable = False
		      Return
		    end
		    
		    pos = instr(RecBuffer,chr(6))
		    if pos > 0 then
		      tmp = mid(RecBuffer,1,pos)
		      RecBuffer = mid(RecBuffer,pos+1)
		      sres = NodeIF.CmdDispatcher(tmp,"RS232",me.SerialPort.Name)
		      me.Write(sres)
		    end
		    
		    BlockDataAvailable = False
		  end
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SendMsg(msg as string)
		  if me.Open = True then me.Write(msg)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected BlockDataAvailable As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected RecBuffer As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Baud"
			Visible=true
			Group="Behavior"
			InitialValue="13"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - 300"
				"1 - 600"
				"2 - 1200"
				"3 - 1800"
				"4 - 2400"
				"5 - 3600"
				"6 - 4800"
				"7 - 7200"
				"8 - 9600"
				"9 - 14400"
				"10 - 19200"
				"11 - 28800"
				"12 - 38400"
				"13 - 57600"
				"14 - 115200"
				"15 - 230400"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bits"
			Visible=true
			Group="Behavior"
			InitialValue="3"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - 5 Data Bits"
				"1 - 6 Data Bits"
				"2 - 7 Data Bits"
				"3 - 8 Data bits"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CTS"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DTR"
			Visible=true
			Group="Behavior"
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
			Name="Left"
			Visible=true
			Group="Position"
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
			Name="Parity"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - No Parity"
				"1 - Odd Parity"
				"2 - EvenParity"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Stop"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - 1 Stop Bit"
				"1 - 1.5 Stop Bits"
				"2 - 2 Stop Bits"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XON"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass