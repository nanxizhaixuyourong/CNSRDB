<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>¶¯Ì¬ÏûÏ¢</title>
<link rel="stylesheet" href="base.css"/>
</head>
<body>
<p>
<%@ include file="header.jsp"%>
</p>
<p>
<%
		String name = new String(request.getParameter("name").trim().getBytes("ISO-8859-1"));
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * from news WHERE name='"+name+"'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
		rs.next();
		
%>
<div  class="box10" >
<div >
<% String s=rs.getString("info");
		String[] ss = s.split("\n");
		for(int i=0;i<ss.length;i++)
			{out.println(ss[i]);%><p>
<% }%>
</p>
</div>
</div>
</body>
</html>
