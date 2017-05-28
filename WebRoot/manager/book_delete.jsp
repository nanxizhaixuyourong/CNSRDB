<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<html>
<head>
<title>删除图书</title>
<link href="base2.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center"><br>
<%
		String bno = new String(request.getParameter("bno").trim().getBytes("ISO-8859-1"));
		DBSQL dbsm = new DBSQL();
		String sql="DELETE FROM book WHERE bno='"+bno+"'";
		dbsm.setSqlStr(sql);
		dbsm.Update();
		dbsm.close();  
%>
<if condition="$id eq 1">
<meta http-equiv="refresh" content="5; URL=book_02.jsp">

<font color="#FF0000">删除成功，5秒后自动跳转！</font>
</if>
<foreach name="rows" item="val">
<hr />
<a href="book_02.jsp">点击返回继续删除！</a>
</foreach>
</body>
</html>
