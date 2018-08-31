<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <style type="text/css">
  #guidances {
	background-color: #fc7e31;
	clear: both;
	height: 30px;
	overflow: hidden;
}
  #guidances #guidance-child {
	width: 960px;
	margin:0 auto;
}
#guidances #guidance-child ul {

    margin: 9px;
    line-height: 14px;

}
.clearfix {

    display: block;

}
.clearfix {

    display: inline-block;

}
ul {

    list-style: none;

}
body, p, ul, ol, li, dl, dt, dd, input, h1, h2, h3, h4, form, hr {

    padding: 0;
    margin: 0;

}
#guidances #guidance-child ul li.first {

    border-left: 0;

}
#guidances #guidance-child ul li {

    float: left;
    display: inline;
    border-right: 1px solid #dc6b04;
    border-left: 1px solid #fba455;
    padding: 0 9px;

}
#guidances #guidance-child ul li.last {

    border-right: 0;
        border-right-color: currentcolor;
        border-right-style: none;
        border-right-width: 0px;

}
#guidances #guidance-child .clearfix .firstli  a:link {
	color: #FFF;
	text-decoration: none;
}

#guidances #guidance-child .clearfix  a:link {
	color: #FFF;
	text-decoration: none;
}

#guidances #guidance-child .clearfix  a:visited {
	text-decoration: none;
	color: #FFF;
}
#guidances #guidance-child .clearfix a:hover {
	text-decoration: none;
	color: #FFF;
}
#guidances #guidance-child .clearfix a:active {
	text-decoration: none;
	color: #FFF;
}
  body,td,th {
	font-family: "微软雅黑";
}
  </style>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  
  <body>
  <div id="guidances">
  	<div id="guidance-child">
    <ul class="clearfix">
    	<li class="firstli"><a href="#">科幻</a></li></li>
        <li><a href="#">青春</a></li>
        <li><a href="#">言情</a></li>
        <li><a href="#">艺术</a></li>
        <li><a href="#">动漫</a></li>
        <li><a href="#">青春</a></li>
        <li><a href="#">言情</a></li>
        <li><a href="#">艺术</a></li>
        <li><a href="#">动漫</a></li>
        <li><a href="#">青春</a></li>
        <li><a href="#">言情</a></li>
        <li><a href="#">艺术</a></li>
        <li><a href="#">动漫</a></li>
        <li class="last"><a href="#">娱乐</a></li>
    </ul>
    </div>
  </div>
  </body>
</html>
