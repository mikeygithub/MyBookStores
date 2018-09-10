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
    
    <title>onetypebook</title>
    
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
 #showtypebook {
	float: left;
	width: 590px;
	height:500px;
	border: 1px solid #c3c3c3;
	overflow: hidden;
}
  #showtypebook #sh_chil1 h2 {
	font-size: 14px;
	line-height: 30px;
	border-bottom: 2px solid #fbaa62;
	padding-left: 20px;
}
#showtypebook #sh_chil1 ul li{
width: 125px;
height: 140px;
line-height: 18px;
font-size: 14px;
overflow: hidden;
float:left;
margin-right:10px;
margin-left: 10px;
margin-top:2px;
border: 1px solid #c3c3c3;
}
  #showtypebook #sh_chil1 ul li dl dt{
text-align: center;}

  #showtypebook #sh_chil1 ul li dl .price {
text-align: center;
color: #c30;
font-weight: bold;
 
}
  #showtypebook #sh_chil1 ul li dl .title {
text-align: center;
height: 20px;
}
  #showtypebook #sh_chil1 {
}
  #showtypebook #sh_chil2{margin:0 auto; height: 25px; overflow: hidden;}
  #showtypebook #sh_chil2 ul {display:inline-block;margin-top: 2px;}
  #showtypebook #sh_chil2 ul .up {width: 80px;padding-top: 10px;font-size: 10px;}
  #showtypebook #sh_chil2 ul .down {width: 80px;padding-top: 10px;font-size: 10px}
  #showtypebook #sh_chil2 ul li {width: 20px; float:left; border:1px solid #eee; line-height:5px; padding:3 2px; margin:0 1px; display:inline; }
  #showtypebook #sh_chil2 ul li.current {font-weight:bold; color:#630; padding-top: 3px;}
 </style>
  </head>
  
  <body>
    <div id="showtypebook">
    	<div id="sh_chil1">
    	<h2>当前书籍类型：<span  id="sometitle"></span></h2><!-- 将某一类的图书进行遍历 -->
    		<ul style="margin-top: 5px;">
    		<s:iterator value="#session.sometypepage.records" var="sp">
    		<li>
    			<dl>
					<dt>
					<a href="javascript:void(0)" onclick="bookdetails('<s:property value="%{#sp.bid}"/>')">
					<img src='${pageContext.request.contextPath}/images/product/<s:property value="%{#sp.bimage}"/>.jpg' title="快把我带回家"/></a>
					</dt>
					<dd class="title"><a href="javascript:void(0)" onclick="bookdetails('<s:property value="%{#sp.bid}"/>')"><s:property value="%{#sp.bname}"></s:property></a></dd>
					<dd class="price">￥<s:property value="%{#sp.bprice}"></s:property></dd>
				</dl>
    		</li>
    		</s:iterator>
    		</ul>
    	</div>
    	<div id="sh_chil2" align="center" style="margin-top: 445px;margin-bottom:0px;clear: both;"><!-- 分页按钮 -->
    		<ul>
    				<li class="up"><a href="javascript:firstpagesometype('<s:property value="%{#session.sometypepage.nowbooktypeid}"/>')">首页</a></li>
					<li class="up"><a href="javascript:uppagesometype('<s:property value="%{#session.sometypepage.nowbooktypeid}"/>')">上一页</a></li>
					<li class="middleinput2"><input id="pagesometypebook" align="middle" type="text" value='<s:property value="%{#session.sometypepage.currentPageNum}"/>'
					style="text-align:center;padding-top:0px;margin-top:0px; height: 20px;width: 20px;"></li>
					<li class="down"><a href="javascript:nextpagesometype('<s:property value="%{#session.sometypepage.nowbooktypeid}"/>')">下一页</a></li>
					<li class="up"><a href="javascript:endpagesometype('<s:property value="%{#session.sometypepage.nowbooktypeid}"/>')">尾页</a></li>
					<li class="down"><a>共<s:property value="%{#session.sometypepage.totalPage}"/>页</a></li>
			</ul>
    	</div>
    </div>
    <script type="text/javascript">
    	/*
    	进行分页显示
    	*/
    	function loadpagesometype(json){
    	
    	$.ajax({//执行异步交互
			url:"BookAction_getSomeTypeBook.action",
			type:"post",
			async:false,
			data:json,
			success:function(){
				$("#showbook1").load("BookAction_getSomeTypeBookUI.action");
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("异步请求错误");
			}
		})
		}
    function firstpagesometype(typeId){
    	alert("首页");	
    	var json={
    		sometypecrruentPageNum:parseInt(1),
    		typeid:typeId
    		}
    		loadpagesometype(json);
    	
    }
    	function endpagesometype(typeId){alert("尾页");
    		if(parseInt($("#pagesometypebook").val())==$.trim("${sessionScope.sometypepage.totalPage}")){alert("已到末页");return;}
    	else{
    		var json={
    		sometypecrruentPageNum:parseInt($.trim("${sessionScope.sometypepage.totalPage}")),
    		typeid:typeId
    		}
    		loadpagesometype(json);
    		}
    	}
    	function nextpagesometype(typeId){
    	if(parseInt($("#pagesometypebook").val())==$.trim("${sessionScope.sometypepage.totalPage}")){alert("已到末页");return;}
    	else{
    		var json={
    		sometypecrruentPageNum:parseInt($("#pagesometypebook").val())+1,
    		typeid:typeId
    		}
    		loadpagesometype(json);
    	}}
    	
    	function uppagesometype(typeId){alert("上一页");
    	if(parseInt($("#pagesometypebook").val())==1){alert("已到末页");return;}
    	else{
    		var json={
    		sometypecrruentPageNum:parseInt($("#pagesometypebook").val())-1,
    		typeid:typeId
    		}
    		loadpagesometype(json);
    	}
    	}
    	
    </script>
  </body>
</html>
