<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>��̬��Ϣ</title>
<link rel="stylesheet" href="base2.css"/>
</head>
<body>
<p>
<%@ include file="header.jsp"%>
</p>
<p>
<%
		String userid=session.getValue("UserID").toString();
		DBSQL dbsm = new DBSQL();
		String sql="SELECT No,Sname,InTime,OutTime from InOut,Student_in WHERE No=Sno AND Stutor='"+userid+"'";
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
  			<td height="32"><div align="center"><%=rs.getString("No")%></div></td>
			<td height="32"><div align="center"><%=rs.getString("Sname")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("InTime")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("OutTime")%></div></td>
  		</tr>
  <%}%>
</table></div>
<p>&nbsp;</p>
  </body>
</html>
