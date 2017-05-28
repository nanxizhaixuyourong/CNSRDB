<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
  <head>
		<title>通知通告</title>
		<link rel="stylesheet" href="base2.css"/>
  </head>
  <body>
	<p><%@ include file="header.jsp"%> </p>
	<%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM news where type='1'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
	%>
	<br>
	<div class="centerdiv">
	<table border="1" cellpadding="0" cellspacing="0"  width="1000px" class="imagetable">
       <tr>
    <td height="26"><div align="center">通知名</div></td>
  </tr>
<%     while(rs.next()) 
		{
%>
  	<tr>
	<td height="32"><a href="newsdetail.jsp?name=<%=rs.getString("name")%>"><%=rs.getString("name")%> </a> </td>
  	</tr>
  <%}%>
</table></div>
<p>&nbsp;</p>
  </body>
</html>
