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
    
    <title>BookDetails page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	#showbookdetails {
	margin:0 auto;
	float: left;
	width: 590px;
	height:500px;
	border: 1px solid #c3c3c3;
	overflow: hidden;
}
#showbookdetails #showbookdetails_chil1 h2 {
	font-size: 14px;color: #F60;
	line-height: 30px;
	border-bottom: 2px solid #fbaa62;
	
}
#showbookdetails #showbookdetails_chil2 #product .infos .thumb { float:left; width:380px; text-align:center;height: 300px; overflow: hidden;
	padding-top:75px; 
	padding-bottom: 75px;
	padding-left: 115px;
	padding-right: 115px;
}
#showbookdetails #showbookdetails_chil2 #product h2 {font-weight: bold;font-size: 20px;}
#showbookdetails #showbookdetails_chil2 #product .infos .buy { float:left; width:200px; line-height:40px; height: 300px; overflow: hidden;}
#showbookdetails #showbookdetails_chil2 #product .infos .buy .price { color:#c00; font-weight:bold; font-size:24px; }
#showbookdetails #showbookdetails_chil2 #product .infos #buttons input {}
</style>
  </head>
  
  <body>
  	<div id="showbookdetails">
  		<div id="showbookdetails_chil1">
  			<h2>商品详情信息</h2>
  		</div>
  		<div id="showbookdetails_chil2">
  			<div id="product" class="main">
				<h2>铁三角 Audio-Technica ATH-EQ300M-SV 银色 挂耳式耳机</h2>
					<div class="infos">
						<div class="thumb" style="border: 2px solid #fbaa62; overflow: hidden;"><img src="${pageContext.request.contextPath }/images/product/speak1.jpg" />
						</div>
						<div class="buy" style="border: 2px solid #fbaa62;">
							<p>商城价：<span class="price">￥99.00</span></p>
							<p>类别：青春</p>
							<p>库存：有货</p>
							<p>作者：阿姆斯特朗</p>
							<p>库存：有货</p>
						</div>
						<div class="buttons" style="clear:both; border: 3px solid red; height:40px;" align="right" >
							<input type="button" name="button" value="" onclick="goBuy(1)" style=" width:145px; height:40px;  border:0; background:url(../images/buy.jpg) no-repeat left top" />
								<a href="#" style="">放入购物车</a>
						</div>
					</div>
		</div>
  	  </div>
  	</div>
  </body>
</html>
