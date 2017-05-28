<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>个人中心</title>
<link rel="stylesheet" href="base.css"/>
</head>
<body>
<div align="center"><br>
<%
		String password = new String(request.getParameter("password").trim().getBytes("ISO-8859-1"));
		String email = new String(request.getParameter("email").trim().getBytes("ISO-8859-1"));
		String phone = new String(request.getParameter("phone").trim().getBytes("ISO-8859-1"));
		String beizhu = new String(request.getParameter("beizhu").trim().getBytes("ISO-8859-1"));

		String userid=session.getValue("UserID").toString();
		String usertype=session.getValue("UserType").toString();
		DBSQL dbsm = new DBSQL();
		String sql;		
		if(usertype.equals("Student_in"))
			sql="UPDATE Student_in SET Semail='"+email+"',Stel='"+phone+"',SBeizhu='"+beizhu+"',Spassword='"+password+"' WHERE Sno='"+userid+"'";
		else
			sql="UPDATE Student_out SET Semail='"+email+"',Stel='"+phone+"',SBeizhu='"+beizhu+"',Spassword='"+password+"' WHERE Sno='"+userid+"'";
		
		dbsm.setSqlStr(sql);
		dbsm.Update();
		ResultSet rs=dbsm.getRs();
%>
    <a class="title">修改成功！</a><br><br>
  <a href="studentindex.jsp">返回主页</a></div>
</body>
</html>
