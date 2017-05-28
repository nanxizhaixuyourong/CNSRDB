<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>修改个人资料</title>
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
		String sql="SELECT * from manger WHERE mno='"+userid+"'";

		
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
		rs.next();
		
%>
	<br>
	<div class="centerdiv">
	<form name="form1" method="post" action="myupdate.jsp">
    <table border="1" cellpadding="0" cellspacing="0"  width="1000px" class="imagetable">
      <tr>
        <td width="76" height="15"><div align="center">工号</div></td>
        <td width="316"><%=rs.getString("mno")%></td>
      </tr>
      <tr>
        <td height="15"><div align="center">姓名</div></td>
        <td><input name="mname" type="text" size="40" value=<%=rs.getString("mname")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">性别</div></td>
        <td><input name="msex" type="text" size="40" value=<%=rs.getString("msex")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">密码</div></td>
        <td><input name="mpassword" type="text" size="40" value=<%=rs.getString("mpassword")%> ></td>
      </tr>
      <tr>
        <td height="65" colspan="2"><div align="center">
          <input type="submit" name="Submit" value="修改">          
        </div></td>
      </tr>
  </table>
    <div align="center"></div>
</form>
</div>
  </body>
</html>
