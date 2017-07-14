package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class AddJob extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String job=request.getParameter("t1").trim();
	String eligibility=request.getParameter("t2").trim();
	String type=request.getParameter("t3").trim();
	String date=request.getParameter("t4").trim();
	HttpSession session=request.getSession();
	String id = session.getAttribute("user").toString();
	try{
		String input[]={id,job,eligibility,type,date};
		String msg = DBConnection.addJob(input);
		if(msg.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("AddJob.jsp?t1=Job details added");
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher("AddJob.jsp?t1=Error In adding job details");
			rd.forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
