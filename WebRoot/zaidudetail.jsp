<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>��̬��Ϣ</title>
<link rel="stylesheet" href="css/base.css"/>
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
		String sql="SELECT * from Student_in WHERE Sgrade='"+s[0]+"' AND Sstyle='"+s[1]+"'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
		rs.next();
		
%>
<br>
<div class="centerdiv">
	<table align="center"  border="1" cellpadding="0" cellspacing="0" width="700px" class="imagetable">
      	<tr>
      		<td height="26"><div align="center">�꼶</div></td>
    		<td height="26"><div align="center">ѧ��</div></td>
    		<td height="26"><div align="center">����</div></td>
    		<td height="26"><div align="center">���</div></td>
    		<td height="26"><div align="center">��ʦ</div></td>
    		<td height="26"><div align="center">��ע</div></td>
  		</tr>
<%     while(rs.next())
		{
%>
  		<tr>
  			<td height="32"><div align="center"><%=rs.getString("Sgrade")%></div></td>
			<td height="32"><div align="center"><%=rs.getString("Sno")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Sname")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Sstyle")%></div></td>
  			<td height="32"><div align="center"><%=rs.getString("Stutor")%></div></td>
  			<%	
  				ss=rs.getString("SBeizhu");
  				if(ss==null)
  					ss="";
  			%> 		
  			<td height="32"><div align="center"><%=ss%></div></td>
  		</tr>
  <%}%>
</table></div>
<p>&nbsp;</p>
  </body>
</html>