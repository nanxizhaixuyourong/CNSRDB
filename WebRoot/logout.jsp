<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="javas.*"%>

<%
	String usertype=session.getValue("UserType").toString();
	String userid=session.getValue("UserID").toString();
	String InTime=session.getValue("InTime").toString();
	Date out_time=new Date();
	out_time.getDate();
	String s=out_time.toString();
	
	String sql="INSERT InOut VALUES ('"+userid+"','"+InTime+"','"+s+"')";
	DBSQL dbsm=new DBSQL();
	dbsm.setSqlStr(sql);
	dbsm.Update();
	
	ResultSet rs;
  	response.sendRedirect("index.jsp");

%>
