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
  #header .help {
	float: right;
	margin:0 auto;
}
  #header #logo {
	float: left;
}
  #header {
	padding-top: 10px;
	overflow: hidden;
	width: 960px;margin:0 auto;
}
  a:link {
	color: #03C;
}
  </style>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  
  <body>
    <div id="header" class="wrap">
		<div id="logo"><img src="../../images/logo.jpg" style="width: 171px; height: 92px; "/></div>
			<div class="help"><a href="#" class="shopping">购物车</a><a href="login.html">登录</a><a href="register.html">注册</a><a href="guestbook.html">留言</a>
		</div>
	</div>
  </body>
</html>
