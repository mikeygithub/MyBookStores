<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
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
    
    <title>recentlylook</title>
    
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
  </head>
  
  <body>
		<div id="recentlylooks" style="width: 160px;height: 122px;border: 1 solid red;clear: both;background: #fff0d9;
			padding-top: 2px;padding-left: 15px;margin: 0 auto;">
			<!-- 迭代最近浏览的商品  最多显示4条-->
			<form><table> 
			<s:iterator value="#session.reclentlook" var="rb">
			<tr>
				<td><img src='${pageContext.request.contextPath}/images/product/<s:property value="%{#rb.bimage}"/>.jpg' 
				title="快把我带回家" style="width:25px;height: 25px;"/></td>
				<td><s:property value="%{#rb.bname}"/></td>
				</tr>
				
					</s:iterator>
				</table>
			</form>
			<!-- 迭代完成 -->
		</div>
  <script type="text/javascript">
  	function bookdetails02(bid){
  		//alert(bid);
  		var json={bid:bid}
  				//将该商品放进最近浏览模块session
  		putbooktorecently(bid);
  		
  		$.ajax({//执行异步交互将要查看的商品详情放入session
			url:"BookAction_BookDetails.action",
			type:"post",
			async:true,
			data:json,
			success:function(){
			$("#inputbox").empty();
			$("#showbook1").load('BookAction_BookDetailsUI.action');
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("异步请求错误");
			}
		})
  	}
  </script>
  </body>
</html>
