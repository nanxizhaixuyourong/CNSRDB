<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<html>
<head>
<title>更改图书</title>
<link href="base1.css" rel="stylesheet" type="text/css">
<script language="javascript">
function checkform() {
	if (form1.bname.value.length==0){
		alert("请输入书名!");
		form1.bname.focus();
		return false;
	}
	if (form1.bauthor.value.length==0){
		alert("请输入作者!");
		form1.bauthor.focus();
		return false;
	}
	if (form1.byear.value.length==0){
		alert("请输入出版年份!");
		form1.byear.focus();
		return false;
	}
	if (form1.bposition.value.length==0){
		alert("请输入出版年份!");
		form1.bposition.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<%@ include file="header.jsp"%>
<%
		String bno = new String(request.getParameter("bno").trim().getBytes("ISO-8859-1"));
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM book WHERE bno='"+bno+"'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
		rs.next();
%>
<<div class="centerdiv">
	<form name="form1" method="post" action="book_byupdate.jsp?bno=<%=rs.getString("bno")%>">
    <table border="1" cellpadding="0" cellspacing="0"  width="1000px" class="imagetable">
      <tr>
        <td width="76" height="15"><div align="center">图书编号</div></td>
        <td width="316"><%=rs.getString("bno")%></td>
      </tr>
      <tr>
        <td height="15"><div align="center">图书名字</div></td>
         <td><input name="bname" type="text" size="40" value=<%=rs.getString("bname")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">作者</div></td>
       <td><input name="bauthor" type="text" size="40" value=<%=rs.getString("bauthor")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">出版年份</div></td>
        <td><input name="byear" type="text" size="40" value=<%=rs.getString("byear")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">状态/位置</div></td>
       <td><input name="bposition" type="text" size="40" value=<%=rs.getString("bposition")%> ></td>
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
<%@ include file="footer.jsp"%>
</body>
</html>
