<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>修改个人资料</title>
<link rel="stylesheet" href="base1.css"/>
</head>
<body>
<p>
<%@ include file="header.jsp"%>
</p>
<p>
<%
		String userid=session.getValue("UserID").toString();
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * from Teacher WHERE JNO='"+userid+"'";

		
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
        <td width="76" height="15"><div align="center">工号</div></td>
        <td width="316"><%=rs.getString("JNO")%></td>
      </tr>
      <tr>
        <td height="15"><div align="center">中文姓名</div></td>
        <td><input name="CN" type="text" size="40" value=<%=rs.getString("CN")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">英文姓名</div></td>
        <td><input name="EN" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">出生日期</div></td>
        <td><input name="Birth" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">性别</div></td>
        <td><input name="Sex" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">国籍</div></td>
        <td><input name="Nat" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">类别</div></td>
        <td><input name="Class" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">所属单位</div></td>
        <td><input name="Unit" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">职称</div></td>
        <td><input name="Zhichen" type="text" size="40" value=<%=rs.getString("Zhichen")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">导师资格</div></td>
        <td><input name="Tutor" type="text" size="40" value=<%=rs.getString("Tutor")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">实验室职务</div></td>
        <td><input name="Job" type="text" size="40" value=<%=rs.getString("Job")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">学院行政职务</div></td>
        <td><input name="Job2" type="text" size="40" value=<%=rs.getString("Job2")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">电子邮件</div></td>
       <td><input name="Email" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">移动电话</div></td>
        <td><input name="Tel" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">办公电话</div></td>
       <td><input name="Oph" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">社会兼职</div></td>
         <td><input name="Jianzhi" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">密码</div></td>
        <td><input name="password" type="text" size="40" value=<%=rs.getString("password")%> ></td>
      </tr>
      <tr>
        <td height="33"><div align="center">备注</div></td>
        <td><textarea name="Beizhu" cols="70" rows="10"><%=rs.getString("Beizhu")%></textarea></td>
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
