<%
recaptcha_challenge_field  = Request("recaptcha_challenge_field")
recaptcha_response_field   = Request("recaptcha_response_field")
recaptcha_public_key       = "6LdIGekSAAAAANkY1Y8fo5lqJyS-XD-ig9tKM02i" ' your public key
recaptcha_private_key      = "6LdIGekSAAAAAI6xyMI5gwXbVKLhFAAT1bvX1T99" ' your private key

' returns the HTML for the widget
function recaptcha_challenge_writer()

recaptcha_challenge_writer = _
"<script type=""text/javascript"">" & _
"var RecaptchaOptions = {" & _
"   theme : 'red'," & _
"   tabindex : 0" & _
"};" & _
"</script>" & _
"<script type=""text/javascript"" src=""http://www.google.com/recaptcha/api/challenge?k=" & recaptcha_public_key & """></script>" & _
"<noscript>" & _
"<iframe src=""http://www.google.com/recaptcha/api/noscript?k=" & recaptcha_public_key & """ frameborder=""1""></iframe><>" & _
  "<textarea name=""recaptcha_challenge_field"" rows=""3"" cols=""40""></textarea>" & _
  "<input type=""hidden"" name=""recaptcha_response_field""value=""manual_challenge"">" & _
"</noscript>"

end function

' returns "" if correct, otherwise it returns the error response
function recaptcha_confirm(rechallenge,reresponse)

Dim VarString
VarString = _
	  "privatekey=" & recaptcha_private_key & _
	  "&remoteip=" & Request.ServerVariables("REMOTE_ADDR") & _
	  "&challenge=" & rechallenge & _
	  "&response=" & reresponse

Dim objXmlHttp
Set objXmlHttp = Server.CreateObject("Msxml2.ServerXMLHTTP")
objXmlHttp.open "POST", "http://www.google.com/recaptcha/api/verify", False
objXmlHttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
objXmlHttp.send VarString

Dim ResponseString
ResponseString = split(objXmlHttp.responseText, vblf)
Set objXmlHttp = Nothing

if ResponseString(0) = "true" then
'They answered correctly
 recaptcha_confirm = ""
else
'They answered incorrectly
 recaptcha_confirm = ResponseString(1)
end if

end function

server_response = ""
newCaptcha = True
if (recaptcha_challenge_field <> "" or recaptcha_response_field <> "") then
server_response = recaptcha_confirm(recaptcha_challenge_field, recaptcha_response_field)
newCaptcha = False
end if

%>
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
EmailTo = "kswann@asla.org"
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
%>


  <% if server_response <> "" or newCaptcha then %>

    <% if newCaptcha = False then %>

	Invalid recaptcha response. Click the back button to try again.

    <% end if %>

  <% else %>

  <%
	' send email 
	Set MyMail = CreateObject("cdo.message")
	MyMail.From = EmailFrom
	MyMail.To = EmailTo
	MyMail.Subject = Subject
	MyMail.HTMLBody = Body
	MyMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
	MyMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "localhost"
	MyMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
	MyMail.Configuration.Fields.Update
	 
	MyMail.Send

	' redirect to success page 
	Response.Redirect("TourFormThanks.html?" & EmailFrom)
  %>

  <%end if%>

<%

Response.End()


%>

