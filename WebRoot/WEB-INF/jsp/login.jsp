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
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
  }
  </style>
  </head>
  
  <body>
<div id="logincontainer">
<form action="">
	<table style="margin:auto">
		<tr>
  			<td align="right" valign="bottom">登入邮箱</td>
  			<td>
  				<input type="text" class="text" name="uemail1" id="uemail1" onfocus="FocusItem(this)" onblur="CheckItem(this);"/><span></span>
  			</td>
  		</tr>
  		<tr>
  			<td align="right" valign="bottom">登入密码</td>
  			<td>
  				<input type="password" class="text" name="upw1" id="upw1" onfocus="FocusItem(this)" onblur="CheckItem(this);"/><span></span>
  			</td>
  		</tr>
  		<tr>
  			<td align="right" valign="bottom">验证码</td>
  			<td>
  				<input type="text" class="text verycode" id="veryCode1" onfocus="FocusItem(this)" onblur="CheckItem(this);"/><td><img id="veryCode" src="" /></td><span></span>
  			</td>
  		</tr>
  		<tr>
  			<td></td>
  			<td>
  				<input type="button"  id="surelogin" value="确认登入" onclick="login()"/>
  			</td>
  		</tr>
	</table>
</form>
</div>
  </body>
  <script type="text/javascript">
  function CheckItem(obj)
{
	var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
	//var un=^[0-9a-zA-Z_]{1,}$;由数字、26个英文字母或者下划线组成的字符串:
	switch(obj.name) {
		case "uemail":
			if(obj.value == "") {
				msgBox.innerHTML = "邮箱不能为空";
				return false;
			}else if(!re.test(obj.value)){alert("2222222");
				msgBox.innerHTML = "邮箱格式错误";
				return false;
			}else{
			
	var json={"uemail":obj.value};//获取uuemail
	
	$.ajax({//执行异步交互
		url:"UserAction_Checkuuemail.action",
		type:"post",
		async:true,
		data:json,
		success:function(data){
			if(data=="false"){
				msgBox.innerHTML = "该邮箱已注册";
				return false;
			}else{
				msgBox.innerHTML = "该邮箱可用";
				return true;
			}
		},
		error:function(XMLHttpRequest, textStatus, errorThrown){
			alert("异步请求错误");
		}
	})
			}
			break;
		case "upw":
			if(obj.value == "") {
				msgBox.innerHTML = "密码不能为空";				
				return false;
			}
			break;
		case "veryCode":
			if(obj.value == "") {
				msgBox.innerHTML = "验证码不能为空";
				return false;
			}
			break;
	}
	return true;
}

function checkForm()//检查全部信息
{
	var els =$("#input");
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
  		$("#surelogin").attr('disabled',true).attr('value',"正在登入");		
	//if(checkForm()){
	var json={
		upw:$("#upw").val(),
		uemail:$("#uemail").val()
	}
	$.ajax({
		url:"UserAction_sureLogin.action",
		type:"post",
		data:json,
		success:function(){
	$("#surelogin").attr('disabled',false)
		},
	error: function(){
		$("#surelogin").attr('disabled',false)
}

})
	}
 //}
  </script>
</html>
