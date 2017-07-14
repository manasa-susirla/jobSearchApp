package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Calendar;
import java.sql.Statement;
import java.util.ArrayList;
import java.io.FileWriter;
public class DBConnection{
    private static Connection con;
	
public static Connection getCon()throws Exception {
	Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost/youth","root","root");
    return con;
}
public static String addCompany(String input[])throws Exception{
	String msg="no";
	String id = "";
    con = getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select count(*) from company");
	if(rs.next()){
		id = input[0]+"-"+(rs.getInt(1)+1);
	}
	java.util.Date d1 = new java.util.Date(input[2]);
	java.sql.Date d2 = new java.sql.Date(d1.getTime());
	PreparedStatement stat=con.prepareStatement("insert into company values(?,?,?,?,?,?,?,?,?)");
	stat.setString(1,id);
	stat.setString(2,input[0].trim());
	stat.setString(3,input[1].trim());
	stat.setDate(4,d2);
	stat.setString(5,input[3].trim());
	stat.setString(6,input[4].trim());
	stat.setString(7,input[5].trim());
	stat.setString(8,input[6].trim());
	stat.setString(9,input[7].trim());
	int i=stat.executeUpdate();
	stat.close();
	if(i > 0)
		msg="success,"+id;
	rs.close();stmt.close();con.close();
	return msg;
}
public static String addStudent(String input[])throws Exception{
	String msg="no";
	String id = "";
    con = getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select count(*) from student");
	if(rs.next()){
		id = input[0]+"-"+(rs.getInt(1)+1);
	}
	java.util.Date d1 = new java.util.Date(input[2]);
	java.sql.Date d2 = new java.sql.Date(d1.getTime());
	PreparedStatement stat=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?,?,?)");
	stat.setString(1,id);
	stat.setString(2,input[0].trim());
	stat.setString(3,input[1].trim());
	stat.setDate(4,d2);
	stat.setString(5,input[3].trim());
	stat.setString(6,input[4].trim());
	stat.setString(7,input[5].trim());
	stat.setString(8,input[6].trim());
	stat.setString(9,input[7].trim());
	stat.setString(10,input[8].trim());
	stat.setString(11,input[9].trim());
	stat.setString(12,input[10].trim());
	int i=stat.executeUpdate();
	stat.close();
	if(i > 0)
		msg="success,"+id;
	rs.close();stmt.close();con.close();
	return msg;
}
public static String addJob(String input[])throws Exception{
	String msg="no";
	con = getCon();
	java.util.Date d1 = new java.util.Date();
	java.sql.Date d2 = new java.sql.Date(d1.getTime());
	java.util.Date d3 = new java.util.Date(input[4]);
	java.sql.Date d4 = new java.sql.Date(d3.getTime());
	PreparedStatement stat=con.prepareStatement("insert into addjobs values(?,?,?,?,?,?)");
	stat.setString(1,input[0].trim());
	stat.setString(2,input[1].trim());
	stat.setString(3,input[2].trim());
	stat.setString(4,input[3].trim());
	stat.setDate(5,d4);
	stat.setDate(6,d2);
	int i=stat.executeUpdate();
	stat.close();
	if(i > 0)
		msg="success";
	con.close();
	return msg;
}
public static String apply(String company,String student)throws Exception{
	String msg="no";
	con = getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select status from application where company_id='"+company+"' and student_id='"+student+"'");
	if(rs.next()){
		msg = "You already applied for this job";
	}else{
		java.util.Date d1 = new java.util.Date();
		java.sql.Date d2 = new java.sql.Date(d1.getTime());
		PreparedStatement stat=con.prepareStatement("insert into application values(?,?,?,?)");
		stat.setString(1,company);
		stat.setString(2,student);
		stat.setDate(3,d2);
		stat.setString(4,"applied");
		int i=stat.executeUpdate();
		stat.close();
		if(i > 0)
			msg="success";
	}
	rs.close();stmt.close();con.close();
	return msg;
}
public static String studentLogin(String user,String pass) throws Exception {
	String msg = "fail";
    con = getCon();
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select student_id from student where username='"+user+"' and password='"+pass+"'");
    if(rs.next()){
		msg = rs.getString(1);
	}
    rs.close();stmt.close();con.close();
    return msg;
}
public static String companyLogin(String user,String pass) throws Exception {
	String msg = "fail";
    con = getCon();
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select company_id from company where username='"+user+"' and password='"+pass+"'");
    if(rs.next()){
		msg = rs.getString(1);
	}
    rs.close();stmt.close();con.close();
    return msg;
}

}
