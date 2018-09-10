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
	font-size: 18px;color: #F60;display : inline
	line-height: 50px;
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
#showbookdetails #showbookdetails_chil2 #product h2 {font-weight: bold;font-size: 20px;border-bottom: 1px dashed #cfcfcf;overflow: hidden;display : inline}
#showbookdetails #showbookdetails_chil2 #product .infos .buy { float:left; width:200px; line-height:40px; height: 250px; overflow: hidden; padding-top: 50px;margin-left: 70px;}
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
	top:200px;
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
  			<h2>商品详情信息页></h2>
  		</div>
  		<div id="showbookdetails_chil2">
  			<div id="product" class="main">
				<h2>阿姆斯特朗回旋喷气式反重力阿姆斯特朗炮</h2>
					<div class="infos">
						<div class="thumb" ><img src='${pageContext.request.contextPath}/images/product/<s:property value="%{#session.detailsbook.bimage}"/>.jpg' width="146" height="149"
						 onmouseout="hide()" onmouseover="show()"/>
						</div>
						<div id="apDiv1">
							<div id="APDIV2">
								<img alt="" src='${pageContext.request.contextPath}/images/product/<s:property value="%{#session.detailsbook.bimage}"/>.jpg' height="300px" width="300px;">
							</div>
						</div>
						<div class="buy">
							<p>商城价：<span class="price">￥<s:property value="#session.detailsbook.bprice"/></span></p>
							<p>名称：<s:property value="#session.detailsbook.bname"/></p>
							<p>折扣：<s:property value="#session.detailsbook.bpress"/>折</p>
							<p>库存：<s:property value="#session.detailsbook.bnumber"/>本</p>
							<p>作者：<s:property value="#session.detailsbook.bauthor"/></p>
						</div>
						<!-- 图书的简介 -->
						<div  id="description" style="text-overflow: ellipsis; width: 580px;overflow: hidden;height: 100px;clear: both;">
							<h4 style="f"><strong>书籍简介：</strong></h4>
							<p style="text-indent:2em;overflow: hidden;"><s:property value="#session.detailsbook.bdescription"/></p>
						</div>
						<div class="buttons" style="clear:both; height:40px;" align="right" >
							<input type="button" name="button" value="立即购买" onclick="goBuy()" align="middle"/>
								<a href="javascript:putInBuyCar()">放入购物车</a>
						</div>
					</div>
		</div>
  	  </div>
  	</div>
  	<script type="text/javascript">
  		function putInBuyCar(){
  		if(checkalreadylogin()){
  			var json={opnum:1}//封装图书信息
    		alert("添加中！")//
    		
    		$.ajax({//执行异步交互添加到购物车
			url:"BuyCarAction_addBookToBuyCar.action",
			type:"post",
			async:false,
			data:json,
			success:function(){
				alert("添加成功！");
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("异步请求错误");
			}
		})
    		}else{
    			jumps("UserAction_buyCarNullJumpPage.action");
    		}
  			
  		}
  		function goBuy(){
  		if(checkalreadylogin()){
    		$("#showbook1").load("UserAction_myBuyCar.action");//跳转到购买界面  直接生成订单
    		}else{
  				jumps("UserAction_buyCarNullJumpPage.action");
  			}
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
