<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
  <head>
		<title>教学工作</title>
		<link rel="stylesheet" href="css/base.css"/>
  </head>
  <body>
	<p><%@ include file="header.jsp"%> </p>
	<%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM course";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
	%>
	<br>
	<div class="centerdiv">
	<table align="center"  border="1" cellpadding="0" cellspacing="0"  width="700px" class="imagetable">
      	<tr>
    		<td height="26"><div align="center">课程编号</div></td>
    		<td height="26"><div align="center">课程名称</div></td>
    		<td height="26"><div align="center">课程性质</div></td>
    		<td height="26"><div align="center">学生层次</div></td>
    		<td height="26"><div align="center">授课时间</div></td>
    		<td height="26"><div align="center">主讲教师</div></td>
    		<td height="26"><div align="center">备注</div></td>
  		</tr>
<%     while(rs.next()) 
		{
%>
  		<tr>
			<td height="32"><div align="center"><%=rs.getString("CouNum")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("CouNam")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("CouNat")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("StuLe")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("ConTime")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("LeSc")%></div></td>
  			<%	
  				String  s=rs.getString("Te");
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
