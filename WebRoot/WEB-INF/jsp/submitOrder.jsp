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
.wrapss { width:580px; height:490px; margin:0 auto; overflow: hidden;background: #fff0d9}
.wrapss h2{font-size: 18px;color: #F60;display : inline
	line-height: 30px;
	border-bottom: 2px solid #fbaa62;
	overflow: hidden;}
#ordertatil { }
</style>
  </head>
  
  <body>
    <div class="wrapss">
    <h2>ȷ�Ϲ������</h2>
	<div id="ordertatil" style="height:px;">
		<div style="height: 435px;border: 1px solid yellow;">
			<div id="message" style="height: 80px;border: 1px solid red;">�ջ�����Ϣ��
				<div style=""><div><input type="text" value="" style="width: 90px;">

	<select id="province" onchange="Get_Next_Place('province','Get_city')" style="width:150px;">
  <option id="Not_data1">ʡ��</option>
  <option id="GuangXi" value="GuangXi">����</option>
  <option id="GuangDong" value="GuangDong">�㶫</option>
  <option id="ShanDong" value="ShanDong">ɽ��</option>
  <option id="HuNan" value="HuNan">����</option>
 </select>
 <select id="city" onchange="Get_Next_Place('city','Get_country')" style="width:150px;">
  <option id="Not_data2">����</option>
 </select>
 <select id="country" style="width:150px;">
  <option id="Not_data3">�ֵ�</option>
 </select>
 <br/>
 </div>
 	<div style="clear: both;margin-top: 10px;">
 		<div>��ϸ��Ϣ:<input type="text" style="width: 485px;" height="50px;"></div>
 	</div>
 </div>
			</div>
			<div id="payway" style="height: 30px;border: 1px solid red;padding: 20px 80px;" id="pw">֧����ʽ:
				<input type="radio" name="payways"  id="pw">֧����
					<input type="radio" name="payways" onclick="wechatpayway()" id="pw">΢��
					<input type="radio" onclick="anotherpayway()" name="payways"  id="pw">����
					
				</div>
				
				
			<div id="allproduct" style="height: 180px;border: 1px solid red;"><div>�����嵥:</div>
				<div style="clear: both;border: 1px solid black;height: 160px;overflow: hidden;">
					<!-- �������嵥���б��� -->
					<s:iterator value="#session." var="plist">
					<s:property value=""/>
					</s:iterator>
					<!-- ������� -->
				</div>
			</div>
			
			
			<div id="suresubmintorder" style="height: 95px;border: 1px solid red;"><div>�ύ����</div>
			<div style="font: color: #c30"><strong>Ӧ������<s:property value="#session."/></strong></div>
			<div style="float: right; height:37px;width: 134px; margin-top:0px;margin-bottom: 20px;border: 1px solid black;">
			<img src="${pageContext.request.contextPath}/images/submit.png"></div></div>
		</div>
	</div>
</div>
<script type="text/javascript">
		function submitorders(json){//���������ݽ����ύ
			$.ajax({//ִ���첽����
			url:".action",
			type:"post",
			async:false,
			data:json,
			success:function(){
				$("#showbook1").load("BuyCarAction_myBuyCarUI.action");
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("�첽�������");
			}
		})
		}
		  //�������optionԪ����selected����Ϊtrue��Ԫ�ص�id
  function Get_Selected_Id(place){
   var pro = document.getElementById(place);
   var Selected_Id = pro.options[pro.selectedIndex].id;
   return Selected_Id;   //����selected����Ϊtrue��Ԫ�ص�id
  }
  //�ı���һ��������optionԪ�ص����ݣ��������л���
  function Get_Next_Place(This_Place_ID,Action){
   var Selected_Id = Get_Selected_Id(This_Place_ID); //Selected_Id������¼��ǰ��ѡ�е�ʡ���е�ID
   if(Action=='Get_city')       //�Ӷ���������һ�������м�����Ӧ���л���
    Add_city(Selected_Id);
   else if(Action=='Get_country')
    Add_country(Selected_Id);
  }
  //�����洢ʡ���������ݽṹ
  var Place_dict = {
  "GuangXi":{
       "����":["������","HuangPu","TianHe"],
       "QingYuan":["QingCheng","YingDe","LianShan"],
       "FoShan":["NanHai","ShunDe","SanShui"]
       },
   "GuangDong":{
       "����":["PanYu","HuangPu","TianHe"],
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
  //���س���ѡ��
  function Add_city(Province_Selected_Id){
   $("#city").empty();
   $("#city").append("<option>City</option>");
   $("#country").empty();
   $("#country").append("<option>Country</option>");
   //�����������������������Ϊ�˱��ּ�����һ����
   var province_dict = Place_dict[Province_Selected_Id]; //���һ��ʡ���ֵ�
   for(city in province_dict){  //ȡ��ʡ���ֵ��еĳ���
    //������ݵ�ͬʱ��option��ǩ����Ӷ�Ӧ�ĳ���ID
    var text = "<option"+" id='"+city+"'>"+city+"</option>";
    $("#city").append(text);
    console.log(text); //�����۲����ɵ�text����
   }
  }
  //��������ѡ��
  function Add_country(City_Selected_Id){
   $("#country").empty();
   $("#country").append("<option>Country</option>");
   //���������������Ϊ�˱��ּ�����һ����
   var Province_Selected_ID = Get_Selected_Id("province");  //��ñ�ѡ��ʡ��ID���Ӷ��������ֵ��м�������
   var country_list = Place_dict[Province_Selected_ID][City_Selected_Id]; //��ó����б�
   for(index in country_list){
    ////������ݵ�ͬʱ��option��ǩ����Ӷ�Ӧ������ID
    var text = "<option"+" id=\'"+country_list[index]+"\'>"+country_list[index]+"</option>";
    $("#country").append(text);
    console.log(text); //�����۲����ɵ�text����
   }
  }
  
  
  function wechatpayway(){
  	alert("�ݲ�֧��");
  	return;
  }
  
  function anotherpayway(){
  	alert("�ݲ�֧��");
  	return;
  }
	</script>
</body>
</html>
