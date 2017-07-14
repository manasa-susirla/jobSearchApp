<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>YES</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter student name");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter qualification");
	formObj.t4.focus();
	return false;
	}
	if(formObj.t7.value.length==0)
	{
	alert("Please Enter contact no");
	formObj.t7.focus();
	return false;
	}
	if(formObj.t8.value.length==0)
	{
	alert("Please Enter email id");
	formObj.t8.focus();
	return false;
	}
	if(formObj.t9.value.length==0)
	{
	alert("Please Enter address");
	formObj.t9.focus();
	return false;
	}
	if(formObj.t10.value.length==0)
	{
	alert("Please Enter username");
	formObj.t10.focus();
	return false;
	}
	if(formObj.t11.value.length==0)
	{
	alert("Please Enter password");
	formObj.t11.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
	<script language="javascript" type="text/javascript" src="datetimepicker.js"></script>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="" color="black">YOUTH EMPOWERMENT SERVICES</font></center></h1>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul><center>
			<li class="first current_page_item"><a href="index.jsp"><font size="" color="pink">Home</font></a></li>
			<li><a href="Company.jsp"><font size="" color="pink">Employment Service</font></a></li>
			<li><a href="Student.jsp"><font size="" color="pink">Job Seeker</font></a></li>
			
		</center></ul>				<br class="clearfix" />
				</div>
			
	<div id="splash">
		<img class="pic" src="images/investor.jpg" width="870" height="230" alt="" />
	</div>	
			<center>
<form name="f1" method="post" action="StudentRegister" onsubmit="return validate(this);"><br/>
   <h2><b>Job Seeker Register Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" >
			 <tr><td><b>Student&nbsp;Name</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size=30/></td></tr>
         
		  <tr><td><b>Gender</b></td><td><select name="t2">
		  <option value="Male">Male</option>
		  <option value="Female">Female</option>
		  </select>
		  </td></tr>

		  <tr><td><b>Birth&nbsp;Date</b></td>
		  <td><input type="text" name="t3" style="font-family: Comic Sans MS" size="20" id="demo1"/>
		  <a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td></tr>

		<tr><td><b>Qualification</b></td><td><input type="text" name="t4" style="font-family: Comic Sans MS" size=30/></td></tr>

		<tr><td><b>Passout Year</b></td><td><select name="t5">
		<%for(int i=1940;i<=2050;i++){%>
		 <option value="<%=i%>"><%=i%></option>
		 <%}%>
		</select>
		</td></tr>

		<tr><td><b>Grade</b></td><td><select name="t6">
		 <option value="Distinction">Distinction</option>
		 <option value="First">First</option>
		 <option value="Second">Second</option>
		 <option value="Third">Third</option>
		</select>
		</td></tr>

		<tr><td><b>Contact No</b></td><td><input type="text" name="t7" style="font-family: Comic Sans MS" size=30/></td></tr>

		<tr><td><b>Email</b></td><td><input type="text" name="t8" style="font-family: Comic Sans MS" size=30/></td></tr>

		<tr><td><b>Address</b></td><td><input type="text" name="t9" style="font-family: Comic Sans MS" size=30/></td></tr>

		<tr><td><b>Username</b></td><td><input type="text" name="t10" style="font-family: Comic Sans MS" size=30/></td></tr>

		<tr><td><b>Password</b></td><td><input type="password" name="t11" style="font-family: Comic Sans MS" size=30/></td></tr>
         
			<tr><td></td><td><input type="submit" value="Register">
			</td>
			</table>
				</div>	
					
				</div>
				
	</body>
</html>