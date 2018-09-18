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
	<script src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
.wrapss { width:580px; height:500px; margin:0 auto; overflow: hidden;background: #fff0d9}
.wrapss h2{font-size: 18px;color: #F60;display : inline
	line-height: 30px;
	border-bottom: 2px solid #fbaa62;
	overflow: hidden;}
#ordertatil { }
</style>
  </head>
  
  <body>
    <div class="wrapss">
    <h2>确认购买界面</h2>
	<div id="ordertatil" style="height:px;">
		<div style="height: 435px;border: 1px solid yellow;">
			<div id="message" style="height: 120px;border: 1px solid red;">收货人信息：
				<div style=""><div><input type="text" value="<s:property value="#session.usermessage.uname"/>" style="width: 90px;">

	<select id="province" onchange="Get_Next_Place('province','Get_city')" style="width:150px;">
  <option id="Not_data1">省份</option>
  <option id="GuangXi" value="GuangXi">广西</option>
  <option id="GuangDong" value="GuangDong">广东</option>
  <option id="ShanDong" value="ShanDong">山东</option>
  <option id="HuNan" value="HuNan">湖南</option>
 </select>
 <select id="city" onchange="Get_Next_Place('city','Get_country')" style="width:150px;">
  <option id="Not_data2">城市</option>
 </select>
 <select id="country" style="width:150px;">
  <option id="Not_data3">街道</option>
 </select>
 <br/>
 </div>
 	<div style="clear: both;margin-top: 10px;">
 		<div>详细信息:<input type="text" style="width: 485px;" height="50px; " value="<s:property value="#session.usermessage.uaddress"/>"></div>
 	</div>
 	
 </div>
 <div>
 	<div style="clear: both;margin-top: 10px;">
 		<div>联系电话:<input type="text" style="width: 485px;" height="20px; " value="<s:property value="#session.usermessage.uphone"/>"></div>
 	</div>
 </div>
			</div>
			<div id="payway" style="height: 30px;border: 1px solid red;padding: 20px 80px;" id="pw">支付方式:
				<input type="radio" name="payways"  id="pw">支付宝
					<input type="radio" name="payways" onclick="wechatpayway()" id="pw">微信
					<input type="radio" onclick="anotherpayway()" name="payways"  id="pw">其他
					
				</div>
				
				
			<div id="allproduct" style="height: 200px;border: 1px solid red;"><div>购物清单:</div>
				<div style="clear: both;border: 1px solid black;height: 180px;overflow: hidden;">
					<!-- 将购物清单进行遍历 -->
					<ul>
					<s:iterator value="#session.willbuybook" var="plist">
		<li style="border: 1px solid red;width: 100px;height: 130px;line-height: 15px;font-size: 14px;overflow: hidden;float:left;margin-right:5px;margin-left: 6px;margin-top:15px;">
			<dl>
				<dt style="height:80px;width: 80px;margin: 10px 10px; ">
					<a href="javascript:void(0)" onclick="bookdetails('<s:property value="%{#sp.bid}"/>')">
					<img src='${pageContext.request.contextPath}/images/product/<s:property value="%{#plist.opbook.bimage}"/>.jpg' title="快把我带回家" style="height:80px;width: 80px; "/></a>
				</dt>
				<dd style="text-align: center;color: #c30;font-weight: bold;">价格：<s:property value="#plist.opbook.bprice"/>元/本</dd>
				<dd style="text-align: center;">数量:<s:property value="#plist.opnum"/>本</dd>			
			</dl>				
		</li>
		<!-- 测试迭代 -->
		<!-- 测试迭代 -->
					</s:iterator>
					<!-- 遍历完成 -->
					</ul>
				</div>
			</div>
			
			
			<div id="suresubmintorder" style="height: 120px;border: 1px solid red;"><div>提交订单</div>
			<div style="font: color: #c30"><strong>应付金额：<s:property value="#session.totalmaney"/>￥</strong></div>
			<div style="float: right; height:37px;width: 134px; margin-top:0px;margin-bottom: 20px;">
			<img src="${pageContext.request.contextPath}/images/submit.png" onclick="goPay()"></div></div>
		</div>
	</div>
</div>
<script type="text/javascript">
		function submitorders(json){//将订单数据进行提交	
			$.ajax({//执行异步交互
			url:".action",
			type:"post",
			async:false,
			data:json,
			success:function(){
				$("#showbook1").load("BuyCarAction_myBuyCarUI.action");
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("异步请求错误！");
			}
		})
		}
		  //用来获得option元素中selected属性为true的元素的id
  function Get_Selected_Id(place){
   var pro = document.getElementById(place);
   var Selected_Id = pro.options[pro.selectedIndex].id;
   return Selected_Id;   //返回selected属性为true的元素的id
  }
  //改变下一个级联的option元素的内容，即加载市或县
  function Get_Next_Place(This_Place_ID,Action){
   var Selected_Id = Get_Selected_Id(This_Place_ID); //Selected_Id用来记录当前被选中的省或市的ID
   if(Action=='Get_city')       //从而可以在下一个级联中加载相应的市或县
    Add_city(Selected_Id);
   else if(Action=='Get_country')
    Add_country(Selected_Id);
  }
  //用来存储省市区的数据结构
  var Place_dict = {
  "GuangXi":{
       "梧州":["万秀区","HuangPu","TianHe"],
       "QingYuan":["QingCheng","YingDe","LianShan"],
       "FoShan":["NanHai","ShunDe","SanShui"]
       },
   "GuangDong":{
       "广州":["PanYu","HuangPu","TianHe"],
       "QingYuan":["QingCheng","YingDe","LianShan"],
       "FoShan":["NanHai","ShunDe","SanShui"]
       },
   "ShanDong":{
       "JiNan":["LiXia","ShiZhong","TianQiao"],
       "QingDao":["ShiNan","HuangDao","JiaoZhou"]
       },
   "HuNan":{
       "ChangSha":["KaiFu","YuHua","WangCheng"],
       "ChenZhou":["BeiHu","SuXian","YongXian"]
      }
  };
  //加载城市选项
  function Add_city(Province_Selected_Id){
   $("#city").empty();
   $("#city").append("<option>City</option>");
   $("#country").empty();
   $("#country").append("<option>Country</option>");
   //上面的两次清空与两次添加是为了保持级联的一致性
   var province_dict = Place_dict[Province_Selected_Id]; //获得一个省的字典
   for(city in province_dict){  //取得省的字典中的城市
    //添加内容的同时在option标签中添加对应的城市ID
    var text = "<option"+" id='"+city+"'>"+city+"</option>";
    $("#city").append(text);
    console.log(text); //用来观察生成的text数据
   }
  }
  //加载县区选项
  function Add_country(City_Selected_Id){
   $("#country").empty();
   $("#country").append("<option>Country</option>");
   //上面的清空与添加是为了保持级联的一致性
   var Province_Selected_ID = Get_Selected_Id("province");  //获得被选中省的ID，从而方便在字典中加载数据
   var country_list = Place_dict[Province_Selected_ID][City_Selected_Id]; //获得城市列表
   for(index in country_list){
    ////添加内容的同时在option标签中添加对应的县区ID
    var text = "<option"+" id=\'"+country_list[index]+"\'>"+country_list[index]+"</option>";
    $("#country").append(text);
    console.log(text); //用来观察生成的text数据
   }
  }
  
  
  function wechatpayway(){
  	alert("暂不支持");
  	return;
  }
  
  function anotherpayway(){
  	alert("暂不支持");
  	return;
  }
  function goPay(){//判断用户资料信息
					//alert("确认信息");
					//转向支付模块
					//alert("转向支付");
			$.ajax({//执行异步交互
			url:"ordersAction_addorders.action",
			type:"post",
			async:false,
			success:function(){
				alert("提交成功");
				//$("#showbook1").load("");
				setTimeout("location.href='BookAction_index.action'",0);
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("异步请求错误！");
			}
		})
	
  }
	</script>
</body>
</html>
