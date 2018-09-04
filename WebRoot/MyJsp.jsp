<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
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
<style type="text/css">
.hidebox {
	width: 90%;
	margin: auto;
	padding: 28px;
	height: 82%;
	border: 1px none #111;
	background-color: #FFF;
}

.hidebox .x {
	font-size: 15px;
	text-align: right;
	width: 80%;
}

.hidebox input {
	width: 90%;
	font-size: 15px;
	margin-top: 15px;
}

.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	background-color: black;
	z-index: 1001;
	-moz-opacity: 0.8;
	opacity: .80;
	filter: alpha(opacity = 88);
}

.white_content {
	display: none;
	position: absolute;
	top: 25%;
	left: 25%;
	width: 55%;
	height: 55%;
	padding: 20px;
	border: 10px solid orange;
	background-color: white;
	z-index: 1002;
	overflow: auto;
}
</style>

</style>
  </head>
  
  <body>
<!-- <span id="tiao">3</span><a href="javascript:countDown"></a>布丁足迹;秒后自动跳转……<meta http-equiv=refresh content=3;url='WEB-INF/jsp/main.jsp'</ul>
 -->
<!--脚本开始-->
<script language="javascript" type="">
function countDown(secs){
tiao.innerText=secs;
if(--secs>0)
setTimeout("countDown("+secs+")",1000);
}
countDown(3);
</script> 
  </body>
  <script type="text/javascript">
  	function tests(){
  		alert("i am test <A>");
  	}
  </script>
</html>
