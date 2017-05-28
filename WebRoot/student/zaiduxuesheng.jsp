<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生信息</title>
<style> 
.div1{ width:1000px;  margin-top:5px} 
.div2{ width:1000px;  height:400px; margin-top:5px; text-align:left;font-size:20px;} 
/*CSS注释说明：设置三个样式选择器相同属性*/ 
.div1{ border:1px solid #eee} 
.div2{ border:0px solid #eee} 
/*.div3{ border:8px solid #F00} */
</style> 
</head>
<body>
<p><%@ include file="header.jsp"%> </p>
<div class="box10">
<h1>在读学生</h1>
<div class="div2">
  <p><a href="zaidudetail.jsp?ss=<%="2015 专业硕士"%>">2015级专业硕士</a>
  <b>(2015-09-28)</b></p>
  <p><a href="zaidudetail.jsp?ss=<%="2014 国际学生"%>">2014级国际学生</a>
    <b>(2014-10-14)</b>
  </p>
  <p><a href="zaidudetail.jsp?ss=<%="2014 学术硕士"%>">2014级学术硕士</a>
    <b>(2014-09-20)</b>
  </p>
  <p><a href="zaidudetail.jsp?ss=<%="2014 专业硕士"%>">2014级专业硕士</a>
  <b>(2014-09-19)</b></p>
  <p><a href="zaidudetail.jsp?ss=<%="2013 学术硕士"%>">2013级学术硕士</a>
    <b>(2013-10-19)</b>
  </p>
</div>
</div>
</body>
<html>
