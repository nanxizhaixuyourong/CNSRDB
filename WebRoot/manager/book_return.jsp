<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>图书归还</title>
<link href="base2.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="header.jsp"%><br>
<%
		String userid=session.getValue("UserID").toString();
		DBSQL dbsm = new DBSQL();	
		String sql="SELECT book.bno,bname,bauthor,btime FROM book,borrow where bposition='借出' AND Sname='"+userid+"'";
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
    <td ><div align="center">借阅时间</div></td>
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
    <td><div align="center"><%=rs.getString("btime")%></div></td>
    <td><div align="center"><a href="book_byreturn.jsp?bno=<%=rs.getString("bno")%>">还书</a></div></td>
  </tr>
  <%}%>
</table>
</div>
<p>&nbsp;</p>
<%@ include file="footer.jsp"%>
</body>
</html>
