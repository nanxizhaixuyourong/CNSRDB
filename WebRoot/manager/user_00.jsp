<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>�û�����</title>
<link href="base2.css" rel="stylesheet" type="text/css">
</head>
<body>
<p>
<%@ include file="header.jsp"%>
</p>

<div align="center">
  <%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM Student_in";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
	
%>  
	<br>
	<div class="centerdiv">
	<table border="1" cellpadding="0" cellspacing="0"  width="1000px" class="imagetable">
        <tr>
          <td height="30"><div align="center">���</div></td>
          <td ><div align="center">����</div></td>
          <td ><div align="center">����</div></td>         
          <td colspan="2"><div align="center"></div>            
            <div align="center">����</div></td>
        </tr>
<%     while(rs.next()) 
		{
%>
        <tr>
          <td height="30"><div align="center"><%=rs.getString("Sno")%></div></td>
          <td><div align="center"><%=rs.getString("Sname")%></div></td>
          <td><div align="center"><%=rs.getString("Spassword")%></div></td>
          <td ><div align="center"><a href="user_update.jsp?id=<%=rs.getString("Sno")%>">�޸�</a></div></td>
          <td ><div align="center"><a href="javascript:del(<%=rs.getString("Sno")%>)">ɾ��</a></div></td>
        </tr>
<%}

	sql="SELECT * FROM Student_out";
	dbsm.setSqlStr(sql);
	dbsm.Query();
	rs=dbsm.getRs();

    while(rs.next()) 
	{
%>
        <tr>
          <td height="30"><div align="center"><%=rs.getString("Sno")%></div></td>
          <td><div align="center"><%=rs.getString("Sname")%></div></td>
          <td><div align="center"><%=rs.getString("Spassword")%></div></td>
          <td ><div align="center"><a href="user_update.jsp?id=<%=rs.getString("Sno")%>">�޸�</a></div></td>
          <td ><div align="center"><a href="javascript:del(<%=rs.getString("Sno")%>)">ɾ��</a></div></td>
        </tr>
<%}
	sql="SELECT * FROM Teacher";
	dbsm.setSqlStr(sql);
	dbsm.Query();
	rs=dbsm.getRs();
	
    while(rs.next()) 
	{
%>
        <tr>
          <td height="30"><div align="center"><%=rs.getString("JNO")%></div></td>
          <td><div align="center"><%=rs.getString("CN")%></div></td>
          <td><div align="center"><%=rs.getString("password")%></div></td>
          <td ><div align="center"><a href="user_update.jsp?id=<%=rs.getString("JNO")%>">�޸�</a></div></td>
          <td ><div align="center"><a href="javascript:del(<%=rs.getString("JNO")%>)">ɾ��</a></div></td>
        </tr>
<%}
%>
      </table>
      </div>
    <br>
</div>
<script language="JavaScript">
function del(id) 
{
if (confirm("���Ҫɾ����") )
  top.location="user_delete.jsp?id="+id
 }
</script>

<p>
<%@ include file="footer.jsp"%>
</p>
</body>
</html>
