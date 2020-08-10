<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<%@page import="com.web.core.Entity.Project"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link href="css/whir_css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/superslide.2.1.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.2"></script>

<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
<link rel="stylesheet" href="css/search.css">
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>

</head>
  <body>
  
  <div class="gtco-loader"></div>

  
  <nav class="gtco-nav" role="navigation" >
		<div class="gtco-container" style="background-color: #09C6AB; height: 40px; max-width: 1200px;">			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="index" ><font color="white" >旅行者 .</font></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<li><a href="index"><font color="white" size="3px">首页</font></a></li>
						<li><a href="listProject"><font color="white" size="3px">目的地</font></a></li>
						<li><a href="listDiary"><font color="white" size="3px">游记</font></a></li>
						<li><a href="ShowHotel"><font color="white" size="3px">酒店</font></a></li>
						<li><a href="homePage" class="hideB"><font color="white" size="3px">个人主页</font></a></li>
						<li><a class="hideA" href="homePage">
	     				   <img alt="" src="images2/user.jpg"  height="26px" width="26px"  align="middle"/><font color="white" size="2px">${sessionScope.username}</font>
	    			    </a></li>
					</ul>	
				</div>
			</div>			
		</div>
	</nav>
<br>
<br>
<table>
<c:forEach items="${project}" var="project">
<div id="container">
  <div class="column">
    <div class="title" >
      <h1>旅游项目-${project.pname}</h1>
    </div>
    
    <div style="margin: 10px;padding: 15px;margin-top: 20px;border-radius: 6px;box-shadow: 1px 3px 11px 5px #dcd3c0;">
      	<div class="jdinfo" style="width: 1000px;height: 30px;font-size: 18px;font-weight: 600;">
      	<h3>旅游线路：${project.pdescribe}</h3></div>
      	<br>
	    <div class="jdinfo" style="width:1000px;color:red">
	      	起点位置：${project.pbegin}
	      	- 
	      	终点位置：${project.pend}
	    </div>
	    <br>
	      <div class="jdinfo" style="width:1000px;display: initial;">
	    	<span><strong>详情介绍：</strong>${project.pcontent}</span>
	      </div>      
	      <br>
	      <p><strong>景点图片：</strong></p>
	      <%      
	      List<Project> list = (List)request.getAttribute("project");
	      String img = list.get(0).getPimage();
	      List<String> result = Arrays.asList(img.split(","));
	      for(int i=0;i<result.size();i++){
	    	  String image =result.get(i); 
	    	%>	      	           
	      <img src="<%=image%>" width="200" height="200">      
	     <%  
	      }
	      %>	      
	      <br><br>
	     <div class="row form-group" >
			<div class="col-md-12">
				<label for="date-start">旅行日期</label>
				<input type="text" id="date-start"  name="requiredate" required="required" class="form-control" 
				style="width: 220px;">
			</div>
		</div>
		<div align="right">
	      <strong><font color="#09C6AB" size="4px">价格：￥${project.pcost}</font></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <input type="button" id="buy" value="购买" class="button" />
	    </div>
    </div>
    
  </div>
</div>
</c:forEach>
</table>

<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	
	<!-- Datepicker -->
	<script src="js/bootstrap-datepicker.min.js"></script>
	

	<!-- Main -->
	<script src="js/main.js"></script>

  </body>
  
<script type="text/javascript">
$(document).ready(function(){
	  var uid = <%=session.getAttribute("uid")%>;
	  if(uid==null){
	  $(".hideA").hide();
	  }else {
		  $(".hideB").hide();
	}
});


$(function(){
	$("#buy").click(function(){
		//先判断是否登录，再提交订单到后台
		var orderUid = <%=session.getAttribute("uid")%>;
		if(orderUid=="" || orderUid==null){
			alert("你还未登录，请登陆后再购买！");
			window.location.href = "http://localhost:8080/TravelSystem/login";
			return false;
		}
		var travelTime = document.getElementById("date-start");
		if(travelTime.value==""){
			alert("请选择旅行日期.");
			return false;
		}
		var time = travelTime.value.split("/");
		var a = time[0];
		var b = time[1];
		var c = time[2];
		var Times = c+"/"+a+"/"+b;
		var TimesV=new Date(Times.replace("-","/"));
		var nowTime=(new Date()).toLocaleDateString();  //获取当前日期
		var nowTimeV=new Date(nowTime.replace("-","/"));
		if(nowTimeV>=TimesV){
			alert("旅游出行时间必须晚于当日时间.");
			return false;
		}
		var pid = <%=request.getAttribute("pid")%>;
		var cost = <%=request.getAttribute("cost")%>;
		var PostTravelTime = document.getElementById("date-start");
		if (confirm("你确认要购买此旅游项目吗?")==true){ 
		$.post("buyProject?uid="+orderUid+"&pid="+pid+"&cost="+cost+"&travelTime="+PostTravelTime.value, function (data) {
              if (data == 1) {
              	//跳转到购买成功页面
            	  window.location.href = "http://localhost:8080/TravelSystem/BuySuccess.jsp";
              } else {
            	  //相同日期的旅游项目订单，购买失败
            	  window.location.href = "http://localhost:8080/TravelSystem/index";
				}
        });
			 }else{ 
			  return false; 
			 }
		
	})
});

</script>
  
</html>
