<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
  <head>
		<title>科研论文</title>
		<link rel="stylesheet" href="base0.css"/>
  </head>
  <body>
	<p><%@ include file="header.jsp"%> </p>
	<%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM S_paper";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
	%><br>
	<div class="centerdiv">
	<table align="center"  border="1" cellpadding="0" cellspacing="0" width="1000px" class="imagetable">
      	<tr>
    		<td height="26"><div align="center">作者</div></td>
    		<td height="26"><div align="center">论文题目</div></td>
    		<td height="26"><div align="center">期刊/会议名称</div></td>
    		<td height="26"><div align="center">刊号/会议时间</div></td>
    		<td height="26"><div align="center">发表年份</div></td>
  		</tr>
<%     while(rs.next()) 
		{
%>
  		<tr>
			<td height="32"><div align="center"><%=rs.getString("Sauthor")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Spname")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Smname")%></div></td>
  			<%	
  				String  s=rs.getString("Sptime");
  				if(s==null)
  					s="";
  			%>
  			<td height="32"><div align="center"><%=s%></div></td>
  			<%	
  				s=rs.getString("Spyear");
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
