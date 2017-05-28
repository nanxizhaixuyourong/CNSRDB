<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
  <head>
		<title>教学论文</title>
		<link rel="stylesheet" href="base0.css"/>
  </head>
  <body>
	<p><%@ include file="header.jsp"%> </p>
	<%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM T_paper";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
	%><br>
	<div class="centerdiv">
	<table align="center"  border="1" cellpadding="0" cellspacing="0" width="1000px" class="imagetable">
      	<tr>
    		<td height="26"><div align="center">年份</div></td>
    		<td height="26"><div align="center">论文题目</div></td>
    		<td height="26"><div align="center">期刊/会议名称</div></td>
    		<td height="26"><div align="center">刊号/时间</div></td>
  		</tr>
<%     while(rs.next()) 
		{
%>
  		<tr>
			<td height="32"><div align="center"><%=rs.getString("Tpyear")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Tpname")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Tmname")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Tmno")%></div></td>
  		</tr>
  <%}%>
</table></div>
<p>&nbsp;</p>
  </body>
</html>
