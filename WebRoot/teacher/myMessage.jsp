<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*"%>
<%@ page import="javas.*"%>
<meta charset="UTF-8">
<html>
<head>
<title>�޸ĸ�������</title>
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
        <td width="76" height="15"><div align="center">����</div></td>
        <td width="316"><%=rs.getString("JNO")%></td>
      </tr>
      <tr>
        <td height="15"><div align="center">��������</div></td>
        <td><input name="CN" type="text" size="40" value=<%=rs.getString("CN")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">Ӣ������</div></td>
        <td><input name="EN" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">��������</div></td>
        <td><input name="Birth" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">�Ա�</div></td>
        <td><input name="Sex" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">����</div></td>
        <td><input name="Nat" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">���</div></td>
        <td><input name="Class" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">������λ</div></td>
        <td><input name="Unit" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">ְ��</div></td>
        <td><input name="Zhichen" type="text" size="40" value=<%=rs.getString("Zhichen")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">��ʦ�ʸ�</div></td>
        <td><input name="Tutor" type="text" size="40" value=<%=rs.getString("Tutor")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">ʵ����ְ��</div></td>
        <td><input name="Job" type="text" size="40" value=<%=rs.getString("Job")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">ѧԺ����ְ��</div></td>
        <td><input name="Job2" type="text" size="40" value=<%=rs.getString("Job2")%> ></td>
      </tr>
      <tr>
        <td height="15"><div align="center">�����ʼ�</div></td>
       <td><input name="Email" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">�ƶ��绰</div></td>
        <td><input name="Tel" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">�칫�绰</div></td>
       <td><input name="Oph" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">����ְ</div></td>
         <td><input name="Jianzhi" type="text" size="40"></td>
      </tr>
      <tr>
        <td height="15"><div align="center">����</div></td>
        <td><input name="password" type="text" size="40" value=<%=rs.getString("password")%> ></td>
      </tr>
      <tr>
        <td height="33"><div align="center">��ע</div></td>
        <td><textarea name="Beizhu" cols="70" rows="10"><%=rs.getString("Beizhu")%></textarea></td>
      </tr>
      <tr>
        <td height="65" colspan="2"><div align="center">
          <input type="submit" name="Submit" value="�޸�">          
        </div></td>
      </tr>
  </table>
    <div align="center"></div>
</form>
</div>
  </body>
</html>
