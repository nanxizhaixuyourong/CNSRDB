<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>ǩ��ǩ��</title>
<link rel="stylesheet" href="base1.css"/>
</head>
<body>
<p>
<%@ include file="header.jsp"%>
</p>
<p>
<%
		String userid=session.getValue("UserID").toString();
		DBSQL dbsm = new DBSQL();
		String sql="SELECT No,Sname,InTime,OutTime from InOut,Student_in,Teacher WHERE No=Sno AND CN=Stutor AND JNO='"+userid+"'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
		rs.next();
		
%>
	<br>
	<div class="centerdiv">
	<table border="1" cellpadding="0" cellspacing="0"  width="1000px" class="imagetable">
      	<tr>
      		<td height="26"><div align="center">ѧ��</div></td>
    		<td height="26"><div align="center">����</div></td>
    		<td height="26"><div align="center">ǩ��ʱ��</div></td>
    		<td height="26"><div align="center">ǩ��ʱ��</div></td>
  		</tr>
<%     while(rs.next())
		{
%>
  		<tr>
  			<td height="32"><div align="center"><%=rs.getString(1)%></div></td>
			<td height="32"><div align="center"><%=rs.getString(2)%></div></td>
  			<td height="32"><div align="center"><%=rs.getString(3)%></div></td>
  			<td height="32"><div align="center"><%=rs.getString(4)%></div></td>
  		</tr>
  <%}
  		sql="SELECT No,Sname,InTime,OutTime from InOut,Student_out,Teacher WHERE No=Sno AND CN=Stutor AND JNO='"+userid+"'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		rs=dbsm.getRs();
		rs.next();
  		 while(rs.next())
		{
%>
  		<tr>
  			<td height="32"><div align="center"><%=rs.getString(1)%></div></td>
			<td height="32"><div align="center"><%=rs.getString(2)%></div></td>
  			<td height="32"><div align="center"><%=rs.getString(3)%></div></td>
  			<td height="32"><div align="center"><%=rs.getString(4)%></div></td>
  		</tr>
  <%}
  %>
</table></div>
<p>&nbsp;</p>
  </body>
</html>
