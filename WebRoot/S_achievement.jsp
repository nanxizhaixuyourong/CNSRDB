<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
  <head>
		<title>科研成果</title>
		<link rel="stylesheet" href="base.css"/>
  </head>
  <body>
	<p><%@ include file="header.jsp"%> </p>
	<%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM S_achievement";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
	%><br>
	<div class="centerdiv">
	<table align="center"  border="1" cellpadding="0" cellspacing="0" width="700px" class="imagetable">
      	<tr>
    		<td height="26"><div align="center">成果名称</div></td>
    		<td height="26"><div align="center">奖项</div></td>
    		<td height="26"><div align="center">获得年份</div></td>
  		</tr>
<%     while(rs.next()) 
		{
%>
  		<tr>
			<td height="32"><div align="center"><%=rs.getString("Saname")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Saprize")%></div></td>
  			<%	
  				String  s=rs.getString("Sayear");
  				if(s==null)
  					s="";
  			%>
  			<td height="32"><div align="center"><%=s%></div></td>
  		</tr>
  <%}%>
</table></div>
<p>&nbsp;</p>
  </body>
</html>
