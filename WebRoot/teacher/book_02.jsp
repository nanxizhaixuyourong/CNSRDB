<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>图书借阅</title>
<link href="base1.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="header.jsp"%>
<%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM book ";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
%>
<br>
<div class="centerdiv">
<table border="1" cellpadding="0" cellspacing="0"  width="1000px" class="imagetable">
  <tr>
    <td height="26"><div align="center">编号</div></td>
    <td ><div align="center">书名</div></td>
    <td ><div align="center">作者</div></td>
    <td ><div align="center">出版年月</div></td>
    <td ><div align="center">状态</div></td>
    <td ><div align="center">操作</div></td>
  </tr>
<%     
		String zhuangtai;
		while(rs.next()) 
		{
%>
  <tr>
    <td height="32"><div align="center"><%=rs.getString("bno")%></div></td>
    <td><div align="center"><%=rs.getString("bname")%></div></td>
    <td><div align="center"><%=rs.getString("bauthor")%></div></td>
    <td><div align="center"><%=rs.getString("byear")%></div></td>
    <td><div align="center"><%=rs.getString("bposition")%> </div></td>
    <td><div align="center"><a href="book_delete.jsp?bno=<%=rs.getString("bno")%>">删除</a></div></td>
  </tr>
  <%}%>
</table>
<p>&nbsp;</p>
<%@ include file="footer.jsp"%>
</body>
</html>
