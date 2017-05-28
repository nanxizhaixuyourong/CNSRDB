<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<%@ page import="java.util.Date"%>
<meta charset="UTF-8">
<html>
<head>
<title>图书归还</title>
<link href="base.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
		String bno = new String(request.getParameter("bno").trim().getBytes("ISO-8859-1"));
		Date time=new Date();
		time.getDate();
		String nowtime=time.toString();
		String userid=session.getValue("UserID").toString();
		DBSQL dbsm = new DBSQL();
		String sql="UPDATE borrow SET rtime='"+nowtime+"' WHERE Sname='"+userid+"' AND bno='"+bno+"'" ;
		dbsm.setSqlStr(sql);
		dbsm.Update();
		
		
		sql=sql="UPDATE book SET bposition='可借' WHERE bno='"+bno+"'" ;
		dbsm.setSqlStr(sql);
		dbsm.Update();
		dbsm.close();
%>
<if condition="$id eq 1">
<meta http-equiv="refresh" content="5; URL=book_return.jsp">

<font color="#FF0000">还书成功，5秒后自动跳转！</font>
</if>
<foreach name="rows" item="val">
<hr />
<a href="book_return.jsp">点击返回！</a>
</foreach>

<p>&nbsp;</p>
</body>
</html>
