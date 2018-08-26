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
    <form id="regForm" method="post" action=".action">
				<table>
					<tr>
						<td class="field">用户名：</td>
						<td><input class="text" type="text" name="userName" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span ></span></td>
					</tr>
					<tr>
						<td class="field">注册邮箱：</td>
						<td><input class="text" type="text" name="email" id="email" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td class="field">登录密码：</td>
						<td><input class="text" type="password" id="passWord" name="passWord" onfocus="FocusItem(this)" onblur="CheckItem(this);"/><span></span></td>
					</tr>
					<tr>
						<td class="field">确认密码：</td>
						<td><input class="text" type="password" name="rePassWord" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td class="field">验证码：</td>
						<td><input class="text verycode" type="text" name="veryCode" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><img id="veryCode" src="" /><span></span></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-green"><input type="submit" name="submit" value="提交注册" /></label></td>
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
	switch(obj.name) {
		case "userName":
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
				checkEmail();//执行异步交互判断邮箱是否已经注册
			}
			break;
		case "passWord":
			if(obj.value == "") {
				msgBox.innerHTML = "密码不能为空";				
				return false;
			}
			break;
		case "rePassWord":
			if(obj.value == "") {
				msgBox.innerHTML = "确认密码不能为空";
				return false;
			} else if(obj.value != document.getElementById("passWord").value) {
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

function checkForm(frm)
{
	var els = frm.getElementsByTagName("input");
	for(var i=0; i<els.length; i++) {
		if(typeof(els[i].getAttribute("onblur")) == "function") {
			if(!CheckItem(els[i])) return false;
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
function checkEmail(){//判断邮箱是否已经注册
	
	$("#email").css("background","yellow");
	
}
</script>
  </body>
</html>
