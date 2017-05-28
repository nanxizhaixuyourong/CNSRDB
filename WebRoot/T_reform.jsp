<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
  <head>
		<title>教学教改</title>
		<link rel="stylesheet" href="base.css"/>
  </head>
  <body>
	<p><%@ include file="header.jsp"%> </p>
	<%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM T_reform";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
	%><br>
	<div class="centerdiv">
	<table align="center"  border="1" cellpadding="0" cellspacing="0" width="700px" class="imagetable">
      	<tr>
    		<td height="26"><div align="center">项目名称</div></td>
    		<td height="26"><div align="center">说明</div></td>
    		<td height="26"><div align="center">获批年份</div></td>
  		</tr>
<%     while(rs.next()) 
		{
%>
  		<tr>
			<td height="32"><div align="center"><%=rs.getString("Trname")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Trprize")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Tryear")%></div></td>
  		</tr>
  <%}%>
</table></div>
<p>&nbsp;</p>
  </body>
</html>
