<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>修改个人资料</title>
<link rel="stylesheet" href="base0.css"/>
</head>
<body>
<p>
<%@ include file="header.jsp"%>
</p>
<p>
<%
		String userid=session.getValue("UserID").toString();
		String usertype=session.getValue("UserType").toString();
		DBSQL dbsm = new DBSQL();
		String sql;		
		if(usertype.equals("Student_in"))
			sql="SELECT * from Student_in WHERE Sno='"+userid+"'";
		else
			sql="SELECT * from Student_out WHERE Sno='"+userid+"'";
		
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
        <td width="76" height="15"><div align="center">年级</div></td>
        <td width="316"><%=rs.getString("Sgrade")%></td>
      </tr>
      <tr>
        <td height="15"><div align="center">学号</div></td>
        <td><%=rs.getString("Sno")%></td>
      </tr>
      <tr>
        <td height="15"><div align="center">姓名</div></td>
        <td><%=rs.getString("Sname")%></td>
      </tr>
      <tr>
        <td height="15"><div align="center">类别</div></td>
        <td><%=rs.getString("Sstyle")%></td>
      </tr>
      <tr>
        <td height="15"><div align="center">性别</div></td>
        <td><%=rs.getString("Ssex")%></td>
      </tr>
      <tr>
        <td height="15"><div align="center">导师</div></td>
        <td><%=rs.getString("Stutor")%></td>
      </tr>
      <tr>
        <td height="15"><div align="center">密码</div></td>
        <td><input name="password" type="text" size="40" value=<%=rs.getString("Spassword")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">电子邮件</div></td>
        <td><input name="email" type="text" size="40" value=<%=rs.getString("Semail")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">移动电话</div></td>
        <td><input name="phone" type="text" size="40" value=<%=rs.getString("Stel")%> ></td>
      </tr>
      <tr>
        <td height="33"><div align="center">备注</div></td>
        <td><textarea name="beizhu" cols="70" rows="10"><%=rs.getString("SBeizhu")%></textarea></td>
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
