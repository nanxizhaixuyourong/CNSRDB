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
		String CN = new String(request.getParameter("CN").trim().getBytes("ISO-8859-1"));
		String EN = new String(request.getParameter("EN").trim().getBytes("ISO-8859-1"));
		String Birth = new String(request.getParameter("Birth").trim().getBytes("ISO-8859-1"));
		String Sex = new String(request.getParameter("Sex").trim().getBytes("ISO-8859-1"));
		String Class = new String(request.getParameter("Class").trim().getBytes("ISO-8859-1"));
		String Nat = new String(request.getParameter("Nat").trim().getBytes("ISO-8859-1"));
		String Unit = new String(request.getParameter("Unit").trim().getBytes("ISO-8859-1"));
		String Zhichen = new String(request.getParameter("Zhichen").trim().getBytes("ISO-8859-1"));
		String Tutor = new String(request.getParameter("Tutor").trim().getBytes("ISO-8859-1"));
		String Job = new String(request.getParameter("Job").trim().getBytes("ISO-8859-1"));
		String Job2 = new String(request.getParameter("Job2").trim().getBytes("ISO-8859-1"));
		String Email = new String(request.getParameter("Email").trim().getBytes("ISO-8859-1"));
		String Tel = new String(request.getParameter("Tel").trim().getBytes("ISO-8859-1"));
		String Oph = new String(request.getParameter("Oph").trim().getBytes("ISO-8859-1"));
		String Jianzhi = new String(request.getParameter("Jianzhi").trim().getBytes("ISO-8859-1"));
		String Beizhu = new String(request.getParameter("Beizhu").trim().getBytes("ISO-8859-1"));
		String password = new String(request.getParameter("password").trim().getBytes("ISO-8859-1"));
		
		String userid=session.getValue("UserID").toString();
		DBSQL dbsm = new DBSQL();
		String sql;		
		sql="UPDATE Teacher SET CN='"+CN+"',EN='"+EN+"',Birth='"+Birth+"',Sex='"+Sex+"',Class='"+Class+"',Nat='"+Nat+"',Unit='"+Unit+"',Zhichen='"+Zhichen+"',Tutor='"+Tutor+"',Job='"+Job+"',Job2='"+Job2+"',Email='"+Email+"',Tel='"+Tel+"',Oph='"+Oph+"',Jianzhi='"+Jianzhi+"',Beizhu='"+Beizhu+"',password='"+password+"'WHERE JNO='"+userid+"'";
		
		dbsm.setSqlStr(sql);
		dbsm.Update();
		ResultSet rs=dbsm.getRs();
%>
    <a class="title">修改成功！</a><br><br>
  <a href="teacherindex.jsp">返回主页</a></div>
</body>
</html>
