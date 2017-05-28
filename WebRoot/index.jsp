<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%@ page import="javas.*"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<html>
	<head>
		<title>复杂网络与安全研究实验室</title>
		<link rel="stylesheet" href="css/base.css"/>
	</head>
	<body>
	<p><%@ include file="header.jsp"%> </p>
	<div class="area2">
  <div class="box3 l">
    <div class="box1" onMouseOver="this.className='box2'" onMouseOut="this.className='box1'">
    
    <div id="frame" >  
        <div id="photos" class="play">  
              <img src="http://eduppp.cn/images/0/1.jpg" >  
              <img src="http://eduppp.cn/images/0/3.jpg" >  
              <img src="http://eduppp.cn/images/0/4.jpg" >  
              <img src="http://eduppp.cn/images/0/5.jpg" >  
              <img src="http://eduppp.cn/images/0/2.jpg" > 
        </div>  
</div>  

    </div>
  </div>
  <div class="box3 r">
    <div class="box1" onMouseOver="this.className='box2'" onMouseOut="this.className='box1'">
      <div><b class="r2_1 l"></b><b class="r2_2 r"></b></div>
      <div class="brd">
        <h1>
          <div><a href="notice.jsp" target="_blank" class="more">更多</a></div>
          通知通告
        </h1>
        <div class="good_word">
        <%
		DBSQL dbsm = new DBSQL();
		String sql="SELECT * FROM news where type='1'";
		dbsm.setSqlStr(sql);
		dbsm.Query();
		ResultSet rs=dbsm.getRs();
	%>
	<div align="center">
	<table align="center"  border="0" cellpadding="0" cellspacing="0">
	<%    
		int i=0;
	 	while(i<6&&rs.next()) 
		{
			i++;
	%>
  	<tr>
	<td height="32"><a href="newsdetail.jsp?name=<%=rs.getString("name")%>"><%=rs.getString("name")%> </a> </td>
  	</tr>
  <%}%>
	</table></div>
<p>&nbsp;</p>
        </div>
      </div>
      <div><b class="r2_3 l"></b><b class="r2_4 r"></b></div>
    </div>
  </div>
  <div class="clear"></div>
</div>

<div class="area2">
  <div class="box3 l">
    <div class="box1" onMouseOver="this.className='box2'" onMouseOut="this.className='box1'">
      <div><b class="r2_1 l"></b><b class="r2_2 r"></b></div>
      <div class="brd">
        <h1>
           <div><a href="news.jsp" target="_blank" class="more">更多</a></div>
           新闻动态
        </h1>
        <div class="good_word"> 
            <%
		DBSQL dbsm2 = new DBSQL();
		String sql2="SELECT * FROM news where type='0'";
		dbsm.setSqlStr(sql2);
		dbsm.Query();
		ResultSet rs2=dbsm.getRs();
	%>
	<div align="center">
	<table align="center"  border="0" cellpadding="0" cellspacing="0">
<%     
		i=0;
		while(i<6&&rs2.next()) 
		{
			i++;
%>
  	<tr>
	<td height="32"><a href="newsdetail.jsp?name=<%=rs2.getString("name")%>"><%=rs2.getString("name")%> </a> </td>
  	</tr>
  <%}%>
</table></div>
<p>&nbsp;</p>
            <div class="clear"></div>
        </div>
      </div>
      <div><b class="r2_3 l"></b><b class="r2_4 r"></b></div>
    </div>
  </div>
  <div class="box3 r">
    <div class="box1" onMouseOver="this.className='box2'" onMouseOut="this.className='box1'">
      <div><b class="r2_1 l"></b><b class="r2_2 r"></b></div>
      <div class="brd">
        <h1>
          <div><a href="academic.jsp" target="_blank" class="more">更多</a></div>
          学术活动
        </h1>
        <div class="good_word"> 
        <%
		DBSQL dbsm3 = new DBSQL();
		String sql3="SELECT * FROM news where type='2'";
		dbsm.setSqlStr(sql3);
		dbsm.Query();
		ResultSet rs3=dbsm.getRs();
	%>
	<div align="center">
	<table align="center"  border="0" cellpadding="0" cellspacing="0">
<%     
		i=0;
		while(i<6&&rs3.next()) 
		{
			i++;
%>
  	<tr>
	<td height="32"><a href="newsdetail.jsp?name=<%=rs3.getString("name")%>"><%=rs3.getString("name")%> </a> </td>
  	</tr>
  <%}%>
</table></div>
<p>&nbsp;</p>
        </div>
      </div>
      <div><b class="r2_3 l"></b><b class="r2_4 r"></b></div>
    </div>
  </div>
  <div class="clear"></div>
</div>
<p><%@ include file="footer.jsp"%> </p>
	</body>

  	<style type="text/css">  
        #frame {/*----------图片轮播相框容器----------*/  
            position: absolute; /*--绝对定位，方便子元素的定位*/  
            width: 380px;  
            height: 250px;  
            overflow: hidden;/*--相框作用，只显示一个图片---*/  
            border-radius:5px;  
            z-index: -1;
        }  
        #photos img {  
            float: left;  
            width:380px;  
            height:250px;  
        }  
        #photos {/*---设置总的图片宽度--通过位移来达到轮播效果----*/  
            position: absolute;z-index:9px;  
            width: calc(380px * 5);/*---修改图片数量的话需要修改下面的动画参数*/  
        }  
        .play{  
            animation: ma 20s ease-out infinite alternate;/**/  
        }  
        @keyframes ma {/*---每图片切换有两个阶段：位移切换和静置。中间的效果可以任意定制----*/  
            0%,20% {        margin-left: 0px;       }  
            25%,40% {       margin-left: -380px;    }  
            45%,60% {       margin-left: -760px;    }  
            65%,80% {       margin-left: -1140px;    }  
            85%,100% {      margin-left: -1520px;   }  
        }  
        @keyframes ma1 {0%{margin-left:-1520px;}100%{margin-left:-0px;} }  
        @keyframes ma2 {0%{margin-left:-1520px;}100%{margin-left:-380px;}   }  
        @keyframes ma3 {100%{margin-left:-760px;}   }  
        @keyframes ma4 {100%{margin-left:-1140px;}   }  
        @keyframes ma5 {100%{margin-left:-1520px;}  }  
  </style>  

</html>
