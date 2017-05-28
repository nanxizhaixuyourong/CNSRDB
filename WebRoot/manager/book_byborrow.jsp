<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<%@ page import="java.util.Date"%>
<meta charset="UTF-8">
<html>
<head>
<title>图书借阅</title>
<link href="base2.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
		String bno = new String(request.getParameter("bno").trim().getBytes("ISO-8859-1"));
		Date time=new Date();
		time.getDate();
		String nowtime=time.toString();
		String userid=session.getValue("UserID").toString();
		DBSQL dbsm = new DBSQL();
		String sql="INSERT into borrow (Sname,bno,btime) VALUES ('"+userid+"','"+bno+"','"+nowtime+"')";
		dbsm.setSqlStr(sql);
		dbsm.Update();
		sql=sql="UPDATE book SET bposition='借出' WHERE bno='"+bno+"'" ;
		dbsm.setSqlStr(sql);
		dbsm.Update();
%>
<if condition="$id eq 1">
<meta http-equiv="refresh" content="5; URL=book_borrow.jsp">

<font color="#FF0000">借阅成功，5秒后自动跳转！</font>
</if>
<foreach name="rows" item="val">
<hr />
<a href="book_borrow.jsp">点击返回继续查询！</a>
</foreach>
<p>&nbsp;</p>
</body>
</html>
