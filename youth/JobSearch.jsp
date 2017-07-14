<%@page import="java.sql.Connection"%>
<%@page import="com.DBConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>YES</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
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
			<li class="first current_page_item"><a href="SearchJob.jsp">Search Jobs</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
		</center></ul>		<br class="clearfix" />
				</div>
			
	<div id="splash">
		<img class="pic" src="images/investor.jpg" width="870" height="230" alt="" />
	</div>	
			<center>
<br/>
   <h2><b>Job Search Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table border="1" align="center" width="100%" >
			 
         
		  <tr><th><font size="" color="black">Company ID</th><th><font size="" color="black">Job Description</th><th><font size="" color="black">Eligibility</th><th><font size="" color="black">Apply Now</th><th><font size="" color="black">Job Type</th>
		  <th><font size="" color="black">Interview Date</th><th><font size="" color="black">Posted Date</th>
		  <%
try{
				String type = request.getParameter("t1");
			  Connection con = DBConnection.getCon();
			  Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from addjobs where job_type='"+type+"'");
			while(rs.next()){%>
			<tr><td><font size="" color="black"><%=rs.getString(1)%></td>
			<td><font size="" color="black"><%=rs.getString(2)%></td>
			<td><font size="" color="black"><%=rs.getString(3)%></td>
			<td><font size="" color="black"><%=rs.getString(4)%></td>
			<td><font size="" color="black"><%=rs.getString(5)%></td>
			<td><font size="" color="black"><%=rs.getString(6)%></td>
			<td><a href="Apply?t1=<%=rs.getString(1)%>"><font size="" color="black">Click Here</a></td>
			<%}
		  }catch(Exception e){
			  e.printStackTrace();
		  }%>
			</table>
				</div>	
					
				</div>
				
	</body>
</html>