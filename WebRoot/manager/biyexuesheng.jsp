<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生信息</title>
<style> 
.div1{ width:1000px;  margin-top:5px} 
.div2{ width:1000px;  height:600px; margin-top:5px; text-align:left;font-size:20px;} 
/*CSS注释说明：设置三个样式选择器相同属性*/ 
.div1{ border:1px solid #eee} 
.div2{ border:0px solid #eee} 
/*.div3{ border:8px solid #F00} */
</style> 
</head>
<body>
<p><%@ include file="header.jsp"%> </p>
<div class="box10"><h1>毕业学生</h1>
  <div class="div2">
    <p><a href="biyedetail.jsp?ss=<%="2013 专业硕士"%>">2013级专业硕士</a>
    <b>(2015-10-17)</b></p>
    <p>
      <a href="biyedetail.jsp?ss=<%="2012 学术硕士"%>">2012级学术硕士</a>
    <b>(2015-04-10)</b></p>
    <p><a href="biyedetail.jsp?ss=<%="2012 专业硕士"%>">2012级专业硕士</a>
    <b>(2014-07-19)</b></p>
    <p><a href="biyedetail.jsp?ss=<%="2011 专业硕士"%>">2011级专业硕士</a>
      <b>(2014-07-18)</b>
    </p>
    <p><a href="biyedetail.jsp?ss=<%="2010 专业硕士"%>">2010级专业硕士</a>
    <b>(2014-07-17)</b></p>
    <p><a href="biyedetail.jsp?ss=<%="2009 学术硕士"%>">2009级学术硕士</a>
    <b>(2014-07-16)</b></p>
    <p><a href="biyedetail.jsp?ss=<%="2009 专业硕士"%>">2009级专业硕士</a>
    <b>(2014-07-15)</b></p>
    <p><a href="biyedetail.jsp?ss=<%="2008 学术硕士"%>">2008级学术硕士</a>
    <b>(2014-07-14)</b></p>
    <p><a href="biyedetail.jsp?ss=<%="2008 专业硕士"%>">2008级专业硕士</a>
      <b>(2014-07-13)</b>
    </p>
    <p><a href="biyedetail.jsp?ss=<%="2007 学术硕士"%>">2007级学术硕士</a>
      <b>(2014-07-12)</b>
    </p>
            </div>
</div>
</body>
<html>
