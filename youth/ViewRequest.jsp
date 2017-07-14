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
			<li class="first current_page_item"><a href="AddJob.jsp">Add Jobs</a></li>
			<li><a href="ViewRequest.jsp">View Job Request</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
		</center></ul>		<br class="clearfix" />
				</div>
			
	<div id="splash">
		<img class="pic" src="images/investor.jpg" width="870" height="230" alt="" />
	</div>	
			<center>
<br/>
   <h2><b>View Job Request Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table border="1" align="center" width="100%" >
			 
         <tr><th><font size="" color="black">Student Id</th>
		  <th><font size="" color="black">Student Name</th><th><font size="" color="black">Gender</th><th><font size="" color="black">Birth Date</th><th><font size="" color="black">Qualification</th>
		  <th><font size="" color="black">Passout Year</th><th><font size="" color="black">Grade</th>
		  <th><font size="" color="black">Contact No</th>
		  <th><font size="" color="black">Email</th>
		  <th><font size="" color="black">Address</th>
		  <th><font size="" color="black">Company ID</th>
		  <th><font size="" color="black">Applied Date</th>
		  <th><font size="" color="black">Status</th>
		  <%
try{
				String company = session.getAttribute("user").toString();
			  Connection con = DBConnection.getCon();
			  Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from student,application where application.company_id='"+company+"' and student.student_id=application.student_id");
			while(rs.next()){%>
			<tr><td><font size="" color="black"><%=rs.getString(1)%></td>
			<td><font size="" color="black"><%=rs.getString(2)%></td>
			<td><font size="" color="black"><%=rs.getString(3)%></td>
			<td><font size="" color="black"><%=rs.getString(4)%></td>
			<td><font size="" color="black"><%=rs.getString(5)%></td>
			<td><font size="" color="black"><%=rs.getString(6)%></td>
			<td><font size="" color="black"><%=rs.getString(7)%></td>
			<td><font size="" color="black"><%=rs.getString(8)%></td>
			<td><font size="" color="black"><%=rs.getString(9)%></td>
			<td><font size="" color="black"><%=rs.getString(10)%></td>
			<td><font size="" color="black"><%=rs.getString(13)%></td>
			<td><font size="" color="black"><%=rs.getString(15)%></td>
			<td><font size="" color="black"><%=rs.getString(16)%></td>
			<%}
		  }catch(Exception e){
			  e.printStackTrace();
		  }%>
			</table>
				</div>	
					
				</div>
				
	</body>
</html>