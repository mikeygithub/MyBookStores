<%@ page language="java" import="java.util.*" contentType="text/html; charset=gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!-- <link rel="stylesheet" type="text/css" href="../../css/style-navbar.css">-->
	
<style type="text/css">
#header {
    overflow: hidden;
    padding-top: 15px;
}
.wrap {
    width: 960px;
    margin: 0 auto;
}
#header #logo {
    float: left;
    width: 200px;
    text-align: center;
}
#header .help {
    float: right;
    padding-top: 5px;
}
#header .nav {
	float: left;
	padding-left: 0px;
	padding-bottom: 0px;
	padding-top:45px;
	margin: 0 auto;
	height: 30px;
}
a:link {
	color: green;
}
#header .nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    border: 1px solid #e7e7e7;
    background-color: #f3f3f3;
}

#header .nav li {
    float: left;
}

#header .nav li a {
    display: block;
    color: #666;
    text-align: center;
    padding: 5px 20px;
    text-decoration: none;
    
border-top-left-radius:5px;
border-top-right-radius:5px;
-moz-border-radius-topleft:5px;
-moz-border-radius-topright:5px;
-webkit-border-top-left-radius:5px;
-webkit-border-top-right-radius:5px;
}

#header .nav li a:hover:not(.active) {
    background-color: #ddd;
}

#header .nav li a.active {
    color: black;
    background-color: #fc7e31;
}




</style>
  </head>
  
  <body>
    <div id="header" class="wrap">
    	<div id="logo"><img alt="" src="${pageContext.servletContext.contextPath}/images/logo.jpg"></div>
    	<div class="help">
    		<a href="javascript:void(0)" onclick="buycar()">���ﳵ</a>
    		<a href="javascript:void(0)" onclick="logins()">��¼</a>
    		<a href="javascript:void(0)" onclick="regiter()">ע��</a>
    		<a href="javascript:void(0)" onclick="loginout()">ע��</a>
    	</div>
    	<div class="nav"><ul>
  <li><a class="active" href="#home">��ҳ</a></li>
  <li><a href="#news">����</a></li>
  <li><a href="#contact">��ϵ</a></li>
  <li><a href="#about">����</a></li>
</ul>
    	
</div>
    </div>
    <script type="text/javascript">
    	function checkalreadylogin(){
    		 if($.trim("${sessionScope.usermessage}") == ""){
    		 	return false;
    		 }
    		 return true;
    	}
    	
    	function logins(){
    		//$("#inputbox").empty();
    		$("#inputbox").load("login.jsp");
    		document.getElementById('light2').style.display='block';
    		document.getElementById('fade').style.display='block';
    	}
    	
    	function regiter(){
    		//$("#inputbox").empty();
    		$("#inputbox").load('Register.jsp');
    		document.getElementById('light2').style.display='block';
    		document.getElementById('fade').style.display='block'
    	}
    	
    	function buycar(){
    		if(checkalreadylogin()){
    			alert("���ﳵ");
    		}else{
    			alert("���ȵ���");
    		}
    	}
    	function loginout(){
    		if(checkalreadylogin()){
    			alert("ע���ɹ�");
    		}else{
    			alert("�㻹δ����Ŷ");
    		}
    	}
    </script>
  </body>
</html>
