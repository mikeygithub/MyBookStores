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
    		<a href="javascript:void(0)" onclick="buycar()">购物车</a>
    		<a href="javascript:void(0)" onclick="logins()">登录</a>
    		<a href="javascript:void(0)" onclick="regiter()">注册</a>
    		<a href="javascript:void(0)" onclick="loginout()">注销</a>
    	</div>
    	<div class="nav"><ul>
  <li><a class="active" href="index.jsp">主页</a></li>
  <li><a href="#news">新闻</a></li>
  <li><a href="#contact">联系</a></li>
  <li><a href="#about">关于</a></li>
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
    	
    	function logins(){//登入界面
    		jumps("UserAction_loginUI.action");
    	}
    	
    	function regiter(){//注册页面
    		jumps("UserAction_Register.action");
    	}
    	
    	function buycar(){//购物车
    		if(checkalreadylogin()){
    		//	alert("购物车");
    		//$("#showbook1").empty();
    		$("#showbook1").load("UserAction_myBuyCar.action");
    		}else{
    		jumps("UserAction_buyCarNullJumpPage.action");
    		}
    	}
    	function loginout(){//注销
    		if(checkalreadylogin()){
    			//alert("注销成功");
    			jumps("UserAction_loginout.action");
    		setTimeout("location.href='index.jsp'", 3000);
    			
    		}else{
    		
    		jumps("UserAction_buyCarNullJumpPage.action");
    		/*$("#inputbox").empty();
    		$("#inputbox").load('UserAction_buyCarNullJumpPage.action');
    		$('#light2').css("display","block");
    		$('#fade').css("display","block");*/
    		}
    	}
    	function jumps(url){
    		$("#inputbox").empty();
    		$("#inputbox").load(url);
    		$('#light2').css("display","block");
    		$('#fade').css("display","block");
    	}
    </script>
  </body>
</html>
