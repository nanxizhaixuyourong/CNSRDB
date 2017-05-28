<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
  <head>
		<title>科研著作</title>
		<link rel="stylesheet" href="base1.css"/>
  </head>
  <body>
	<p><%@ include file="header.jsp"%> </p>
	<%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM S_copyright";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
	%>	<br>
	<div class="centerdiv">
	<table border="1" cellpadding="0" cellspacing="0"  width="1000px" class="imagetable">
      	<tr>
    		<td height="26"><div align="center">编号</div></td>
    		<td height="26"><div align="center">登记号</div></td>
    		<td height="26"><div align="center">著作权人</div></td>
    		<td height="26"><div align="center">软件名称</div></td>
  		</tr>
<%     while(rs.next()) 
		{
%>
  		<tr>
			<td height="32"><div align="center"><%=rs.getString("Scno")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Screg")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Scpeople")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Scname")%></div></td>
  		</tr>
  <%}%>
</table></div>
<p>&nbsp;</p>
  </body>
</html>
