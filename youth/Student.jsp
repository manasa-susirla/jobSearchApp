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
	alert("Please Enter User ID");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Password");
	formObj.t2.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
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
<form name="f1" method="post" action="Student" onsubmit="return validate(this);"><br/>
   <h5><b>Job Seeker Login Screen</b></h5>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" >
			 <tr><td><b>Username</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size=30/></td></tr>
         
		  <tr><td><b>Password</b></td><td><input type="password" name="t2" style="font-family: Comic Sans MS" size=30/></td></tr>
         
			<tr><td></td><td><input type="submit" value="Login">
			<a href="StudentRegister.jsp">Register&nbsp;Here</a></td>
			</table>
				</div>	
					
				</div>
				
	</body>
</html>