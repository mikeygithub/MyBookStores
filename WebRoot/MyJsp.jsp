<%@ page language="java" import="java.util.*" contentType="text/html; charset=gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>网上书店</title>
    
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
<input type="text" style="width: 10px;"title="换一张试试">
<h2 id="h2"></h2>
<s:debug></s:debug>
<span style="color:#F00">测试文字 ThinkCSS</span>


<p style="text-indent:2em">
<font color='ff0000'>这是一个测试</font></p>


<div style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;
width:100px;">双宽带+无线WiFi 网速升3倍 WiFi手机设置无线上网的方法</div>


	<ul>
		<li style="border: 1px solid red;width: 140px;height: 130px;line-height: 15px;font-size: 14px;overflow: hidden;float:left;
margin-right:5px;
margin-left: 10px;
margin-top:5px;">
			<dl>
				<dt>
					<a href="javascript:void(0)" onclick="bookdetails('<s:property value="%{#sp.bid}"/>')">
					<img src='${pageContext.request.contextPath}/images/product/<s:property value="%{#sp.bimage}"/>.jpg' title="快把我带回家"/></a>
				</dt>
				<dd>价格</dd>
				<dd>数量</dd>			
			</dl>				
		</li>
		
		<li style="border: 1px solid red;width: 140px;height: 130px;line-height: 15px;font-size: 14px;overflow: hidden;float:left;
margin-right:5px;
margin-left: 10px;
margin-top:5px;">
			<dl>
				<dt>
					<a href="javascript:void(0)" onclick="bookdetails('<s:property value="%{#sp.bid}"/>')">
					<img src='${pageContext.request.contextPath}/images/product/<s:property value="%{#sp.bimage}"/>.jpg' title="快把我带回家"/></a>
				</dt>
				<dd>价格</dd>
				<dd>数量</dd>			
			</dl>				
		</li>
		
	</ul>
</body>
<script type="text/javascript">
function f(){
	$("#hhh h1").text("enen")
	}
	
	$().ready(function(){
	alert("jquery");
	$("#h2").text("Hello world");
	
})
</script>
</html>
