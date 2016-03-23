<cfinclude template="GreenRoof_TourRequest_thankyou.cfm">
<CFMAIL
TO="kswann@asla.org"
FROM="#username#"
SUBJECT="Green Roof Tour Request Form"type="html">

<cfif #form.contactname# is not ""><B>Contact Name:</B> #contactname#</CFIF><br>
<cfif #form.title# is not ""><B>Title:</B> #title#</CFIF><br>
<cfif #form.affiliation# is not ""><B>Professional Affiliation:</B> #affiliation#</CFIF><br>
<cfif #form.firm# is not ""><B>Firm:</B> #firm#</CFIF><br>
<cfif #form.tournum# is not ""><B>Number of people for tour:</B> #tournum#</CFIF><br>
<cfif #form.address# is not ""><B>Address:</B> #address#</CFIF><br>
<cfif #form.city# is not ""><B>City:</B> #city#</CFIF><br>
<cfif #form.state# is not ""><B>State:</B> #state#</CFIF><br>
<cfif #form.zip# is not ""><B>Zip:</B> #zip#</CFIF><br>
<cfif #form.phone# is not ""><B>Phone:</B> #phone#</CFIF><br>
<cfif #form.username# is not ""><B>Email:</B> #username#</CFIF><br>
<cfif #form.tourdate# is not ""><B>Tour date:</B> #tourdate#</CFIF><br>
<cfif #form.dayandtime# is not ""><B>Day and Time:</B> #dayandtime#</CFIF><br>
<cfif #form.comments# is not ""><B>Comments:</B> #comments#</CFIF><br>
</CFMAIL>

