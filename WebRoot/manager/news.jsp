<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
  <head>
		<title>新闻动态</title>
		<link rel="stylesheet"/>
  </head>
  <body>
	<p><%@ include file="header.jsp"%> </p><br>
	
	<%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM news where type='0'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
	%>
	<br>
	<div class="centerdiv">
	<table border="1" cellpadding="0" cellspacing="0"  width="1000px" class="imagetable">
       <tr>
    <td height="35" align="center"><span style="font-size:25px;">新闻名</big></td>
  </tr>
<%     while(rs.next()) 
		{
%>
  	<tr>
	<td height="32"><a href="newsdetail.jsp?name=<%=rs.getString("name")%>"><%=rs.getString("name")%> </a> </td>
  	</tr>
  <%}%>
	</table></div>
	<p><%@ include file="footer.jsp"%> </p>
  </body>
</html>
