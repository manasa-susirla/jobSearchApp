package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Student extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	String user=request.getParameter("t1").trim();
	String pass=request.getParameter("t2").trim();
	try{
		String msg = DBConnection.studentLogin(user,pass);
		if(!msg.equals("fail")){
			HttpSession session=request.getSession();
			session.setAttribute("user",msg);
			response.sendRedirect("StudentScreen.jsp");
		}else{
			RequestDispatcher rd=request.getRequestDispatcher("Student.jsp?t1=invalid username or password");
			rd.forward(request, response);
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
