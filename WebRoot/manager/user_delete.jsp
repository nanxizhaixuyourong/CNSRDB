<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<html>
<head>
<title>删除用户</title>
<link href="base.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center"><br>
<%
		String id = new String(request.getParameter("id").trim().getBytes("ISO-8859-1"));
		DBSQL dbsm = new DBSQL();
		String sql="DELETE FROM teacher WHERE JNO='"+id+"'";
		dbsm.setSqlStr(sql);
		dbsm.Update();
		
		sql="DELETE FROM Student_in WHERE Sno='"+id+"'";
		dbsm.setSqlStr(sql);
		dbsm.Update();

		
		sql="DELETE FROM Student_out WHERE Sno='"+id+"'";
		dbsm.setSqlStr(sql);
		dbsm.Update();
		dbsm.close();
		  
%>
<if condition="$id eq 1">
<meta http-equiv="refresh" content="5; URL=user_00.jsp">

<font color="#FF0000">删除成功，5秒后自动跳转！</font>
</if>
<foreach name="rows" item="val">
<hr />
<a href="user_00.jsp">点击返回！</a>
</foreach>
</body>
</html>
