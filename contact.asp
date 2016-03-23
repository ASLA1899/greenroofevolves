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
Dim Comments

' get posted data into variables
EmailFrom = Trim(Request.Form("EmailFrom")) 
EmailTo = "ksharp@asla.org"
Subject = "Green Roof Tour Request"
Name = Trim(Request.Form("Name"))
Title = Trim(Request.Form("Title"))
Affiliation = Trim(Request.Form("Affiliation"))
Firm = Trim(Request.Form("Firm"))
People = Trim(Request.Form("People"))
Address = Trim(Request.Form("Address"))
City = Trim(Request.Form("City"))
State = Trim(Request.Form("State"))
Zip = Trim(Request.Form("Zip")) 
Phone = Trim(Request.Form("Phone"))
Email = Trim(Request.Form("Email")) 
Date = Trim(Request.Form("Date")) 
Time = Trim(Request.Form("Time"))
Comments = Trim(Request.Form("Comments")) 


' prepare email body text
Dim Body
Body = Body & "<b>Green Roof Tour Request</b><br /><br />"
Body = Body & "<b>Name:</b> " & Name & "<br />"
Body = Body & "<b>Title:</b> " & Title & "<br />"
Body = Body & "<b>Affiliation:</b> " & Affiliation & "<br />"
Body = Body & "<b>Firm:</b> " & Firm & "<br />"
Body = Body & "<b>Number of People: </b> " & People & "<br />"
Body = Body & "<b>Address:</b> " & Address & "<br />"
Body = Body & "<b>City:</b> " & City & "<br />"
Body = Body & "<b>State:</b> " & State & "<br />"
Body = Body & "<b>Zip:</b> " & Zip & "<br />"
Body = Body & "<b>Phone:</b> " & Phone & "<br />"
Body = Body & "<b>Email:</b> " & EmailFrom & "<br />"
Body = Body & "<b>Date:</b> " & Date & "<br />"
Body = Body & "<b>Time:</b> " & Time & "<br />"
Body = Body & "<b>Comments:</b> " & Comments & "<br />"

' send email 
Dim mail
Set mail = Server.CreateObject("CDO.Message")
mail.To = EmailTo
mail.From = EmailFrom
mail.Subject = Subject
mail.HTMLBody = Body
mail.Send 

' redirect to success page 
Response.Redirect("TourFormThanks.html?" & EmailFrom)


%>

