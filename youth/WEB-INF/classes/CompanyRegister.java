package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class CompanyRegister extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String name=request.getParameter("t1").trim();
	String type=request.getParameter("t2").trim();
	String date=request.getParameter("t3").trim();
	String email=request.getParameter("t4").trim();
	String contact=request.getParameter("t5").trim();
	String address=request.getParameter("t6").trim();
	String user=request.getParameter("t7").trim();
	String pass=request.getParameter("t8").trim();
	try{
		String input[]={name,type,date,email,contact,address,user,pass};
		String msg[] = DBConnection.addCompany(input).split(",");
		if(msg[0].equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("CompanyRegister.jsp?t1=Company details added. Company ID : "+msg[1]);
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher("CompanyRegister.jsp?t1=Error In company Record");
			rd.forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
