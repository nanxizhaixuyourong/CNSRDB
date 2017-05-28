<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>毕业学生</title>
<link rel="stylesheet" href="base2.css"/>
</head>
<body>
<p>
<%@ include file="header.jsp"%>
</p>
<p>
<%
		String ss = new String(request.getParameter("ss").trim().getBytes("ISO-8859-1"));
		String[] s = ss.split(" ");
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * from Student_out WHERE Sgrade='"+s[0]+"' AND Sstyle='"+s[1]+"'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
		rs.next();
		
%>
	<br>
	<div class="centerdiv">
	<table border="1" cellpadding="0" cellspacing="0"  width="1000px" class="imagetable">

      	<tr>
      		<td height="26"><div align="center">年级</div></td>
    		<td height="26"><div align="center">学号</div></td>
    		<td height="26"><div align="center">姓名</div></td>
    		<td height="26"><div align="center">性别</div></td>
    		<td height="26"><div align="center">导师</div></td>
    		<td height="26"><div align="center">入学时间</div></td>
    		<td height="26"><div align="center">毕业时间</div></td>
    		<td height="26"><div align="center">类别</div></td>
    		<td height="26"><div align="center">派遣信息/初次就业单位</div></td>
  		</tr>
<%     while(rs.next())
		{
%>
  		<tr>
  			<td height="32"><div align="center"><%=rs.getString("Sgrade")%></div></td>
			<td height="32"><div align="center"><%=rs.getString("Sno")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Sname")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Ssex")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Stutor")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Satime")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Sgtime")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Sstyle")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Scompany")%></div></td>
  		</tr>
  <%}%>
</table></div>
<p>&nbsp;</p>
  </body>
</html>
