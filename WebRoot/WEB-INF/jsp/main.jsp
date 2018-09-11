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
    
    <title>main</title>
    
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
  #mains {
	width: 960px;
	margin-top: 5px;
	margin-bottom: 5px;
	padding-top:10px;
	margin:0 auto;
}
  #mains #showbook1 {
	float: left;
	width: 590px;
	height:500px;
	border: 1px solid #c3c3c3;
	overflow: hidden;
}
  #mains #left-context {
	float: left;
	border: 1px solid #c3c3c3;
	width: 180px;
	height: 500px;
	overflow: hidden;
}
  #mains #usermessage {
	float: right;
	width: 180px;
	height:250px;
	border: 1px solid #c3c3c3;
}
#mains #left-context #con-child h2 {
    background: #fff0d9;
    font-size: 15px;
    font-weight: bold;
    color: #853200;
    padding: 2px 8px;
}
#mains #left-context #con-child dl dt {
    color: #404040;
    font-weight: bold;
    font-size: 15px;
    background: #fafafa; 
    padding: 2px 10px;
}
#mains #left-context #con-child dl dd {
    margin-left: 10px;
    padding-left: 25px;
}
#mains #left-context #con-child dl dd {
    color: #666;
}
  #mains #news {
	float: right;
	border: 1px solid #c3c3c3;
	width: 180px;
	height: 248px;
}
#mains #left-context #recently {
	clear: left;
	width: 180px;
	height: 150px;
	overflow: hidden;
}
#mains #left-context #recently h2 {
    background: #fff0d9;
    font-size: 14px;
    color: #853200;
    
    width: 180xp;border-bottom: 2px solid #fbaa62;
}
#mains #showbook1 #show1_chil1 h2 {
	font-size: 14px;
	line-height: 30px;
	border-bottom: 2px solid #fbaa62;
	padding-left: 25px;
}
#mains #left-context #con-child {
	height: 350px;
	
}
 #mains #usermessage h2 {
 	 background: #fff0d9;
    font-size: 14px;
    color: #853200;
    padding: 2px 8px;
    width: 180xp;border-bottom: 2px solid #fbaa62;
 }
 #mains #news h2{
 	 background: #fff0d9;
    font-size: 14px;
    color: #853200;
    padding: 2px 8px;
    width: 180xp;border-bottom: 2px solid #fbaa62;
 }
   #mains #showbook2 {
	float: left;
	width: 958px;
	height:200px;
	border: 1px solid #c3c3c3;
}
#mains #showbook2 h2 {
	font-size: 14px;
	line-height: 30px;
	border-bottom: 2px solid #fbaa62;
	padding-left: 25px;
}
  #mains #usermessage table {
	font-size: 12px;
	height: 95%;
	width: 100%;
	overflow: hidden;
}

#mains #showbook1 #show1_chil1 ul li{
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
#mains #showbook1 #show1_chil1 ul li dl dt{
text-align: center;}

#mains #showbook1 #show1_chil1 ul li dl .price {
text-align: center;
color: #c30;
font-weight: bold;
 
}
#mains #showbook1 #show1_chil1 ul li dl .title {
text-align: center;
height: 20px;
}
#mains #showbook1 #show1_chil1 {
	
}

#mains #showbook2 div ul li{
width: 140px;
height: 130px;
line-height: 15px;
font-size: 14px;
overflow: hidden;
float:left;
margin-right:5px;
margin-left: 10px;
margin-top:5px;
border: 1px solid #c3c3c3;
}
#mains #showbook2 div ul li dl dt{text-align: center;}
#mains #showbook2  div ul li dl .price {text-align: center;color: #c30;font-weight: bold;}
#mains #showbook2 div ul li dl .title {text-align: center;}
#mains #showbook2 .pager {margin:0 auto; height: 25px; overflow: hidden;}
#mains #showbook2 .pager ul {display:inline-block;margin-top: 0px;}
#mains #showbook2 .pager ul .up {width: 80px;padding-top: 10px;font-size: 10px}
#mains #showbook2 .pager ul .down {width: 80px;padding-top: 10px;font-size: 10px}
#mains #showbook2 .pager ul li {width: 20px; float:left; border:1px solid #eee; line-height:5px; padding:3 2px; margin:0 1px; display:inline; }
#mains #showbook2 .pager ul li.current {font-weight:bold; color:#630; padding-top: 3px;}

#mains #showbook1 #show1_chil2{margin:0 auto; height: 25px; overflow: hidden;}
#mains #showbook1 #show1_chil2 ul {display:inline-block;margin-top: 2px;}
#mains #showbook1 #show1_chil2 ul .up {width: 80px;padding-top: 10px;font-size: 10px;}
#mains #showbook1 #show1_chil2 ul .down {width: 80px;padding-top: 10px;font-size: 10px}
#mains #showbook1 #show1_chil2 ul li {width: 20px; float:left; border:1px solid #eee; line-height:5px; padding:3 2px; margin:0 1px; display:inline; }
#mains #showbook1 #show1_chil2 ul li.current {font-weight:bold; color:#630; padding-top: 3px;}
#mains #left-context #con-child {overflow: hidden;}
#mains #left-context #con-child dl dd a {font-size: 15px;font-family: "Times New Roman", Times, serif;}
#mains #left-context #con-child dl dd a:link {color: #999;}
#mains #left-context #con-child dl dd a:visited {color: #999;}
#mains #left-context #con-child dl dd a:hover {color: #999;}
#mains #left-context #con-child dl dd a:active {color: #999;}
 </style>
  </head>
  
  <body>
  <div id="mains">
  	<div id="left-context">
  		<div id="con-child">
  	<h2>书籍分类</h2>
  		<dl>
				<dt>科技类</dt>
				<dd><a href="javascript:findBookByType(2)">科学技术</a></dd>
				<dd><a href="javascript:findBookByType(2)">航天科学</a></dd>
				<dd><a href="javascript:findBookByType(2)">科文商科</a></dd>
				<dd><a href="javascript:findBookByType(2)">网络技术</a></dd>
				<dd><a href="javascript:findBookByType(2)">计算机类</a></dd>
				<dt>百科类</dt>
				<dd><a href="javascript:findBookByType(2)">心理健康</a></dd>
				<dd><a href="javascript:findBookByType(2)">历史文化</a></dd>
				<dd><a href="javascript:findBookByType(2)">考试资料</a></dd>
				<dd><a href="javascript:findBookByType(2)">医学书籍</a></dd>
				<dd><a href="javascript:findBookByType(2)">法律资料</a></dd>
				<dd><a href="javascript:findBookByType(2)">汽车指南</a></dd>
				<dt>其他类</dt>
				<dd><a href="javascript:findBookByType(2)">工具书籍</a></dd>
			</dl>
		</div>
		<div id="recently" ><h2>最近浏览</h2></div>
  	</div>
    <div id="showbook1">
    	<div id="show1_chil1">
    	<h2>今日特价</h2><!-- 将图书活动的图书进行遍历 -->
    		<ul style="margin-top: 5px;">
    		<s:iterator value="#session.specialpage.records" var="sp">
    		<li>
    			<dl>
					<dt>
					<a href="javascript:void(0)" onclick="bookdetails('<s:property value="%{#sp.bid}"/>')">
					<img src='${pageContext.request.contextPath}/images/product/<s:property value="%{#sp.bimage}"/>.jpg' title="快把我带回家"/></a>
					</dt>
					<dd class="title"><a href="javascript:void(0)" onclick="bookdetails('<s:property value="%{#sp.bid}"/>')"><s:property value="%{#sp.bname}"></s:property></a></dd>
					<dd class="price">￥<s:property value="%{#sp.bspecialprice}"></s:property></dd>
				</dl>
    		</li>
    		</s:iterator>
    		</ul>
    	</div>
    	<div id="show1_chil2" align="center" style="margin-top: 445px;margin-bottom:0px;clear: both;"><!-- 分页按钮 -->
    			<ul>
    				<li class="up"><a href="javascript:void(0)" onclick="getSpecialpage()">首页</a></li>
					<li class="up"><a href="javascript:void(0)" onclick="specialuppage()">上一页</a></li>
					<li class="middleinput2"><input id="pagespecial" align="middle" type="text" value='<s:property value="%{#session.specialpage.currentPageNum}"/>'
					style="text-align:center;padding-top:0px;margin-top:0px; height: 20px;width: 20px;"></li>
					<li class="down"><a href="javascript:void(0)" onclick="specialnextpage()">下一页</a></li>
					<li class="up"><a href="javascript:void(0)" onclick="specialendpage()">尾页</a></li>
					<li class="down"><a>共<s:property value="%{#session.specialpage.totalPage}"/>页</a></li>
				</ul>
    	</div>
    </div>
    <div id="usermessage"><h2>用户信息</h2>
    	<div style="height: 84px; width:178px; float: left;padding-left:64px;padding-top: 49px;overflow: hidden;"><img alt="" src="${pageContext.servletContext.contextPath}/images/userheadimage.jpg" title="快戳我,查看个人信息"></div>
    	<div style="height:35px;width:178px;clear: left;padding-top: 10px;padding-left: 10px;overflow: hidden;">
    		用户名：<s:property value="#session.usermessage.uname"/><span id="usernames" style="font-size: 12px;"></span>
    		</div>
    	<div style="height: 50px;width:178px;clear: left;"><table>
    	<tr>
    		<td><a href="javascript:void(0)" onclick="">修改资料</a></td>
    		<td><a href="javascript:void(0)" onclick="">物流跟踪</a></td>
    		<td><a href="javascript:void(0)" onclick="">我的订单</a></td>
    	</tr>
    	</table></div>
    	</div>
    <div id="news"><h2>最新活动</h2></div>
    
    <div id="showbook2"><h2>热卖图书</h2>
  			<div style="overflow: hidden; height: 140px; ">
  				<ul>
  					<c:forEach var="product" items="${hotpage.records}" begin="0"  end="6"><!-- 开始遍历商品 -->
    					<li>
    						<dl>
						<dt><a href="javascript:void(0)" onclick="bookdetails('${product.bid}')">
						<img src="${pageContext.request.contextPath}/images/product/${product.bimage}.jpg" title="快把我带回家"/></a></dt>
						<dd class="title"><a href="javascript:void(0)" onclick="bookdetails('${product.bid}')">${product.bname}</a></dd>
						<dd class="price">￥${product.bprice}</dd>
							</dl>
    					</li>
    				</c:forEach>
    			</ul>
			</div>
			
			<div class="pager" align="center">
				<ul>
					<li class="up"><a href="javascript:void(0)" onclick="getHotpage()">首页</a></li>
					<li class="up"><a href="javascript:void(0)" onclick="hotuppage()">上一页</a></li>
					<li class="middleinput1"><input id=pagehot align="middle" type="text" value='<s:property value="%{#session.hotpage.currentPageNum}"/>'
					style="text-align:center;padding-top:0px;margin-top:0px; height: 20px;width: 20px;"></li>
					<li class="down"><a href="javascript:void(0)" onclick="hotnextpage()">下一页</a></li>
					<li class="down"><a href="javascript:void(0)" onclick="hotendpage()">尾页</a></li>
					<li class="down"><a>共<s:property value="%{#session.hotpage.totalPage}"/>页</a></li>
				</ul>
			</div>
	</div>
  </div>
  <script type="text/javascript">
  	function bookdetails(bid){
  		alert(bid);
  		var json={bid:bid}
  		$.ajax({//执行异步交互
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
  	/*
  	*判断用户是否已经登入
  	*/
$().ready(function(){
  		if(!checkalreadylogin()){
  			$("#usernames").text("你还没有登入哦");	}
  	})
  </script>
  </body>
</html>
