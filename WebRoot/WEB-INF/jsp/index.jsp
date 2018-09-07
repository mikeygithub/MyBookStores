<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>MyBookStores</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="MyBookStores">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
	.hidebox {width: 90%;margin: auto;padding: 10px;height: 82%;border: 1px none #111;background-color: #FFF;}

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
	top: 20%;
	left: 30%;
	width: 35%;
	height: 40%;
	padding: 20px;
	border: 10px solid orange;
	background-color: white;
	z-index: 1002;
	overflow: auto;
}
</style>
  </head>
  
  <body>
    <div id="header">
   		<jsp:include page="top.jsp"></jsp:include>
   </div>
   <div id="guidance">
   		<jsp:include page="guidance.jsp"></jsp:include>
   </div>
   <div id="main">
   		<jsp:include page="main.jsp"></jsp:include>
   </div>
   <div id="foot">
   		<jsp:include page="foot.jsp"></jsp:include>
   	</div>
   	<div id="light2" class="white_content">
							<a href="javascript:void(0)"
								onclick="document.getElementById('light2').style.display='none';document.getElementById('fade').style.display='none'">关闭窗口</a>
							<div id='inputbox' class="hidebox">
								
							</div>
						</div>
	<div id="fade" class="black_overlay"></div>
  </body>
  <script type="text/javascript">
  $().ready(function(){
  	getSpecialpage();//当页面加载的时候将两个模块的book加载进值栈的session
	getHotpage();
})
function getHotpage(){
	var json={hotcrruentPageNum:$("#pagehot").val()}//获取当前页码
	$.ajax({//执行异步交互
			url:"BookAction_loadHotBook.action",
			type:"post",
			async:true,
			data:json,
			success:function(){},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("异步请求错误");
			}
		})
}
function getSpecialpage(){
	var json={specialcrruentPageNum:$("#pagespecial").val()}//获取当前页码
	alert("当前特价页码"+$("#pagespecial").val());
	$.ajax({//执行异步交互
			url:"BookAction_loadSpecialBook.action",
			type:"post",
			async:true,
			data:json,
			success:function(){},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("异步请求错误");
			}
		})
}

  </script>
</html>
