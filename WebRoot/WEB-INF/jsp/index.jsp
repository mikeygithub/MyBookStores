<%@ page language="java" import="java.util.*" contentType="text/html; charset=gbk"%>
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
  </body>
</html>
