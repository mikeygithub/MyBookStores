<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>������</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="http://code.jquery.com/jquery-latest.js"></script>
  </head>
  
  <body>
  <script type="text/javascript">
		$().ready(function(){
  		$.ajax({url:"NewsAction_getNwesMessages.action",async:true});//�������µĻ�������ŵ�session
  		$.ajax({url:"BookAction_loadHotBook.action",async:false});//����HotBook
  		$.ajax({url:"BookAction_loadSpecialBook.action",async:false});//����SpecialBook
  		
  		//$(location).attr("href",'index.jsp');
  		window.location.href="BookAction_index.action";
  		//alert("�����������");
  	})
	</script>
  </body>
</html>
