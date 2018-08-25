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
<script type="text/javascript" src="../js/jquery-1.4.2.js"></script>
<!--<script type="text/javascript" src="../js/user.js" charset="UTF-8"></script>-->
  </head>
  
  <body>
    <form id="regForm" method="post" action=".action">
				<table>
					<tr>
						<td class="field">�û�����</td>
						<td><input class="text" type="text" name="userName" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span ></span></td>
					</tr>
					<tr>
						<td class="field">ע�����䣺</td>
						<td><input class="text" type="text" name="email" id="email" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td class="field">��¼���룺</td>
						<td><input class="text" type="password" id="passWord" name="passWord" onfocus="FocusItem(this)" onblur="CheckItem(this);"/><span></span></td>
					</tr>
					<tr>
						<td class="field">ȷ�����룺</td>
						<td><input class="text" type="password" name="rePassWord" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td class="field">��֤�룺</td>
						<td><input class="text verycode" type="text" name="veryCode" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><img id="veryCode" src="" /><span></span></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-green"><input type="submit" name="submit" value="�ύע��" /></label></td>
					</tr>
				</table>
			</form>
<script type="text/javascript">
function CheckItem(obj)
{
	//alert("�����鷽��")
	obj.parentNode.parentNode.className = "";
	var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
	switch(obj.name) {
		case "userName":
			if(obj.value == "") {
				msgBox.innerHTML = "�û�������Ϊ��";
				msgBox.className = "error";
				return false;
			}
			break;
		case "email":
			if(obj.value == "") {
				msgBox.innerHTML = "���䲻��Ϊ��";
				msgBox.className = "error";
				return false;
			}else if(!re.test(obj.value)){
				msgBox.innerHTML = "�����ʽ����";
				msgBox.className = "error";
				return false;
			}else{//ִ���첽�����ж������Ƿ��Ѿ�ע��
			alert("�첽����1");
			alert($("#passWord").val());
				
			}
			break;
		case "passWord":
			if(obj.value == "") {
				msgBox.innerHTML = "���벻��Ϊ��";
				msgBox.className = "error";
				return false;
			}
			break;
		case "rePassWord":
			if(obj.value == "") {
				msgBox.innerHTML = "ȷ�����벻��Ϊ��";
				msgBox.className = "error";
				return false;
			} else if(obj.value != document.getElementById("passWord").value) {
				msgBox.innerHTML = "������������벻��ͬ";
				msgBox.className = "error";
				return false;
			}
			break;
		case "veryCode":
			if(obj.value == "") {
				msgBox.innerHTML = "��֤�벻��Ϊ��";
				msgBox.className = "error";
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
	msgBox.className = "";
}
</script>
  </body>
</html>
