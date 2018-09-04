<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
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

  <style type="text/css">
  
  #showproductmessage {
  		height: 500px;
  		width: 590px;
  }
   #showproductmessage #product h1 {
    padding: 0 10px;
    font-size: 18px;
    line-height: 50px;
    border-bottom: 1px dashed #cfcfcf;
}
#showproductmessage #product .infos .thumb { float:left; width:320px; text-align:center; }
#showproductmessage #product .infos .buy { float:right; width:440px; line-height:40px; }
#showproductmessage #product .infos .buy .price { color:#c00; font-weight:bold; font-size:24px; }
#showproductmessage #product .infos .buy .button { border:1px solid #ffefd2; padding:10px; background:#fff8e7; margin:20px auto; text-align:center; }
#showproductmessage #product .infos .buy .button input { border:0; margin:0 10px; background:url(../images/bg.png) left -176px; height:35px; width:144px; cursor:pointer; }
#showproductmessage #product .introduce .text { padding:20px; font-size:14px; line-height:25px; }

 </style>
 <body>
    <div id="showproductmessage">
    	<div id="product" class="main" style="border:1px dashed #cfcfcf; " >
		<h1>铁三角 Audio-Technica ATH-EQ300M-SV 银色 挂耳式耳机</h1>
		<div class="infos">
			<div class="thumb"><img src="images/product/0.jpg" /></div>
			<div class="buy">
				<p>商城价：<span class="price">￥99.00</span></p>
				<p>库　存：有货</p>
				<p>库　存：有货</p>
				<p>库　存：有货</p>
				<p>库　存：有货</p>
				<div class="button"><input type="button" name="button" value="" onclick="goBuy(1)" /><a href="#">放入购物车</a></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="introduce">
			<h2><strong>商品详情</strong></h2>
			<div class="text">
				sdf<br />
				sdf<br />
			</div>
		</div>
	</div>
</div>
    </div>
  </body>
</html>
