<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="javas.*"%>

<%
	String userid = new String(request.getParameter("u").trim().getBytes("ISO-8859-1"));
	String password = new String(request.getParameter("p").trim());
	String type = new String(request.getParameter("types").trim().getBytes("ISO-8859-1"));
	
	Date in_time=new Date();
	in_time.getDate();
	String time=in_time.toString();
	
	String sql;
	String s;
	DBSQL dbsm=new DBSQL();
	ResultSet rs;
 	if(type.equals("student"))
 	{
 		sql="SELECT Spassword FROM Student_in WHERE Sno='"+userid+"'";
 		dbsm.setSqlStr(sql);
		dbsm.Query();
		rs =  dbsm.getRs();
		if (!rs.next()) 
		{
			sql="SELECT Spassword FROM Student_out WHERE Sno='"+userid+"'";
			dbsm.setSqlStr(sql);
			dbsm.Query();
			rs =  dbsm.getRs();
			if (rs.next()) 
			{
				if(rs.getString("Spassword").equals(password))
				{
				request.getSession(true);
				session.putValue("InTime", time);
				session.putValue("UserType","Student_out");
				session.putValue("UserID",userid);
				response.sendRedirect("./student/studentindex.jsp");
				return;
				}
			}
		}
		else
		{
			if(rs.getString("Spassword").equals(password))
			{
				request.getSession(true);
				session.putValue("InTime", time);
				session.putValue("UserType","Student_in");
				session.putValue("UserID",userid);
				response.sendRedirect("./student/studentindex.jsp");
				return;
			}
		}
 	}
 	else if(type.equals("teacher"))
 	{
 		sql="SELECT password FROM Teacher WHERE JNO='"+userid+"'";
 		dbsm = new DBSQL();
 		dbsm.setSqlStr(sql);
		dbsm.Query();
		rs =  dbsm.getRs();
		if(rs.next())
		{
			if(rs.getString("password").equals(password))
			{
				request.getSession(true);
				session.putValue("InTime", time);
				session.putValue("UserType","teacher");
				session.putValue("UserID",userid);
				response.sendRedirect("./teacher/teacherindex.jsp");
				return;
			}
		}
 	}
 	else if(type.equals("manger"))
 	{
 		sql="SELECT mpassword FROM manger WHERE mno='"+userid+"'";
 		dbsm = new DBSQL();
 		dbsm.setSqlStr(sql);
		dbsm.Query();
		rs =  dbsm.getRs();
		if(rs.next())
		{
			if(rs.getString("mpassword").equals(password))
			{
				request.getSession(true);
				session.putValue("InTime", time);
				session.putValue("UserType","manger");
				session.putValue("UserID",userid);
				response.sendRedirect("./manager/managerindex.jsp");
				return;
			}
		}
 	}
	
  	String errmsg="error1";
  	response.sendRedirect("login.jsp?errmsg="+errmsg);

%>
