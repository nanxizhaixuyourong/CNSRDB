<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<html>
<head>
<title>更改图书</title>
<link href="base2.css" rel="stylesheet" type="text/css">
<script language="javascript">
function checkform() {
	if (form1.name.value.length==0){
		alert("请输入名字!");
		form1.name.focus();
		return false;
	}
	if (form1.password.value.length==0){
		alert("请输入密码!");
		form1.password.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<%@ include file="header.jsp"%>
<%
		String id = new String(request.getParameter("id").trim().getBytes("ISO-8859-1"));
		DBSQL dbsm = new DBSQL();
		String sql=new String();
		
		sql="SELECT Sno,Sname,Spassword FROM Student_in WHERE Sno='"+id+"'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
		
		if(rs.next())
			session.putValue("delType", "Student_in");
		else
		{
			sql="SELECT Sno,Sname,Spassword FROM Student_out WHERE Sno='"+id+"'";
			dbsm.setSqlStr(sql);
			dbsm.Query();
			rs=dbsm.getRs();
			if(rs.next())
				session.putValue("delType", "Student_out");
			else
			{
				session.putValue("delType", "teacher");
				sql="SELECT JNO,CN,password FROM teacher WHERE JNO='"+id+"'";
				dbsm.setSqlStr(sql);
				dbsm.Query();
				rs=dbsm.getRs();				
			}
		}
		
%>
<div class="centerdiv">
	<form name="form1" method="post" action="user_byupdate.jsp?id=<%=rs.getString(1)%>">
    <table border="1" cellpadding="0" cellspacing="0"  width="1000px" class="imagetable">
      <tr>
        <td width="76" height="15"><div align="center">编号</div></td>
        <td width="316"><%=rs.getString(1)%></td>
      </tr>
      <tr>
        <td height="15"><div align="center">姓名</div></td>
         <td><input name="name" type="text" size="40" value=<%=rs.getString(2)%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">密码</div></td>
       <td><input name="password" type="text" size="40" value=<%=rs.getString(3)%> ></td>
      </tr>
      <tr>
        <td height="20" colspan="2"><div align="center">
          <input type="submit" name="Submit" value="修改">          
        </div></td>
      </tr>
  </table>
    <div align="center"></div>
</form>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>
