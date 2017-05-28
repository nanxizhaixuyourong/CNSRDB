<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>个人中心</title>
<link rel="stylesheet" href="base2.css"/>
</head>
<body>
<div align="center"><br>
<%
		String mname = new String(request.getParameter("mname").trim().getBytes("ISO-8859-1"));
		String msex = new String(request.getParameter("msex").trim().getBytes("ISO-8859-1"));
		String mpassword = new String(request.getParameter("mpassword").trim().getBytes("ISO-8859-1"));
		
		String userid=session.getValue("UserID").toString();
		DBSQL dbsm = new DBSQL();
		String sql;		
		sql="UPDATE manger SET mname='"+mname+"',msex='"+msex+"',mpassword='"+mpassword+"' WHERE mno='"+userid+"'";
		
		dbsm.setSqlStr(sql);
		dbsm.Update();
		ResultSet rs=dbsm.getRs();
%>
    <a class="title">修改成功！</a><br><br>
  <a href="managerindex.jsp">返回主页</a></div>
</body>
</html>
