<%
Dim EmailFrom
Dim EmailTo
Dim Subject
Dim Name
Dim Title
Dim Affiliation
Dim Firm
Dim People
Dim Address
Dim City
Dim State
Dim Zip
Dim Phone
Dim Email
Dim Date
Dim Time

' get posted data into variables
EmailFrom = Trim(Request.Form("EmailFrom"))
EmailTo = "ksharp@asla.org"
Subject = "Green Roof Tour Request"
Name = Trim(Request.Form("name")) 
Title = Trim(Request.Form("title")) 
Affiliation = Trim(Request.Form("affiliation"))
Firm = Trim(Request.Form("firm")) 
People = Trim(Request.Form("people"))
Address = Trim(Request.Form("address"))
City = Trim(Request.Form("city"))     
State = Trim(Request.Form("state"))
Zip = Trim(Request.Form("zip"))
Phone = Trim(Request.Form("phone"))
Email = Trim(Request.Form("EmailFrom"))  
Date = Trim(Request.Form("day")) 
Time = Trim(Request.Form("time"))
Comments = Trim(Request.Form("comments")) 

' validation
'Dim validationOK
'validationOK=true
'If (Trim(EmailFrom)="") Then validationOK=false
'If (validationOK=false) Then Response.Redirect("expoJob_Oops.html?" & EmailFrom)

' prepare email body text
Dim Body
Body = Body & "<b>Green Roof Tour Reqest</b><br /><br />"
Body = Body & "<b>Name:</b> " & name & "<br />"
Body = Body & "<b>Title:</b> " & title & "<br />"
Body = Body & "<b>Affilition:</b> " & affiliation & "<br />"
Body = Body & "<b>Firm:</b> " & firm & "<br />"
Body = Body & "<b>People:</b> " & people & "<br />"
Body = Body & "<b>Address:</b> " & address & "<br />"
Body = Body & "<b>City:</b> " & city & "<br />"
Body = Body & "<b>State:</b> " & state & "<br />"
Body = Body & "<b>Zip:</b> " & zip & "<br />"
Body = Body & "<b>Phone:</b> " & phone & "<br />"
Body = Body & "<b>Email:</b> " & EmailFrom & "<br />"
Body = Body & "<b>Date:</b> " & date & "<br />"
Body = Body & "<b>Name:</b> " & time & "<br />"
' send email 
Dim mail
Set mail = Server.CreateObject("CDO.Message")
mail.From = "kristamsharp@gmail.com"
mail.To = "ksharp@alsa.org"
mail.Subject = Subject
mail.HTMLBody = Body

 
' redirect to success page 
'Response.Redirect("greenroof_Thanks.html?" & EmailFrom)
%>

