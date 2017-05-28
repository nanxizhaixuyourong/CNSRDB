<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
  <head>
		<title>师资力量</title>
		<link rel="stylesheet" href="base.css"/>
  </head>
  <body>
	<p><%@ include file="header.jsp"%> </p>
	<%
		String type = new String(request.getParameter("type").trim());
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM teacher where class='"+type+"'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
		String s;
	%>
	<br>
	<div class="centerdiv">
	<table align="center"  border="1" cellpadding="0" cellspacing="0" width="700px" class="imagetable">
      	<tr>
      		<td height="26"><div align="center">工号</div></td>
    		<td height="26"><div align="center">姓名</div></td>
    		<td height="26"><div align="center">职称</div></td>
    		<td height="26"><div align="center">导师资格</div></td>
    		<td height="26"><div align="center">社会兼职</div></td>
    		<td height="26"><div align="center">学院行政职务</div></td>
  		</tr>
<%     while(rs.next())
		{
%>
  		<tr>
  			<td height="32"><div align="center"><%=rs.getString("JNO")%></div></td>
			<td height="32"><div align="center"><%=rs.getString("CN")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Zhichen")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Tutor")%></div></td>
  			<%	
  				s=rs.getString("Jianzhi");
  				if(s==null)
  					s="";
  			%>
  			<td height="32"><div align="center"><%=s%></div></td>
  			<%	
  				s=rs.getString("Job2");
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
