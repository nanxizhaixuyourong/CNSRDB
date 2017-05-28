<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
  <head>
		<title>科研专利</title>
		<link rel="stylesheet" href="base0.css"/>
  </head>
  <body>
	<p><%@ include file="header.jsp"%> </p>
	<%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM S_patent";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
	%><br>
	<div class="centerdiv">
	<table align="center"  border="1" cellpadding="0" cellspacing="0" width="1000px" class="imagetable">
      	<tr>
    		<td height="26"><div align="center">申请号/专利号</div></td>
    		<td height="26"><div align="center">申请（专利权）人</div></td>
    		<td height="26"><div align="center">发明创造名称</div></td>
  		</tr>
<%     while(rs.next()) 
		{
%>
  		<tr>
			<td height="32"><div align="center"><%=rs.getString("Spno")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Sppeople")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Spname")%></div></td>
  		</tr>
  <%}%>
</table></div>
<p>&nbsp;</p>
  </body>
</html>
