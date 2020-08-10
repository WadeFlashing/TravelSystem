<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>登录页面</title>
		<meta charset="UTF-8" />
		<!--引入主题样式-->
		<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css" />
		<!--引入图标样式-->
		<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css" />
		<!--引入jQuery文件-->
		<script src="easyui/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
		<!--引入EasyUi的js文件-->
		<script src="easyui/jquery.easyui.min.js" type="text/javascript" charset="utf-8"></script>
		<!--声明css代码域-->
		<style>
        html, body
        {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
        }

        h1
        {
            color: rgb(128, 128, 128);
            text-align: center;
        }

        a:link, a:hover, a:visited, a:active
        {
            color: rgb(128, 128, 128);
            text-decoration: none;
        }

        form
        {
            width: 430px;
            min-width: 430px;
            position: absolute;
            left: 35%;
            top: 15%;
            margin: 0;
            padding: 30px;
            background-color: white;
            border: 2px solid rgba(128, 128, 128, 0.2);
            border-radius: 10px;
        }

            form div
            {
                margin-bottom: 10px;
            }
    </style>
<title>Insert title here</title>
</head>
<body bgcolor="#DDDDDD">
    <form action="" method="post"  id="login_form">
        <div>
            <h1>管理员登录</h1>
        </div>
        <div>
            <input class="easyui-textbox" data-options="iconCls:'icon-man',iconWidth:30,iconAlign:'left',prompt:'用户名'" id="account" name="account" style="width:100%;height:35px;" />
        </div>
        <br>
        <div>
            <input class="easyui-passwordbox" data-options="iconWidth:30,iconAlign:'left',prompt:'密码'" id="password"  name="password" style="width:100%;height:35px;" />
        </div>
        <div>
            <input class="easyui-checkbox" label="记住密码" labelPosition="after" labelWidth="90" />
        </div>
        <div>
			<input class="easyui-linkbutton" id="login_submit" type="button" value="登陆" style="width:100%;height:35px;" />
        </div>
        <div>
            <div style="display:inline;">
                <a href="javascript:void(0)">还未注册？</a>
            </div>
            <div style="display:inline;margin-left:170px;">
                <a href="javascript:void(0)">忘记密码？</a>
            </div>
        </div>
    </form>
    
   
</body>
<script type="text/javascript">
$(function(){
	$("#login_submit").click(function(){
		var account = document.getElementById("account");
		var password = document.getElementById("password");
		if(account.value=="" || password.value==""){
			alert("账号或密码不能为空！");
			return false;
		}
		$.post("adminLogin?account="+account.value+"&password="+password.value, function (data) {
            if (data == 1) {
            	//跳转到购买成功页面
          	  alert("登录成功！");
              window.location.href = "http://localhost:8080/TravelSystem/main";
            } else {
            	 alert("登录失败！账号或密码错误");
				}
            
      });
		
	})
});
</script> 
</html>