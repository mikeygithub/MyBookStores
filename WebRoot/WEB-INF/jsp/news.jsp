<%@ page language="java" import="java.util.*" contentType="text/html; charset=gbk"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>news</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!-- <link rel="stylesheet" type="text/css" href="../../css/style-navbar.css">-->
	
<style type="text/css">
</style>
  </head>
  
  <body>
    <div id="news_childs" style="height: 500px;width: 590px;background: red;margin: 0 auto;">
    	<h2 style="font-size: 14px;
	line-height: 30px;
	border-bottom: 2px solid #fbaa62;
	padding-left: 25px;">当前位置：新闻活动页</h2>
    	<div id="news_titles" style="float: left;width: 590px;height:50px; margin-top:20px;background: yellow;">
    		<s:property value="#session.someonenews.ntitle"/>
    	</div>
    	<div>
    		<p>
    			<s:property value="#session.someonenews.ncontext"/>
    		</p>
    	</div>
    </div>
    <script type="text/javascript">			
    </script>
  </body>
</html>
