<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>main</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <style type="text/css">
  #mains {
	width: 960px;
	margin-top: 5px;
	margin-bottom: 5px;
	padding-top:10px;
	margin:0 auto;
}
  #mains #showbook1 {
	float: left;
	width: 594px;
	height:500px;
	border: 1px solid #c3c3c3;
}
  #mains #left-context {
	float: left;
	border: 1px solid #c3c3c3;
	width: 180px;
	height: 500px;
}
  #mains #usermessage {
	float: right;
	width: 180px;
	height:250px;
	border: 1px solid #c3c3c3;
}
#mains #left-context #con-child h2 {
    background: #fff0d9;
    font-size: 18px;
    font-weight: bold;
    color: #853200;
    padding: 2px 8px;
}
#mains #left-context #con-child dl dt {
    color: #404040;
    font-weight: bold;
    font-size: 15px;
    background: #fafafa; 
    padding: 2px 10px;
}
#mains #left-context #con-child dl dd {
    margin-left: 10px;
    background: url(../images/bg.png) -232px -82px no-repeat;
    padding-left: 25px;
}
#mains #left-context #con-child dl dd {
    color: #666;
}
  #mains #news {
	float: right;
	border: 1px solid #c3c3c3;
	width: 180px;
	height: 248px;
}
#mains #left-context #recently {
	clear: left;
	width: 180px;
	height: 150px;
}
#mains #left-context #recently h2 {
    background: #fff0d9;
    font-size: 14px;
    color: #853200;
    padding: 2px 8px;
    width: 180xp;
}
#mains #showbook1 h2 {
	font-size: 14px;
	line-height: 30px;
	background: url(../images/bg.png) -230px -100px no-repeat;
	border-bottom: 2px solid #fbaa62;
	padding-left: 25px;
}
#mains #left-context #con-child {
	height: 350px;
	
}
 #mains #usermessage h2 {
 	 background: #fff0d9;
    font-size: 14px;
    color: #853200;
    padding: 2px 8px;
    width: 180xp;
 }
 #mains #news h2{
 	 background: #fff0d9;
    font-size: 14px;
    color: #853200;
    padding: 2px 8px;
    width: 180xp;
 }
   #mains #showbook2 {
	float: left;
	width: 958px;
	height:200px;
	border: 1px solid #c3c3c3;
}
#mains #showbook2 h2 {
	font-size: 14px;
	line-height: 30px;
	background: url(../images/bg.png) -230px -100px no-repeat;
	border-bottom: 2px solid #fbaa62;
	padding-left: 25px;
}
  </style>
  </head>
  
  <body>
  <div id="mains">
  	<div id="left-context">
  		<div id="con-child">
  	<h2>书籍分类</h2>
  		<dl>
				<dt>科技类</dt>
				<dd><a href="product-list.html">图书</a></dd>
				<dd><a href="product-list.html">音乐</a></dd>
				<dt>百货</dt>
				<dd><a href="product-list.html">家居</a></dd>
				<dd><a href="product-list.html">鞋包</a></dd>
				<dd><a href="product-list.html">家电</a></dd>
				<dd><a href="product-list.html">电脑办公</a></dd>
				<dd><a href="product-list.html">玩具文具</a></dd>
				<dd><a href="product-list.html">汽车用品</a></dd>
			</dl>
		</div>
		<div id="recently" ><h2>最近浏览</h2></div>
  	</div>
    <div id="showbook1">
    	<h2>今日特价</h2>
    </div>
    <div id="usermessage"><h2>用户信息</h2>
    	
    	</div>
    <div id="news"><h2>最新活动</h2></div>
    
    <div id="showbook2"><h2>热卖图书</h2></div>
  </div>
  </body>
</html>
