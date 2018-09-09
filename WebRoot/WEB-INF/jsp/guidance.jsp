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
<script src="http://code.jquery.com/jquery-latest.js"></script>
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
        <li class="firstli"><a href="javascript:findBookByType(1)">青春</a></li>
        <li><a href="javascript:findBookByType(2)">小说</a></li>
        <li><a href="javascript:findBookByType(3)">文学</a></li>
        <li><a href="javascript:findBookByType(4)">艺术</a></li>
        <li><a href="javascript:findBookByType(5)">动漫</a></li>
        <li><a href="javascript:findBookByType(6)">娱乐</a></li>
        <li><a href="javascript:findBookByType(7)">旅游</a></li>
        <li><a href="javascript:findBookByType(8)">地理</a></li>
        <li><a href="javascript:findBookByType(9)">生活</a></li>
        <li><a href="javascript:findBookByType(10)">婚恋</a></li>
        <li><a href="javascript:findBookByType(11)">成长</a></li>
        <li><a href="javascript:findBookByType(12)">保健</a></li>
        <li><a href="javascript:findBookByType(13)">体育</a></li>
        <li><a href="javascript:findBookByType(14)">励志</a></li>
        <li class="last"><a href="javascript:findBookByType(15)">管理</a></li>
    	</ul>
    </div>
  </div>
  <script type="text/javascript">
  	function findBookByType(typeId){
  		//alert(typeId);
  		var json={typeid:typeId,sometypecrruentPageNum:$("#pagesometypebook").val()}
  		$.ajax({//执行异步交互
			url:"BookAction_getSomeTypeBook.action",
			type:"post",
			async:false,
			data:json,
			success:function(){
				$("#showbook1").load("BookAction_getSomeTypeBookUI.action");
				$("#sometitle").text("类");//标题栏
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("异步请求错误");
			}
		})
  	}
  </script>
  
  </body>
</html>
