<%@ page language="java" import="java.util.*" contentType="text/html; charset=gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
</style>

</style>
  </head>
  
  <body>
<div id="hhh">

<a><h1 onclick="f()">布丁足迹;秒后自动跳转……</h1></a>
<a></a>
</div>
</body>
<script type="text/javascript">
function f(){
	$("#hhh a h1").text("enen")
	}
</script>
</html>
