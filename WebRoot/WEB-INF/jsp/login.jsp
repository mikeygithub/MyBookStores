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

<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
  </head>
  
  <body>
<form action="">
	<table>
		<tr>
  			<td>邮箱号码</td>
  			<td>
  				<input type="text" name="uemail" id="uemail" /><td></td><span id="s1"></span>
  			</td>
  		</tr>
  		<tr>
  			<td>登入密码</td>
  			<td>
  				<input type="password" name="upw" id="upw" /><td></td><span id="s2"></span>
  			</td>
  		</tr>
  		<tr>
  			<td>验证码</td>
  			<td>
  				<input type="text"  id="veryCode" /><td><img id="veryCode" src="" /></td><span id="s3"></span>
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
  </body>
  <script type="text/javascript">
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
