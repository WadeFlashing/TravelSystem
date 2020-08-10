<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title> Master login Form Responsive Widget Template  :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content=" Master  Login Form Widget Tab Form,Login Forms,Sign up Forms,Registration Forms,News letter Forms,Elements"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/styleLogin.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Cormorant+SC:300,400,500,600,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
</head>

<body>
	<div class="padding-all">
		<div class="header">
			<h1>登录页面</h1>
		</div>
		<div class="design-w3l">
			<div class="mail-form-agile">
				<form action="logincheck" method="post">
				<p align="middle"><font color="red">${msg}</font></p>
					<font color="white">账号:</font>&nbsp;
					<input type="text" name="username" placeholder="账号或者邮箱..." required="required" style="width: 220px;" /><br><br>
					<font color="white">密码:</font>&nbsp;
					<input type="password"  name="password" class="padding"  required="required" style="width: 220px;" /><br>
					<input type="submit" value="登录">
				</form>
				<div class="reg-bar">
				<a class="reg" href="regist"><font size="4px">立即注册</font></a>	
				<div class="reg" style="margin-left: 72px;"><a class="" href="index"><font size="4px">首页</font></a></div>
				<div align="right"><a class="" href="manage.jsp" ><font size="4px">管理员登入</font></a></div>
				</div>
			</div>
		  <div class="clear"> </div>
		</div>	
		<div class="footer">
		<p>Â© 2017  Master  Login form. All Rights Reserved </p>
		</div>
	</div>
</body>
</html>