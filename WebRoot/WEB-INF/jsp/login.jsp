<%@ page language="java" import="java.util.*" contentType="text/html; charset=gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>login page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!--<script type="text/javascript" src="/js/jquery-1.4.2.js"></script>-->
  
  <style type="text/css">
  #logincontainer {
  	border-top: 2px solid #fbaa62;
  	margin: 0 auto;
  	padding-top:50px;
  	width: 400px;
  }
  #logincontainer form table tr td span {
	color: #F00;    
}
#logincontainer form table tr td #randImage {
	padding-top: 10px;
}

  </style>
  </head>
  
  <body>
<div id="logincontainer">
<form >
	<table >
		<tr>
  			<td align="right" valign="bottom" nowrap="nowrap">��������</td>
  			<td nowrap="nowrap" ><input type="text" class="text" name="uemail1" id="uemail1" onfocus="FocusItem(this)" onblur="CheckItem(this);"/><span></span></td>
  		</tr>
  		<tr>
  			<td align="right" valign="bottom" nowrap="nowrap">��������</td>
  			<td nowrap="nowrap">
  				<input type="password" class="text" name="upw1" id="upw1" onfocus="FocusItem(this)" onblur="CheckItem(this);"/><span id="tip"></span>
  			</td>
  		</tr>
  		<tr>
  		<td nowrap="nowrap" align="right" valign="bottom"></td>
  			<td nowrap="nowrap" align="left" valign="bottom">
  				<img src="${pageContext.request.contextPath}/tools/image.jsp " alt=""  name="randImage" id="randImage" title="��һ������" onclick="javascript:loadimage();">
  				<a href="javascript:void(0)" onclick="loadimage()" valign="top">������������ˢ��</a>
  			</td>
  		</tr>
  		<tr>
  			<td nowrap="nowrap" align="right" valign="bottom">������֤��</td>
  			<td nowrap="nowrap">
  				<input type="text" class="text verycode" name="veryCode1" id="veryCode1" onfocus="FocusItem(this)" onblur="CheckItem(this);"/><span></span>
  			</td>
  			
  		</tr>
  		<tr>
  			<td></td>
  			<td width="250px"><input type="text" style="display: none;"/><span></span></td>
  		</tr>
  		<tr>
  			<td></td>
  			<td>
  				<input type="button"  id="surelogin" value="ȷ�ϵ���" onclick="login()"/>
  			</td>
  		</tr>
	</table>
</form>
</div><s:debug></s:debug>
  </body>
  <script type="text/javascript">
  function CheckItem(obj)
{
	var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
	//var un=^[0-9a-zA-Z_]{1,}$;�����֡�26��Ӣ����ĸ�����»�����ɵ��ַ���:
	switch(obj.name) {
		case "uemail1":
			if(obj.value == "") {
				msgBox.innerHTML = "���䲻��Ϊ��";
				return false;
			}else if(!re.test(obj.value)){
				msgBox.innerHTML = "�����ʽ����";
				return false;
			}else{
			
	var json={"uemail":obj.value};//��ȡuuemail
	
	$.ajax({//ִ���첽����
		url:"UserAction_CheckuEmail.action",
		type:"post",
		async:true,
		data:json,
		success:function(data){
			if(data=="false"){
				msgBox.innerHTML = "";
				return false;
			}else{
				msgBox.innerHTML = "������δע��";
				return true;
			}
		},
		error:function(XMLHttpRequest, textStatus, errorThrown){
			alert("�첽�������");
		}
	})
			}
			break;
		case "upw1":
			if(obj.value == "") {
				msgBox.innerHTML = "���벻��Ϊ��";				
				return false;
			}
			break;
		case "veryCode1":
			if(obj.value == "") {
				msgBox.innerHTML = "��д��֤��";
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
		if(!CheckItem(els[i])) {
			return false;}
	}
	return true;
}
function FocusItem(obj)
{
	obj.parentNode.parentNode.className = "current";
	var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	msgBox.innerHTML = "";
}
  	function login(){
  				
	if(checkForm()){
	$("#surelogin").attr('disabled',true).attr('value',"���ڵ���");
	var json={
		upw:$("#upw1").val(),
		uemail:$("#uemail1").val()
	}
	$.ajax({
		url:"UserAction_sureLogin.action",
		type:"post",
		data:json,
		success:function(data){
			if(data=="false"){
				$("#tip").text("�������");
				$("#surelogin").attr('disabled',false);
			}else{
			
			$("#inputbox").empty();
    		$("#inputbox").load('UserAction_loginsuccesstip.action');
    		$('#light2').css("display","block");
    		$('#fade').css("display","block");
			setTimeout("location.href='index.jsp'", 3000);
		}},
	error: function(){
		$("#surelogin").attr('disabled',false);
}

})
	}else{
		
	}
	
	}
function loadimage(){  
        document.getElementById("randImage").src = "${pageContext.request.contextPath}/tools/image.jsp?"+Math.random(); 
    }

  </script>
</html>
