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

<!--<script type="text/javascript" src="../js/user.js" charset="UTF-8"></script>-->
 <script src="js/jquery-1.4.2.js" type="text/javascript"></script>
  </head>
  
  <body>
    <form id="regForm">
				<table>
					<tr>
						<td class="field">用户名：</td>
						<td><input class="text" type="text" id="username" name="username" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span ></span></td>
					</tr>
					<tr>
						<td class="field">注册邮箱：</td>
						<td><input class="text" type="text" name="email" id="email" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td class="field">登录密码：</td>
						<td><input class="text" type="password" id="password" name="password" onfocus="FocusItem(this)" onblur="CheckItem(this);"/><span></span></td>
					</tr>
					<tr>
						<td class="field">确认密码：</td>
						<td><input class="text" type="password" name="repassword" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td class="field">验证码：</td>
						<td><input class="text verycode" type="text" name="veryCode" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><img id="veryCode" src="" /><span></span></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-green"><input type="submit" name="submit" value="提交注册" onclick="regnewuser()"/></label></td>
					</tr>
				</table>
			</form>
<script type="text/javascript">
$().ready(function(){
	
})
function CheckItem(obj)
{
	var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
	//var un=^[0-9a-zA-Z_]{1,}$;由数字、26个英文字母或者下划线组成的字符串:
	switch(obj.name) {
		case "username":
			if(obj.value == "") {
				msgBox.innerHTML = "用户名不能为空";
				return false;
			}
			break;
		case "email":
			if(obj.value == "") {
				msgBox.innerHTML = "邮箱不能为空";
				return false;
			}else if(!re.test(obj.value)){
				msgBox.innerHTML = "邮箱格式错误";
				return false;
			}else{
			
	var json={"email":$("#email").val()};//获取uEmail
	
	$.ajax({//执行异步交互
		url:"UserAction_CheckuEmail.action",
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
		case "password":
			if(obj.value == "") {
				msgBox.innerHTML = "密码不能为空";				
				return false;
			}
			break;
		case "repassword":
			if(obj.value == "") {
				msgBox.innerHTML = "确认密码不能为空";
				return false;
			} else if(obj.value != document.getElementById("password").value) {
				msgBox.innerHTML = "两次输入的密码不相同";
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
	var els =$("#input");alert("666666");
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
function regnewuser(){

	$("input[type=submit]").attr('disabled',true)
	if(checkForm()){
	var json={
		username:$("#username").val(),
		password:$("#password").val(),
		email:$("#email").val()
	}
	$.ajax({
		url:"UserAction_confirmRegister.action",
		type:"post",
		data:json,
		success:function(){
	$("input[type=submit]").attr('disabled',false)
		},
	error: function(){
		$("input[type=submit]").attr('disabled',false)
}

})
	}
}
</script>
  </body>
</html>
