<HTML><!-- Template for Sub-pages with Banner - Fix links according to directory placed -->
<HEAD>
<TITLE>ASLA:Green Roof Tour Request Form</TITLE><!-- Page Title Goes Here -->
<META NAME="description" CONTENT="The American Society of Landscape Architects (ASLA) is a national professional society that represents the landscape architecture profession"> 
<META NAME="keywords" CONTENT="landscape architure, land planning, land use planning, land use, site planning, landscape design, urban planning, urban design, garden design">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1">

<style type="text/css">

.ds_box {
	background-color: #FFF;
	border: 1px solid #000;
	position: absolute;
	z-index: 32767;
}

.ds_tbl {
	background-color: #FFF;
}

.ds_head {
	background-color: #333;
	color: #FFF;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 13px;
	font-weight: bold;
	text-align: center;
	letter-spacing: 2px;
}

.ds_subhead {
	background-color: #CCC;
	color: #000;
	font-size: 12px;
	font-weight: bold;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	width: 32px;
}

.ds_cell {
	background-color: #EEE;
	color: #000;
	font-size: 13px;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	padding: 5px;
	cursor: pointer;
}

.ds_cell:hover {
	background-color: #F3F3F3;
} /* This hover code won't work for IE */

</style>
<link href="styles.css" rel="stylesheet" type="text/css">
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style1 {color: #FF0000}
-->
</style></head>
<body>

<table class="ds_box" cellpadding="0" cellspacing="0" id="ds_conclass" style="display: none;">
<tr><td id="ds_calclass">
</td></tr>
</table>

<script type="text/javascript">
// <!-- <![CDATA[

// Project: Dynamic Date Selector (DtTvB) - 2006-03-16
// Script featured on JavaScript Kit- http://www.javascriptkit.com
// Code begin...
// Set the initial date.
var ds_i_date = new Date();
ds_c_month = ds_i_date.getMonth() + 1;
ds_c_year = ds_i_date.getFullYear();

// Get Element By Id
function ds_getel(id) {
	return document.getElementById(id);
}

// Get the left and the top of the element.
function ds_getleft(el) {
	var tmp = el.offsetLeft;
	el = el.offsetParent
	while(el) {
		tmp += el.offsetLeft;
		el = el.offsetParent;
	}
	return tmp;
}
function ds_gettop(el) {
	var tmp = el.offsetTop;
	el = el.offsetParent
	while(el) {
		tmp += el.offsetTop;
		el = el.offsetParent;
	}
	return tmp;
}

// Output Element
var ds_oe = ds_getel('ds_calclass');
// Container
var ds_ce = ds_getel('ds_conclass');

// Output Buffering
var ds_ob = ''; 
function ds_ob_clean() {
	ds_ob = '';
}
function ds_ob_flush() {
	ds_oe.innerHTML = ds_ob;
	ds_ob_clean();
}
function ds_echo(t) {
	ds_ob += t;
}

var ds_element; // Text Element...

var ds_monthnames = [
'January', 'February', 'March', 'April', 'May', 'June',
'July', 'August', 'September', 'October', 'November', 'December'
]; // You can translate it for your language.

var ds_daynames = [
'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'
]; // You can translate it for your language.

// Calendar template
function ds_template_main_above(t) {
	return '<table cellpadding="3" cellspacing="1" class="ds_tbl">'
	     + '<tr>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_py();">&nbsp;</td>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_pm();">&lt;</td>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_hi();" colspan="3">[Close]</td>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_nm();">&gt;</td>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_ny();">&nbsp;</td>'
		 + '</tr>'
	     + '<tr>'
		 + '<td colspan="7" class="ds_head">' + t + '</td>'
		 + '</tr>'
		 + '<tr>';
}

function ds_template_day_row(t) {
	return '<td class="ds_subhead">' + t + '</td>';
	// Define width in CSS, XHTML 1.0 Strict doesn't have width property for it.
}

function ds_template_new_week() {
	return '</tr><tr>';
}

function ds_template_blank_cell(colspan) {
	return '<td colspan="' + colspan + '"></td>'
}

function ds_template_day(d, m, y) {
	return '<td class="ds_cell" onclick="ds_onclick(' + d + ',' + m + ',' + y + ')">' + d + '</td>';
	// Define width the day row.
}

function ds_template_main_below() {
	return '</tr>'
	     + '</table>';
}

// This one draws calendar...
function ds_draw_calendar(m, y) {
	// First clean the output buffer.
	ds_ob_clean();
	// Here we go, do the header
	ds_echo (ds_template_main_above(ds_monthnames[m - 1] + ' ' + y));
	for (i = 0; i < 7; i ++) {
		ds_echo (ds_template_day_row(ds_daynames[i]));
	}
	// Make a date object.
	var ds_dc_date = new Date();
	ds_dc_date.setMonth(m - 1);
	ds_dc_date.setFullYear(y);
	ds_dc_date.setDate(1);
	if (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12) {
		days = 31;
	} else if (m == 4 || m == 6 || m == 9 || m == 11) {
		days = 30;
	} else {
		days = (y % 4 == 0) ? 29 : 28;
	}
	var first_day = ds_dc_date.getDay();
	var first_loop = 1;
	// Start the first week
	ds_echo (ds_template_new_week());
	// If sunday is not the first day of the month, make a blank cell...
	if (first_day != 0) {
		ds_echo (ds_template_blank_cell(first_day));
	}
	var j = first_day;
	for (i = 0; i < days; i ++) {
		// Today is sunday, make a new week.
		// If this sunday is the first day of the month,
		// we've made a new row for you already.
		if (j == 0 && !first_loop) {
			// New week!!
			ds_echo (ds_template_new_week());
		}
		// Make a row of that day!
		ds_echo (ds_template_day(i + 1, m, y));
		// This is not first loop anymore...
		first_loop = 0;
		// What is the next day?
		j ++;
		j %= 7;
	}
	// Do the footer
	ds_echo (ds_template_main_below());
	// And let's display..
	ds_ob_flush();
	// Scroll it into view.
	ds_ce.scrollIntoView();
}

// A function to show the calendar.
// When user click on the date, it will set the content of t.
function ds_sh(t) {
	// Set the element to set...
	ds_element = t;
	// Make a new date, and set the current month and year.
	var ds_sh_date = new Date();
	ds_c_month = ds_sh_date.getMonth() + 1;
	ds_c_year = ds_sh_date.getFullYear();
	// Draw the calendar
	ds_draw_calendar(ds_c_month, ds_c_year);
	// To change the position properly, we must show it first.
	ds_ce.style.display = '';
	// Move the calendar container!
	the_left = ds_getleft(t);
	the_top = ds_gettop(t) + t.offsetHeight;
	ds_ce.style.left = the_left + 'px';
	ds_ce.style.top = the_top + 'px';
	// Scroll it into view.
	ds_ce.scrollIntoView();
}

// Hide the calendar.
function ds_hi() {
	ds_ce.style.display = 'none';
}

// Moves to the next month...
function ds_nm() {
	// Increase the current month.
	ds_c_month ++;
	// We have passed December, let's go to the next year.
	// Increase the current year, and set the current month to January.
	if (ds_c_month > 12) {
		ds_c_month = 1; 
		ds_c_year++;
	}
	// Redraw the calendar.
	ds_draw_calendar(ds_c_month, ds_c_year);
}

// Moves to the previous month...
function ds_pm() {
	ds_c_month = ds_c_month - 1; // Can't use dash-dash here, it will make the page invalid.
	// We have passed January, let's go back to the previous year.
	// Decrease the current year, and set the current month to December.
	if (ds_c_month < 1) {
		ds_c_month = 12; 
		ds_c_year = ds_c_year - 1; // Can't use dash-dash here, it will make the page invalid.
	}
	// Redraw the calendar.
	ds_draw_calendar(ds_c_month, ds_c_year);
}


// Format the date to output.
function ds_format_date(d, m, y) {
	// 2 digits month.
	m2 = '00' + m;
	m2 = m2.substr(m2.length - 2);
	// 2 digits day.
	d2 = '00' + d;
	d2 = d2.substr(d2.length - 2);
	// YYYY-MM-DD
	return m2 + '-' + d2 + '-' + y;
}

// When the user clicks the day.
function ds_onclick(d, m, y) {
	// Hide the calendar.
	ds_hi();
	// Set the value of it, if we can.
	if (typeof(ds_element.value) != 'undefined') {
		ds_element.value = ds_format_date(d, m, y);
	// Maybe we want to set the HTML in it.
	} else if (typeof(ds_element.innerHTML) != 'undefined') {
		ds_element.innerHTML = ds_format_date(d, m, y);
	// I don't know how should we display it, just alert it to user.
	} else {
		alert (ds_format_date(d, m, y));
	}
}

// And here is the end.

// ]]> -->
</script>
</HEAD>
<BODY BGCOLOR="#FFFFFF" ONLOAD="preloadImages();" vlink="#336633">

</TABLE>
<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center" bgcolor="#ffffff">
  <tr><td align="center"><img src="images/gr_title.jpg"></td></tr>
</table>

<table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">

<tr> 
<td valign="top"> 

<Form method="post" action="GreenRoof_TourRequest_email.cfm">
<p align="CENTER" class="h2"><b>ASLA Green Roof Tours </b><br>
</P>

        
        <P ALIGN=LEFT>Tours of the ASLA green roof are available for groups or 
          individuals on Tuesdays, Wednesdays and Thursdays between 10:00am and 2:00pm. Please 
          fill out the form below and someone will contact you shortly to confirm 
          your tour time. </P>

        <table width="100%"  border="0">
          <tr> 
            <td width="27%"><div align="right"><span class="text1"> <strong>Contact 
                Name:&nbsp;</strong></span></div></td>
            <td colspan="2"><span class="text1"> 
              <input name="contactname" size=35>
              <input type="hidden" name="contactname_required" size="35" maxlength="60" value="Please enter Contact Name.">
              <span class="text1"><font color="#FF0000">*Required</font></span></span></td>
          </tr>
          <tr> 
            <td width="27%"><div align="right"><span class="text1"> <strong>Title:&nbsp;</strong></span></div></td>
            <td colspan="2"><span class="text1"> 
              <input name="title" size=35>
              </span></td>
          </tr>
          <tr> 
            <td width="27%"><div align="right"><span class="text1"> <strong>Professional 
                affiliation, if any (e.g., ASLA, AIA):&nbsp;</strong></span></div></td>
            <td colspan="2"> <input name="affiliation" size=35> </td>
          </tr>
          <tr> 
            <td width="27%"><div align="right"><span class="text1"><strong>Firm/Organization/School:&nbsp;</strong></span></div></td>
            <td colspan="2"><input name="firm" size=35></td>
          </tr>
          <tr> 
            <td width="27%"><div align="right"><span class="text1"> <strong>Number 
                of people for tour:&nbsp;</strong></span></div></td>
            <td colspan="2"><input name="TourNum" size=35> <span class="text1"> 
              </span><font color="#FF0000">maximum 30 people</font></td>
          </tr>
          <tr> 
            <td colspan="3">&nbsp;</td>
          </tr>
          <tr> 
            <td> <div align="right"><span class="text1"> <strong>Address: </strong></span></div></td>
            <td colspan="2"><span class="text1"> 
              <input name="address" size=45>
              </span></td>
          </tr>
          <tr> 
            <td> <div align="right"><span class="text1"> <strong>City:</strong></span></div></td>
            <td colspan="2"><span class="text1"> 
              <input name="city" size=35>
              </span></td>
          </tr>
          <tr> 
            <td> <div align="right"><span class="text1"> <strong>State:</strong></span></div></td>
            <td width="8%"><span class="text1"> 
              <input name="state" size=2>
              </span></td>
            <td width="65%"><span class="text1"> <strong>Zip:</strong> 
              <input name="zip" size=10>
              </span></td>
          </tr>
          <tr> 
            <td> <div align="right"><span class="text1"><strong>Phone:</strong></span></div></td>
            <td colspan="2"><span class="text1"> 
              <input name="phone" size=35>
              <span class="text1"></span></span></td>
          </tr>
          <tr> 
            <td> <div align="right"><span class="text1"> <strong>E-mail Address:</strong></span></div></td>
            <td colspan="2"><span class="text1"> 
              <input name="username" size=35>
              <font color="#FF0000">*Required</font></span></td>
          </tr>
          <tr> 
            <td><div align="right"><span class="text1"><strong>Please input a 
                date: </strong></span></div></td>
            <td colspan="2"><span class="text1"> 
              <input onClick="ds_sh(this);" name="tourdate" readonly="readonly" style="cursor: text" />
              </span><font color="#FF0000">Tours are only available on Tuesdays, Wednesdays and Thursdays. </font></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr> 
            <td><div align="right"><span class="text1"> <strong>Day and Time</strong></span></div></td>
            <td colspan="2"> <select name="dayandtime" id="dayandtime">
                <option value="Tuesday 10:00 AM">Tuesday 10:00 AM</option>
                <option value="Tuesday 11:00 AM">Tuesday 11:00 AM</option>
                <option value="Tuesday 12:00 PM">Tuesday 12:00 PM</option>
                <option value="Tuesday 1:00 PM">Tuesday 1:00 PM</option>
                <option value="Tuesday 2:00 PM">Tuesday 2:00 PM</option>
				<option value="Wednesday 10:00 AM">Wednesday 10:00 AM</option>
                <option value="Wednesday 11:00 AM">Wednesday 11:00 AM</option>
                <option value="Wednesday 12:00 PM">Wednesday 12:00 PM</option>
                <option value="Wednesday 1:00 PM">Wednesday 1:00 PM</option>
                <option value="Wednesday 2:00 PM">Wednesday 2:00 PM</option>
                <option value="Thursday 10:00 AM">Thursday 10:00 AM</option>
                <option value="Thursday 11:00 AM">Thursday 11:00 AM</option>
                <option value="Thursday 12:00 PM">Thursday 12:00 PM</option>
                <option value="Thursday  1:00 PM">Thursday 1:00 PM</option>
                <option value="Thursday  2:00 PM">Thursday 2:00 PM</option>
              </select> <font color="#FF0000">Please select a day and time from 
              drop down list. </font></td>
          </tr>
         
          <tr> 
            <td valign="top"> <div align="right"><span class="text1"><strong>Comments/Special 
                Requests:</strong></span></div></td>
            <td colspan="2"><span class="text1"> 
              <textarea name="comments" cols="35"></textarea>
              <span class="text1"></span></span></td>
          </tr>
        </table>

<P><CENTER><INPUT TYPE="reset" VALUE="CLEAR">&nbsp;&nbsp; <INPUT TYPE="submit" VALUE="SUBMIT"></center></P>
</FORM>
</td>
</tr>
</table>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." :
"http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost +
"google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-4677685-1");
pageTracker._trackPageview();
</script>
</body>
</HTML>