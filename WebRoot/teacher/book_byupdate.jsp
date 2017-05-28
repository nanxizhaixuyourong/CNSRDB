<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<html>
<head>
<title>更改图书</title>
<link href="base1.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="header.jsp"%>
<div align="center"><br>
<%
		String bno = new String(request.getParameter("bno").trim().getBytes("ISO-8859-1"));
		String bname = new String(request.getParameter("bname").trim().getBytes("ISO-8859-1"));
		String bauthor = new String(request.getParameter("bauthor").trim().getBytes("ISO-8859-1"));
		String byear = new String(request.getParameter("byear").trim().getBytes("ISO-8859-1"));
		String bposition = new String(request.getParameter("bposition").trim().getBytes("ISO-8859-1"));

		DBSQL dbsm = new DBSQL();
		String sql="UPDATE book SET bname='"+bname+"',bauthor='"+bauthor+"',byear='"+bposition+"' WHERE bno='"+bno+"'";
		dbsm.setSqlStr(sql);
		dbsm.Update();
		dbsm.close();  
%>
<if condition="$id eq 1">
<meta http-equiv="refresh" content="5; URL=book_add.jsp">

<font color="#FF0000">更改成功，5秒后自动跳转！</font>
</if>
<foreach name="rows" item="val">
<hr />
<a href="book_add.jsp">点击返回继续更改！</a>
</foreach>
<%@ include file="footer.jsp"%>
</body>
</html>
