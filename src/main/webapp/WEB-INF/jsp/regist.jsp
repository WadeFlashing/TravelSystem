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
		<div >
			<font size="6px" color="white">注&nbsp;册&nbsp;页&nbsp;面</font>
		</div>
		<div class="design-w3l">
			<div class="mail-form-agile">
				<form name="Form" action="register" onsubmit="return myFunction()" method="post">
					<p align="middle"><font color="red">${msg}</font></p>
					<font color="white">账号:</font>&nbsp;
					<input type="text" name="username"  id="username"   required="required"  style="width: 230px;"/><br><br>
					<font color="white">密码:</font>&nbsp;
					<input type="password"  name="password" id="password"  required="required" style="width: 230px;" /><br><br>
					<font color="white">名称:</font>&nbsp;
					<input type="text" name="name"  id="name"   required="required" style="width: 230px;" /><br><br>
					<font color="white">电话:</font>&nbsp;
					<input type="text" name="phone"  id="phone"  required="required" style="width: 230px;" /><br><br>
					<br>
					<input type="submit"  value="注册">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="重置" >
				</form>
				<div class="reg-bar">
				<a class="reg" href="login"><font size="4px">返回登录</font></a>					    
				<div align="right"><a class="" href="manage.jsp" ><font size="4px">管理员登入</font></a></div>
				</div>
			</div>
		  <div class="clear"> </div>
		</div>
		
		<div class="footer">
		<p>Â© 2017  Master  Login form. All Rights Reserved </p>
		</div>
	</div>
	
	<script type="text/javascript">
	function myFunction(){
		var str1 = document.getElementById('username').value;
		var str2 = document.getElementById('password').value;
		var str3 = document.getElementById('phone').value;
		var str4 = document.getElementById('name').value;
		var reg = new RegExp("[`~!@#$^&*()=|{}\\s+':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]");
		//判断是否包含特殊字符
		var reg2 = new RegExp("[\\u4E00-\\u9FFF]+","g");
		//判断是否是数字
		var regPos = /^[0-9]+.?[0-9]*$/; 
		
		if(reg.test(str1) || reg2.test(str1)){
			alert("账号输入不正确！");
            return false;
		}
		
		if(reg.test(str2)){
			alert("密码不能包含特殊字符！");
            return false;
		}
		
		if(!regPos.test(str3) || str3.length>11 || str3.length<11)
        {
            alert("电话输入不正确！");
            return false;
        }
		
	}
	</script>
	
</body>
</html>