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
#shopping .button { text-align:right; padding:5px 0; /*border: 1px solid red;*/height: 50px;}
#shopping .button div input{
    border-radius: 5px;
    background: -webkit-linear-gradient(top, #66B5E6, #fc7e31);
    background: -moz-linear-gradient(top, #fc7e31, #fc7e31);
    background: linear-gradient(top, #fc7e31, #fc7e31);
    background: -ms-linear-gradient(top, #fc7e31, #fc7e31);
    float: right;
    height: 40px;
    width: 80px;
    
}
#shopping .shadow { width:500px; margin:50px auto; }
.wraps #shopping form .button div {
	float: left;
}
.wraps #shopping form .button #confirmsubmitorder {
	float: right;height: 50px;
}
.wraps  h2 {
	font-size: 20px;
	line-height: 30px;
	border-bottom: 2px solid #fbaa62;
	/*padding-left: 25px;*/
}
.wraps #shopping form #button div #resultmoney{ color:#c00; font-weight:bold; font-size:20px; }
.wraps #shopping form #buyshow1_chil2{margin:0 auto; height: 25px; overflow: hidden;}
.wraps #shopping form #buyshow1_chil2 ul {display:inline-block;margin-top: 2px;}
.wraps #shopping form #buyshow1_chil2 ul .up {width: 80px;padding-top: 10px;font-size: 10px;}
.wraps #shopping form #buyshow1_chil2 ul .down {width: 80px;padding-top: 10px;font-size: 10px}
.wraps #shopping form #buyshow1_chil2 ul li {width: 20px; float:left; border:1px solid #eee; line-height:5px; padding:3 2px; margin:0 1px; display:inline; }
.wraps #shopping form #buyshow1_chil2 ul li.current {font-weight:bold; color:#630; padding-top: 3px;}
</style>
  </head>
  
  <body>
    <div class="wraps">
    <h2>�ҵĹ��ﳵ</h2>
	<div id="shopping">
		<form>
		<div style="height: 380px;border: 1px solid yellow;">
			<table>
				<tr><th>��ѡ</th>
					<th>��Ʒ����</th>
					<th>��Ʒ�۸�</th>
					<th>��������</th>
					<th>����</th>
			</tr><!-- ���н� ���ﳵ����Ʒ����  6��-->
				<s:iterator value="#session.newBuyCarPage.records" var="bc">
				<tr id="product_id_1">
					<td align="center" valign="middle"><input type="checkbox" value="checkbox"></td>
					<td class="thumb">
					<img src='${pageContext.request.contextPath}/images/product/<s:property value="%{#bc.opbook.bimage}"/>.jpg' title="����Ҵ��ؼ�" style="width:30px;height: 30px;"/>
					<a href="javascript:bookdetails('<s:property value="%{#bc.opbook.bid}"/>')"><s:property value="%{#bc.opbook.bname}"/></a>
					</td>
					<td class="price" id="price_id_1">
						<span><s:property value="%{#bc.opbook.bprice}"/></span>
						<input type="hidden" value="99" />
					</td>
					<td class="number">
						<input type="button" value="-" onclick="reduceproductnumber('<s:property value="%{#bc.opbook.bid}"/>','<s:property value="%{#bc.opnum}"/>')"/>
						<s:property value="%{#bc.opnum}"/>
							<input type="button" value="+" onclick="addproductnumber('<s:property value="%{#bc.opbook.bid}"/>')"/>
					</td>
					<td class="delete"><a href="javascript:deleteproduct('<s:property value="%{#bc.opbook.bid}"/>');">ɾ��</a></td>
				</tr>
				</s:iterator>
		</table>
	</div>
	<!-- ���ﳵ��ҳģ�� -->
		<div id="buyshow1_chil2" align="center" style="clear: both;"><!-- ��ҳ��ť -->
    			<ul>
    				<li class="up"><a href="javascript:firstbuycarpage()">��ҳ</a></li>
					<li class="up"><a href="javascript:buycaruppage(<s:property value="%{#session.newBuyCarPage.currentPageNum}"/>)">��һҳ</a></li>
					<li class="middleinput2"><input id="pagespecial" align="middle" type="text" value='<s:property value="%{#session.newBuyCarPage.currentPageNum}"/>'
					style="text-align:center;padding-top:0px;margin-top:0px; height: 20px;width: 20px;"></li>
					<li class="down"><a href="javascript:buycarnextpage(<s:property value="%{#session.newBuyCarPage.currentPageNum}"/>,
					<s:property value="%{#session.newBuyCarPage.totalPage}"/>)">��һҳ</a></li>
					<li class="up"><a href="javascript:buycarendpage(<s:property value="%{#session.newBuyCarPage.totalPage}"/>)">βҳ</a></li>
					<li class="down"><a>��<s:property value="%{#session.newBuyCarPage.totalPage}"/>ҳ</a></li>
				</ul>
    	</div>
	<!--  -->
	
			<div class="button">
				<div style="margin-top:15px;">
					�����<span id="resultmoney">��</span>
				</div>
				<div id="confirmsubmitorder"><input type="submit" value="�ύ����"/>
				</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
		function reduceproductnumber(bid,nownumber){//������Ʒ����
			alert("Ҫ����������ͼ��id"+bid+"��������="+nownumber);
			//�ж��Ƿ�Ϊ��Сֵ1
			if(parseInt(nownumber)<2)return;//�жϸ���
			//ȷ������number
			var json={bid:bid}
			$.ajax({//ִ���첽����
			url:"BuyCarAction_reduceBuycarSomeProductNumber.action",
			type:"post",
			async:false,
			data:json,
			success:function(){
				alert("ɾ���ɹ���");
				$("#showbook1").load("BuyCarAction_myBuyCarUI.action");
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("ɾ��ʧ�ܣ��첽�������");
			}
		})
		}
		
		function addproductnumber(bid){
			alert("Ҫ����������ͼ��id"+bid);
			var json={bid:bid}
			$.ajax({//ִ���첽����
			url:"BuyCarAction_addBuycarSomeProductNumber.action",
			type:"post",
			async:false,
			data:json,
			success:function(){
				alert("ɾ���ɹ���");
				$("#showbook1").load("BuyCarAction_myBuyCarUI.action");
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("ɾ��ʧ�ܣ��첽�������");
			}
		})
		}
		function deleteproduct(bid){//ɾ��ĳ����Ʒ
			var json={bid:bid}
			$.ajax({//ִ���첽����
			url:"BuyCarAction_deleteBuycarSomeProduct.action",
			type:"post",
			async:false,
			data:json,
			success:function(){
				alert("ɾ���ɹ���");
				getbuycarpagemessage();
				$("#showbook1").load("BuyCarAction_myBuyCarUI.action");
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("ɾ��ʧ�ܣ��첽�������");
			}
		})
		}
		/*
		���ﳵ��ҳ
		*/
		function firstbuycarpage(){
			alert("���ﳵ��ҳ");
			var json={currentPageNumber:parseInt(1)}
			changepage(json);
		}
		function buycaruppage(nowpagenumber){
		//alert("��һҳ");
			if(parseInt(nowpagenumber)==1){alert("�ѵ���ҳ");return;}//�ж��Ƿ��Ѿ�����ҳ
			var json={currentPageNumber:parseInt(nowpagenumber)-1}
			changepage(json);
		}
		function buycarnextpage(nowpagenumber,totalpage){
		//alert("��һҳ");
			if(parseInt(nowpagenumber)==parseInt(totalpage)){alert("�ѵ�βҳ");return;}//�ж��Ƿ��Ѿ���βҳ
			var json={currentPageNumber:parseInt(nowpagenumber)+1}
			changepage(json);
		}
		function buycarendpage(endpage){
		//alert("ĩҳ");
			var json={currentPageNumber:parseInt(endpage)+1}
			changepage(json);
		}
		function changepage(json){
			$.ajax({//ִ���첽����
			url:"BuyCarAction_getBuyCarPage.action",
			type:"post",
			async:false,
			data:json,
			success:function(){
				$("#showbook1").load("BuyCarAction_myBuyCarUI.action");
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("ɾ��ʧ�ܣ��첽�������");
			}
		})
		}
	</script>
</body>
</html>
