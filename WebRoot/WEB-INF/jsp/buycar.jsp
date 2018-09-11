<%@ page language="java" import="java.util.*" contentType="text/html; charset=gbk"%>
<%@ taglib uri="/struts-tags"  prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>buycar</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
.wraps { width:580px; height:490px; margin:0 auto; overflow: hidden;}
#shopping { }
#shopping table { width:100%; line-height:24px; border-top:2px solid #dfc9b2; border-bottom:2px solid #dfc9b2; }
#shopping table th { background:#f7f4eb; color:#8a7152; }
#shopping table td { padding:10px 0; border-top:1px solid #dfc9b2; }
#shopping table td.thumb img { border:1px solid #dfdfe0; margin:0 10px; vertical-align:middle; }
#shopping table td.price,
#shopping table td.number { text-align:center; width:100px; border-left:1px solid #e1e1e1; }
#shopping table td.price { color:#cc3300; font-weight:bold; }
#shopping table td.delete { width:60px; text-align:center; border-left:1px solid #e1e1e1; }
#shopping table td.number dl { width:80px; margin:0 auto; }
#shopping table td.number dl dt { float:left; display:inline; width:25px; text-align:center; margin:0 4px; }
#shopping table td.number dl dt input { width:20px; border:1px solid #c9c9c9; padding:2px; text-align:center; }
#shopping table td.number dl dd { float:left; width:28px; margin:3px 0; text-align:center; line-height:20px; height:19px; overflow:hidden; border:1px solid #c9c9c9; cursor:pointer; }
#shopping .button { text-align:right; padding:10px 0; border: 1px solid red;}
#shopping .button div input{
    border-radius: 5px;
    background: -webkit-linear-gradient(top, #66B5E6, #fc7e31);
    background: -moz-linear-gradient(top, #fc7e31, #fc7e31);
    background: linear-gradient(top, #fc7e31, #fc7e31);
    background: -ms-linear-gradient(top, #fc7e31, #fc7e31);
    float: right;
}
#shopping .shadow { width:500px; margin:50px auto; }
.wraps #shopping form .button div {
	float: left;
}
.wraps #shopping form .button #confirmsubmitorder {
	float: right;
}
.wraps  h2 {
	font-size: 20px;
	line-height: 30px;
	border-bottom: 2px solid #fbaa62;
	/*padding-left: 25px;*/
}
.wraps #shopping form #button div #resultmoney{ color:#c00; font-weight:bold; font-size:20px; }
</style>
  </head>
  
  <body>
    <div class="wraps" style="border: 1px solid red;">
    <h2>我的购物车</h2>
	<div id="shopping">
		<form>
		<div style="height: 380px;border: 1px solid yellow;">
			<table>
				<tr><th>勾选</th>
					<th>商品名称</th>
					<th>商品价格</th>
					<th>购买数量</th>
					<th>操作</th>
			</tr><!-- 进行将 购物车的商品遍历  6行-->
				<s:iterator value="#session.buycar" var="bc">
				<tr id="product_id_1">
					<td align="center" valign="middle"><input type="checkbox" value="checkbox"></td>
					<td class="thumb">
					<img src='${pageContext.request.contextPath}/images/product/<s:property value="%{#bc.opbook.bimage}"/>.jpg' title="快把我带回家" style="width:100px;"/>
					<a href="javascript:bookdetails('<s:property value="%{#bc.opbook.bid}"/>')"><s:property value="%{#bc.opbook.bname}"/></a>
					</td>
					<td class="price" id="price_id_1">
						<span><s:property value="%{#bc.opbook.bprice}"/></span>
						<input type="hidden" value="99" />
					</td>
					<td class="number">
						<input type="button" value="-" onclick="reduceproductnumber()"/>
						<s:property value="%{#bc.opnum}"/>
							<input type="button" value="+"/>
					</td>
					<td class="delete"><a href="javascript:deleteproduct('<s:property value="%{#bc.opbook.bid}"/>');">删除</a></td>
				</tr>
				</s:iterator>
		</table>
	</div>
			<div class="button">
				<div>
					结算金额：<span id="resultmoney">￥</span>
				</div>
				<div id="confirmsubmitorder"><input type="submit" value="提交订单"/>
				</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
		function reduceproductnumber(){//减少商品数量
			
		}
		function deleteproduct(bid){//删除某样商品
			var json={bid:bid}
			$.ajax({//执行异步交互
			url:"BuyCarAction_reduceBuycarSomeProduct.action",
			type:"post",
			async:false,
			data:json,
			success:function(){
				alert("删除成功！");
				$("#showbook1").load("BuyCarAction_myBuyCarUI.action");
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("删除失败！异步请求错误！");
			}
		})
		}
		/*
		购物车分页
		*/
	</script>
</body>
</html>
