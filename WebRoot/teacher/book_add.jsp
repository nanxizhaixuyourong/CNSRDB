<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<html>
<head>
<title>添加图书</title>
<link href="base1.css" rel="stylesheet" type="text/css">
<script language="javascript">
function checkform() {
	if (form1.bno.value.length==0){
		alert("请输入图书编号！");
		form1.bno.focus();
		return false;
	}
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
	return true;
}
</script>
</head>
<body>
<div class="centerdiv"><br>
    <a class="title">添加图书</a><br>

<form name="form1" method="post" action="book_byadd.jsp">
    <table border="1" cellpadding="0" cellspacing="0"  width="1000px" class="imagetable">
      <tr>
        <td width="76" height="15"><div align="center">图书编号</div></td>
        <td width="316"><input type="text" name="bno"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">图书名字</div></td>
        <td><input type="text" name="bname"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">作者</div></td>
        <td><input type="text" name="bauthor"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">出版年份</div></td>
        <td><input type="text" name="byear"></td>
      </tr>
      <tr>
        <td height="65" colspan="2"><div align="center">
          <input type="submit" name="Submit" value="添加" onClick="javascript:return(checkform());">    
        </div></td>
      </tr>
  </table>
    <div align="center"></div>
</form>
</div>
</body>
</html>
