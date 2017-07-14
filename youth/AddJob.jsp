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
	alert("Please Enter job description");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter interview date");
	formObj.t4.focus();
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
			<li class="first current_page_item"><a href="AddJob.jsp">Add Jobs</a></li>
			<li><a href="ViewRequest.jsp">View Job Request</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
		</center></ul>			<br class="clearfix" />
				</div>
			
	<div id="splash">
		<img class="pic" src="images/investor.jpg" width="870" height="230" alt="" />
	</div>	
			<center>
<form name="f1" method="post" action="AddJob" onsubmit="return validate(this);"><br/>
   <h2><b>Add Job Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" >
			 <tr><td><b>Job&nbsp;Description</b></td><td><textarea name="t1" rows="5" cols="40"></textarea></td></tr>
         
		  <tr><td><b>Eligibility</b></td><td><select name="t2">
		  <option value="Btech">Btech</option>
		  <option value="Mtech">Mtech</option>
		  <option value="Bsc">Bsc</option>
		  <option value="Bcom">Bcom</option>
		  <option value="Msc">Msc</option>
		  <option value="Mcom">Mcom</option>
		  <option value="MBA">MBA</option>
		  <option value="MCA">MCA</option>
		  </select>
		  </td></tr>

		  
		  <tr><td><b>Job Type</b></td><td><select name="t3">
		  <option value="Hardware">Hardware</option>
		  <option value="Software">Software</option>
		  </select>
		  </td></tr>

		  <tr><td><b>Interview&nbsp;Date</b></td>
		  <td><input type="text" name="t4" style="font-family: Comic Sans MS" size="20" id="demo1"/>
		  <a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td></tr>

		
         
			<tr><td></td><td><input type="submit" value="Add Job">
			</td>
			</table>
				</div>	
					
				</div>
				
	</body>
</html>