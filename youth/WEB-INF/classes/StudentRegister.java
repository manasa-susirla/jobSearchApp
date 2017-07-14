package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class StudentRegister extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String name=request.getParameter("t1").trim();
	String gender=request.getParameter("t2").trim();
	String date=request.getParameter("t3").trim();
	String qualification=request.getParameter("t4").trim();
	String passout=request.getParameter("t5").trim();
	String grade=request.getParameter("t6").trim();
	String contact=request.getParameter("t7").trim();
	String email=request.getParameter("t8").trim();
	String address=request.getParameter("t9").trim();
	String user=request.getParameter("t10").trim();
	String pass=request.getParameter("t11").trim();
	try{
		String input[]={name,gender,date,qualification,passout,grade,contact,email,address,user,pass};
		String msg[] = DBConnection.addStudent(input).split(",");
		if(msg[0].equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("StudentRegister.jsp?t1=Student details added. Student ID : "+msg[1]);
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher("StudentRegister.jsp?t1=Error In Student Record");
			rd.forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
