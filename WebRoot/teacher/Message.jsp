<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
  <head>
	<title>资料</title>
	<link rel="stylesheet" href="base0.css"/>
  </head>
  <body>
	<p><%@ include file="header.jsp"%> </p><br>

	<%
		String type = new String(request.getParameter("type").trim().getBytes("ISO-8859-1"));
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM Message where type='"+type+"'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
	%>
	<br>
	<div class="centerdiv">
	<table border="1" cellpadding="0" cellspacing="0"  width="1000px" class="imagetable">
       <tr>
  </tr>
<%     while(rs.next()) 
		{
%>
  	<tr>
	<td height="32"><%=rs.getString("name")%></td>
	<td><a href=<%=rs.getString("lujing")%>>点击下载</a></td>
  	</tr>
  <%}%>
	</table></div>
	<p><%@ include file="footer.jsp"%> </p>
  </body>
</html>
