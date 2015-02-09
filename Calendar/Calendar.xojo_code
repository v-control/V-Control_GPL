#tag Module
Protected Module Calendar
	#tag Method, Flags = &h0
		Function AddBaseEvent(EventName as string, StartDate as Date, Repeats as string, strCueset as string) As string
		  dim res as string
		  
		  if BaseEvents = nil then BaseEvents = new Dictionary
		  
		  if BaseEvents.HasKey(EventName) then Return "-5001"
		  
		  res = StartDate.ShortDate + chr(2) + StartDate.LongTime + chr(2) + Repeats+chr(2)+strCueset
		  BaseEvents.Value(EventName) = res
		  
		  res = CreateEventListFromBaseEvent(EventName,StartDate,Repeats)
		  
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearAllEvents()
		  if BaseEvents <> nil then BaseEvents.Clear
		  if EventListCal <> nil then EventListCal.Clear
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateEventListFromBaseEvent(EventName as string, StartDate as Date, Repeats as string) As string
		  //Nimmt Base Event entgegen und generiert eine Liste der Tagesevents
		  
		  dim params as string
		  
		  if BaseEvents = nil then BaseEvents = new Dictionary
		  
		  if not BaseEvents.HasKey(EventName) then Return "-5002"
		  
		  
		  if EventListCal = nil then EventListCal = New Dictionary
		  
		  
		  params = ""
		  if Repeats = "" then
		    //Param List Holen falls vorhanden
		    if EventListCal.HasKey(StartDate.ShortDate) then params = EventListCal.Value(StartDate.ShortDate)
		    if params <> "" then params = params + chr(2)
		    params = params + EventName+chr(2)+StartDate.LongTime
		    EventListCal.Value(StartDate.ShortDate) = params
		  else
		    dim Mode as string
		    dim EndDate as New date
		    dim d as New date
		    dim CurD as New date
		    Dim i,interval,durationID,xTimes as integer
		    
		    Mode = NthField(Repeats,";",1)
		    
		    // ***************************************** Tages Wiederholung ***************************************** 
		    if Mode = "DAY" then
		      interval = val(NthField(Repeats,";",2))
		      durationID = val(NthField(Repeats,";",3))
		      
		      // For x Times
		      if durationID = 0 then
		        xTimes = val(NthField(Repeats,";",4))
		        d = StartDate
		        for i = 1 to xTimes
		          params = ""
		          if EventListCal.HasKey(d.ShortDate) then params = EventListCal.Value(d.ShortDate)
		          if params <> "" then params = params + chr(2)
		          params = params + EventName + chr(2) + StartDate.LongTime
		          EventListCal.Value(d.ShortDate) = params
		          d.Day = d.Day + interval
		          //Nicht mehr wie ein Jahr im Voraus Events erstellen
		          if d.Year > CurD.Year+1 then exit
		        next
		      end
		      
		      // To Date
		      if durationID = 1 then
		        d = StartDate
		        
		        EndDate = strDateToDate(d.LongTime  + " " + NthField(Repeats,";",4))
		        while d <= EndDate
		          params = ""
		          if EventListCal.HasKey(d.ShortDate) then params = EventListCal.Value(d.ShortDate)
		          if params <> "" then params = params + chr(2)
		          params = params + EventName + chr(2) + StartDate.LongTime
		          EventListCal.Value(d.ShortDate) = params
		          d.Day = d.Day + interval
		          //Nicht mehr wie ein Jahr im Voraus Events erstellen
		          if d.Year > CurD.Year+1 then exit
		        wend
		      end
		      
		      // Forever
		      if durationID = 2 then
		        d = StartDate
		        While d.Year <= CurD.Year+1
		          params = ""
		          if EventListCal.HasKey(d.ShortDate) then params = EventListCal.Value(d.ShortDate)
		          if params <> "" then params = params + chr(2)
		          params = params + EventName + chr(2) + StartDate.LongTime
		          EventListCal.Value(d.ShortDate) = params
		          d.Day = d.Day + interval
		          
		        wend
		      end
		    end
		    
		    // ***************************************** Mode = WEEK ***************************************** 
		    if Mode = "WEEK" then
		      dim Weekdays as string
		      dim c,x as integer
		      
		      interval = val(NthField(Repeats,";",2))
		      Weekdays = NthField(Repeats,";",3)
		      durationID = val(NthField(Repeats,";",4))
		      
		      // For x Times
		      if durationID = 0 then
		        xTimes = val(NthField(Repeats,";",5))
		        d = StartDate
		        for i = 1 to xTimes
		          for x = 1 to 7
		            for c = 1 to 7
		              if val(mid(Weekdays,c,1)) = 1 then
		                if d.DayOfWeek = c then
		                  //Nicht mehr wie ein Jahr im Voraus Events erstellen
		                  if d.Year > CurD.Year+1 then exit
		                  params = ""
		                  if EventListCal.HasKey(d.ShortDate) then params = EventListCal.Value(d.ShortDate)
		                  if params <> "" then params = params + chr(2)
		                  params = params + EventName + chr(2) + StartDate.LongTime
		                  EventListCal.Value(d.ShortDate) = params
		                  
		                end
		              end
		            next
		            d.day = d.day + 1
		          next
		          d.day = d.Day + (interval-1)*7
		        next
		      end
		      
		      // To Date
		      if durationID = 1 then
		        EndDate = strDateToDate(d.LongTime  + " " + NthField(Repeats,";",5))
		        d = StartDate
		        while d <= EndDate
		          for x = 1 to 7
		            for c = 1 to 7
		              if val(mid(Weekdays,c,1)) = 1 then
		                if d.DayOfWeek = c then
		                  //Nicht mehr wie ein Jahr im Voraus Events erstellen
		                  if d.Year > CurD.Year+1 then exit
		                  if d > EndDate then exit
		                  params = ""
		                  if EventListCal.HasKey(d.ShortDate) then params = EventListCal.Value(d.ShortDate)
		                  if params <> "" then params = params + chr(2)
		                  params = params + EventName + chr(2) + StartDate.LongTime
		                  EventListCal.Value(d.ShortDate) = params
		                  
		                end
		              end
		            next
		            d.day = d.day + 1
		          next
		          d.Day = d.Day + (interval-1)*7
		          
		        wend
		      end
		      
		      // Forever
		      if durationID = 2 then
		        EndDate = strDateToDate(d.LongTime  + " " + NthField(Repeats,";",5))
		        d = StartDate
		        while d.Year <= CurD.Year+1
		          for x = 1 to 7
		            for c = 1 to 7
		              if val(mid(Weekdays,c,1)) = 1 then
		                if d.DayOfWeek = c then
		                  //Nicht mehr wie ein Jahr im Voraus Events erstellen
		                  if d.Year > CurD.Year+1 then exit
		                  params = ""
		                  if EventListCal.HasKey(d.ShortDate) then params = EventListCal.Value(d.ShortDate)
		                  if params <> "" then params = params + chr(2)
		                  params = params + EventName + chr(2) + StartDate.LongTime
		                  EventListCal.Value(d.ShortDate) = params
		                  
		                end
		              end
		            next
		            d.day = d.day + 1
		          next
		          d.Day = d.Day + (interval-1)*7
		          
		        wend
		      end
		    end
		  end
		  
		  
		  Return "0"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetAllBaseEvents() As string
		  dim i as Integer
		  dim res as string
		  
		  if BaseEvents = nil then return ""
		  res = ""
		  for i = 0 to BaseEvents.Count-1
		    res = res + BaseEvents.Key(i)+chr(2)+BaseEvents.Value(BaseEvents.Key(i))+chr(3)
		  next
		  
		  res = DeleteLastChar(res,chr(3))
		  
		  Return res
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveBaseEvent(strEventname as string)
		  
		  BaseEvents.Remove(strEventname)
		  RemoveSingleEvent(strEventname)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveSingleEvent(strEventname as string)
		  dim i,c as integer
		  dim res,tmp as string
		  
		  
		  //Single Events loeschen
		  for i = EventListCal.Count -1 DownTo 0
		    res = EventListCal.Value(EventListCal.Key(i))
		    c = InStr(res,strEventname+chr(2))
		    if c > 0 then
		      //Wenn Event nicht der erste in der Liste
		      if c > 1 then
		        tmp = left(res,c-2)
		        res = mid(res,c)
		        //Anfang Datum suchen
		        c = InStr(res,chr(2))
		        if c > 0 then
		          res = mid(res,c+1)
		          //Anfang von naechsten Event suchen
		          c = InStr(res,chr(2))
		          if c > 0 then
		            res = mid(res,c+1)
		          else
		            res = ""
		          end
		        end
		        EventListCal.Value(EventListCal.Key(i)) = tmp+res
		      else
		        //Anfang Datum suchen
		        c = InStr(res,chr(2))
		        if c > 0 then
		          res = mid(res,c+1)
		          //Anfang von naechsten Event suchen
		          c = InStr(res,chr(2))
		          if c > 0 then
		            res = mid(res,c+1)
		          else
		            res = ""
		          end
		        end
		        if res <> "" then
		          EventListCal.Value(EventListCal.Key(i)) = res
		        else
		          EventListCal.Remove(EventListCal.Key(i))
		        end
		      end
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAllBaseEvents(strEventList as string)
		  dim i,c as Integer
		  dim res,evt,param as string
		  dim d as new Date
		  
		  if BaseEvents = nil then BaseEvents = new Dictionary
		  BaseEvents.Clear
		  
		  for i = 1 to CountFields(strEventList,chr(3))
		    res = NthField(strEventList,chr(3),i)
		    c = InStr(res,chr(2))
		    if c > 0 then
		      evt = NthField(res,chr(2),1)
		      param = mid(res,c+1)
		      //param = Datum(2)Zeit(2)Repeats(2)Cueset
		      BaseEvents.Value(evt) = param
		      d = strDateToDate(NthField(param,chr(2),2) + " " + NthField(param,chr(2),1))
		      res = CreateEventListFromBaseEvent(evt,d,NthField(param,chr(2),3))
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function strDateToDate(Params as string) As Date
		  //Konvertiert Datums String (dd.mm.yyy hh:mm:ss) nach Datentyp Date
		  dim FieldCount as integer
		  dim strtm, strhh,strmm,strss,strDate as string
		  dim d as new date
		  dim b as Boolean
		  
		  FieldCount = CountFields(Params," ")
		  //DatumFormat entweder 13:00:00 24.12.2008 oder 01:00:00 PM 12/24/2008 oder 01:00:00 PM 24/12/2008 abhängig von locale
		  if FieldCount <> 2 and FieldCount <> 3 then Return nil
		  
		  strtm = NthField(Params," ",1)
		  if FieldCount = 2 then 
		    strDate = NthField(Params," ",2)
		  else
		    strDate = NthField(Params," ",3)
		  end
		  
		  
		  strhh = NthField(strtm,":",1)
		  strmm = NthField(strtm,":",2)
		  strss = NthField(strtm,":",3)
		  b = ParseDate(strDate,d)
		  if b = True then
		    d.Hour = val(strhh)
		    d.Minute = val(strmm)
		    d.Second = val(strss)
		    if FieldCount = 3 then
		      if NthField(Params," ",2) = "PM" then d.Hour = d.Hour + 12
		    end
		    Return d
		  else
		    Return nil
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UpdateBaseEvent(EventName as string, StartDate as Date, Repeats as string, strCueset as string) As string
		  
		  dim res as string
		  
		  if BaseEvents = nil then BaseEvents = new Dictionary
		  
		  if not BaseEvents.HasKey(EventName) then Return "-5002"
		  
		  BaseEvents.Value(EventName) = StartDate.ShortDate + chr(2) + StartDate.LongTime + chr(2) + Repeats+chr(2)+strCueset
		  
		  
		  if EventListCal = nil then EventListCal = New Dictionary
		  
		  RemoveSingleEvent(EventName)
		  res = CreateEventListFromBaseEvent(EventName,StartDate,Repeats)
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		BaseEvents As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		EventListCal As Dictionary
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
End Module
#tag EndModule
