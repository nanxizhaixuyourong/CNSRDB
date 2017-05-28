<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<html>
<head>
<title>更改用户</title>
<link href="base.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="header.jsp"%>
<div align="center"><br>
<%
		String id = new String(request.getParameter("id").trim().getBytes("ISO-8859-1"));
		String name = new String(request.getParameter("name").trim().getBytes("ISO-8859-1"));
		String password = new String(request.getParameter("password").trim().getBytes("ISO-8859-1"));
		
		
		DBSQL dbsm = new DBSQL();
		String sql=new String();
		
		if(session.getValue("delType").toString().equals("teacher"))
			sql=sql="UPDATE teacher SET CN='"+name+"',password='"+password+"' WHERE JNO='"+id+"'";
		else if(session.getValue("delType").toString().equals("Student_in"))
			sql=sql="UPDATE Student_in SET Sname='"+name+"',Spassword='"+password+"' WHERE Sno='"+id+"'";
		else if(session.getValue("delType").toString().equals("Student_out"))
			sql=sql="UPDATE Student_out SET Sname='"+name+"',Spassword='"+password+"' WHERE Sno='"+id+"'";
		
		dbsm.setSqlStr(sql);
		dbsm.Update();
		dbsm.close();  
%>
<if condition="$id eq 1">
<meta http-equiv="refresh" content="5; URL=user_00.jsp">

<font color="#FF0000">更改成功，5秒后自动跳转！</font>
</if>
<foreach name="rows" item="val">
<hr />
<a href="user_00.jsp">点击返回继续更改！</a>
</foreach>
<%@ include file="footer.jsp"%>
</body>
</html>
