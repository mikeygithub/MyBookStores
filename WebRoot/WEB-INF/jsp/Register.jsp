<%@ page language="java" import="java.util.*" contentType="text/html; charset=gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>RegisterPage</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="regiterpage">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!--<script type="text/javascript" src="../js/user.js" charset="UTF-8"></script>-->
 <!--<script src="/js/jquery-1.4.2.js" type="text/javascript"></script>-->
 <style type="text/css">
 	#regdiv {
 		margin: 0 auto;
 		width: 550px;
 		/*border: 1px solid red;*/
 	}
 	#regdiv #regForm table tr td span {
 		color: red;
 	}
 </style>
  </head>
  <body>
  <div id="regdiv" > 
    <form id="regForm">
    <h2 style="border-bottom: 1px dashed #cfcfcf;" align="center">���û�ע��</h2>
				<table>
				<tr>
  				<td></td>
  				<td width="350px"><span></span></td>
  				</tr>
					<tr>
						<td class="field">�û�����</td>
						<td nowrap="nowrap"><input value="" class="text" type="text" id="uname" name="uname" onfocus="FocusItem(this)" onblur="CheckItem(this); n" /><span ></span></td>
					</tr>
					<tr>
						<td class="field">ע�����䣺</td>
						<td nowrap="nowrap"><input value="" class="text" type="text" name="uemail" id="uemail" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td class="field">��¼���룺</td>
						<td nowrap="nowrap"><input  value="" class="text" type="password" id="upw" name="upw" onfocus="FocusItem(this)" onblur="CheckItem(this);"/><span></span></td>
					</tr>
					<tr>
						<td class="field">ȷ�����룺</td>
						<td nowrap="nowrap"><input value="" class="text" type="password" name="reupw" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td class="field"></td>
						<td nowrap="nowrap"><img src="${pageContext.request.contextPath}/tools/image.jsp " alt=""  name="randImage" id="randImage" title="��һ������" onclick="javascript:loadimage();">
						<a href="javascript:void(0)" onclick="loadimage()" >������������ˢ��</a><span></span></td>
					</tr>
					
					<tr>
						<td class="field">��֤�룺</td>
						<td nowrap="nowrap"><input value="" class="text veryCode2" type="text" name="veryCode2" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td></td>
						<td nowrap="nowrap"><label  class="ui-green"><input type="button" name="button" value="�ύע��" onclick="regnewuser()"/></label></td>
					</tr>
			
				</table>
			</form>
			</div>
<script type="text/javascript">
$().ready(function(){
	//alert("jquery");
})
function CheckItem(obj)
{
	var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
	//var un=^[0-9a-zA-Z_]{1,}$;�����֡�26��Ӣ����ĸ�����»�����ɵ��ַ���:
	switch(obj.name) {
		case "uname":
			if(obj.value == "") {
				msgBox.innerHTML = "�û�������Ϊ��";
				return false;
			}
			break;
		case "uemail":
			if(obj.value == "") {
				msgBox.innerHTML = "���䲻��Ϊ��";
				return false;
			}else if(!re.test(obj.value)){
				msgBox.innerHTML = "�����ʽ����";
				return false;
			}else{
			
	var json={uemail:$("#uemail").val()};//��ȡuuemail
	
	$.ajax({//ִ���첽����
		url:"UserAction_CheckuEmail.action",
		type:"post",
		async:true,
		data:json,
		success:function(data){
			if(data=="false"){
				msgBox.innerHTML = "��������ע��";
				return false;
			}else{
				msgBox.innerHTML = "���������";
				return true;
			}
		},
		error:function(XMLHttpRequest, textStatus, errorThrown){
			alert("�첽�������");
		}
	})
			}
			break;
		case "upw":
			if(obj.value == "") {
				msgBox.innerHTML = "���벻��Ϊ��";				
				return false;
			}
			break;
		case "reupw":
			if(obj.value == "") {
				msgBox.innerHTML = "ȷ�����벻��Ϊ��";
				return false;
			} else if(obj.value != document.getElementById("upw").value) {
				msgBox.innerHTML = "������������벻��ͬ";
				return false;
			}
			break;
		case "veryCode2":
			if(obj.value == ""||obj.value.length<1) {
				msgBox.innerHTML = "��֤�벻��Ϊ��";
				return false;
			}else{//������֤����֤
				var json={varycode:obj.value}
				
		$.ajax({//ִ���첽����
			url:"JsonAction_CheckuVaryCode.action",
			type:"post",
			async:true,
			data:json,
			success:function(data){
				msgBox.innerHTML =data;
				if(data=="��֤���������"){
					return false;
				}else{
					return true;
				}
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("�첽�������");
			}
		})	
			}
			break;
	}
	return true;
}

function checkForm()//���ȫ����Ϣ
{
	var els =$("input");
	for(var i=0; i<els.length; i++) {
		if(!CheckItem(els[i])) {alert("��֤��ͨ����input"+i+"/"+els.length);
			return false;
			}
	}
	return true;
}
function FocusItem(obj)
{
	obj.parentNode.parentNode.className = "current";
	var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	msgBox.innerHTML = "";
}
function regnewuser(){

	$("input[type=button]").attr('disabled',true);
	if(checkForm()){
	
	var json={
		uname:$("#uname").val(),
		upw:$("#upw").val(),
		uemail:$("#uemail").val()
	}
	alert($("#uname").val());alert($("#upw").val());alert($("#uemail").val());
	$.ajax({
		url:"UserAction_ConfirmRegister.action",
		type:"post",
		async:true,
		data:json,
		success:function(data){
	$("input[type=button]").attr('disabled',false);alert("ע��ɹ�");
	$("#inputbox").empty();//ע��ɹ���ʾ
	
	$("#msgs h1").text("��ϲ��ע��ɹ���");
	$("#msgs h3").text("���ڽ�����ҳ...");
	
	//$("#inputbox").load('jumpPage.jsp');
	$("#inputbox").load('UserAction_JumpPage.action');
	setTimeout("location.href='index.jsp'", 3000);
    
		},
	error:function(){
		$("input[type=button]").attr('disabled',false);
		alert("�첽ע�����");
}

})
	}else{
		$("input[type=button]").attr('disabled',false);
	}
}
function loadimage(){  
        document.getElementById("randImage").src = "${pageContext.request.contextPath}/tools/image.jsp?"+Math.random(); 
    }

</script>
  </body>
</html>
