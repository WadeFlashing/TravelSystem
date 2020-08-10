<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<%@page import="com.web.core.Entity.Project"%>
<!DOCTYPE html>
<html>
<head>
<title>购买成功页面</title>
</head>
<body>
<div id="imageDiv" align="center" style="margin-top: 70px;">
<img alt="" src="images/BuySuccess.png" id="successPNG" height="150px" width="150px" >
<p><strong><font size="5px" color="green">购买成功！</font></strong></p>
<p id="page_div">系统将在 5 秒后自动跳转到首页</p>
</div>

<script type="text/javascript">

    var num = 4; //倒计时的秒数
    var URL = "index.html";
    window.setTimeout("doUpdate()", 1000);
    function doUpdate(){
        if(num != 0){
            document.getElementById('page_div').innerHTML = '系统将在 '+num+' 秒后自动跳转到首页' ;
            num --;
            window.setTimeout("doUpdate()", 1000);
        }else{
            num = 4;
            window.location = URL;
        }
    }
</script>

</body>
</html>