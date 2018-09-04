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
	
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	#showbookdetails {
	margin:0 auto;
	width: 590px;
	height:500px;
	border: 1px solid #c3c3c3;
	overflow: hidden;
}
#showbookdetails #showbookdetails_chil1 h2 {
	font-size: 14px;color: #F60;display : inline
	line-height: 30px;
	border-bottom: 2px solid #fbaa62;
	overflow: hidden;
}
#showbookdetails #showbookdetails_chil2 #product .infos .thumb { float:left; 
width:120px; text-align:center;
height: 215px; overflow: hidden;
	padding-top: 50px;
	padding-bottom: 35px;
	padding-left: 70px;
	padding-right: 110px;
}
#showbookdetails #showbookdetails_chil2 #product h2 {font-weight: bold;font-size: 20px;border-bottom: 1px dashed #cfcfcf;overflow: hidden;display : inline
	}
#showbookdetails #showbookdetails_chil2 #product .infos .buy { float:left; width:250px; line-height:40px; height: 350px; overflow: hidden;}
#showbookdetails #showbookdetails_chil2 #product .infos .buy .price { color:#c00; font-weight:bold; font-size:24px; }
#showbookdetails #showbookdetails_chil2 #product .infos .buttons input {
	height:40px;
	width:100px;
	border-radius: 10px;
    background: -webkit-linear-gradient(top, #66B5E6, #fc7e31);
    background: -moz-linear-gradient(top, #fc7e31, #fc7e31);
    background: linear-gradient(top, #fc7e31, #fc7e31);
    background: -ms-linear-gradient(top, #fc7e31, #fc7e31);
	padding-right: 100px;padding-left: 50px;
	margin-right: 10px;
}
#showbookdetails #showbookdetails_chil2 #product .infos .buttons a {
	padding-right: 80px;
	color: #999;
}
#apDiv1 {
position:absolute;
left:50%;
top:0px;
width:100px;
height:100%;
display: none;
}
#apDiv1 #APDIV2{
	position: absolute;
	top:80px;
	left: -80px;
	width: 300px;
	height: 300px;
	z-index: 2;
	/*border: 1px solid red;*/
}
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
						<div class="thumb" ><img src="${pageContext.request.contextPath}/images/product/spark.jpg" width="146" height="149"
						 onmouseout="hide()" onmouseover="show()"/>
						</div>
						<div id="apDiv1">
							<div id="APDIV2">
								<img alt="" src="${pageContext.request.contextPath}/images/DetailImages/qc1.jpg" height="300px" width="300px;">
							</div>
						</div>
						<div class="buy">
							<p>商城价：<span class="price">￥99.00</span></p>
							<p>类别：青春</p>
							<p>库存：有货</p>
							<p>作者：阿姆斯特朗</p>
							<p>库存：有货</p>
						</div>
						<div class="buttons" style="clear:both; height:40px;" align="right" >
							<input type="button" name="button" value="立即购买" onclick="goBuy(${product.bid})" align="middle"/>
								<a href="javascript:void(0)" onclick="putInBuyCar(${product.bid})">放入购物车</a>
						</div>
					</div>
		</div>
  	  </div>
  	</div>
  	<script type="text/javascript">
  		function putInBuyCar(bid){
  			alert(bid);
  		}
  		function goBuy(bid){
  			alert(bid);
  		}
  		function show(){
  			$("#apDiv1").show();
  		}
  		function hide(){
  			$("#apDiv1").hide();
  		}
  	</script>
  </body>
</html>
