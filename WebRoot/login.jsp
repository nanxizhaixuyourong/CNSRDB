<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%@ page import="javas.*"%>

<%
 String errmsg = request.getParameter("errmsg");
 request.getSession(true);
 String chk = "false";
 session.putValue("Enter",chk);
%>
<!DOCTYPE html>  
<html>
<head>
<title>登录</title>
<link rel="stylesheet" href="base.css"/>
<link rel="stylesheet" href="login.css"/>
<script language="javascript">
function checkform() {
	if (form1.u.value.length<1 ){
		alert("请输入正确的用户名！");
		form1.userid.focus();
		return false;
	}
	if (form1.p.value.length<1 ){
		alert("请输入正确的密码!");
		form1.password.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
   <font color="#CC3333">
	<%
 if(errmsg != null && errmsg.equals("error1"))
  out.print("您输入的用户名或密码不正确，请重新输入！");
 else if(errmsg != null && errmsg.equals("error2"))
  out.print("请先登录！");
	%>
</font>
	<div  id="content">  
        <h1>登录</h1>  
        <form name="form1" method="post" action="loginchk.jsp">
        	<div class="login-input-box">
            <input type="text" required="required" placeholder="用户名"  name="u" id="u"></input> 
            </div>
            <div class="login-input-box"> 
            <input type="password" required="required" placeholder="密码"  name="p" id="p"></input>  
            </div>   
            
            <nobr>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                学生<input type="radio" name="types" value="student" checked class="option-input radio">
                                教师<input type="radio" name="types" value="teacher" class="option-input radio">
                                管理员<input type="radio" name="types" value="manger" class="option-input radio">
            </nobr>
            <div class="login-button-box">
            <button type="submit"  onclick="javascript:return(checkform());">登录</button> 
            </form>
            </div>            
     <div class="logon-box">      
	<a href="index.jsp">返回首页</a>
	</div>
    </div>
</form>

</body>
</html>