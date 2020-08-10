<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<%@page import="com.web.core.Entity.Hotel"%>
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
 <c:forEach items="${hotel}" var="hotel">
<div id="container">
  <div class="column">
    <div class="title" >
      <h1 style="background: url(images/icon_Hotel.png) left top no-repeat;">${hotel.hotelName}</h1>
    </div>
    
    <div style="margin: 10px;padding: 15px;margin-top: 20px;border-radius: 6px;box-shadow: 1px 3px 11px 5px #dcd3c0;">
      	<div class="jdinfo" class="jdinfo" style="width:1000px;display: initial;">
      	<h3>酒店介绍：</h3>${hotel.introduce}</div>
      	<br><br>
      	<p><span><strong>酒店地址：</strong></span>${hotel.hotelAddress}</p>
      	<br>
	    <p><span><strong>酒店图片：</strong></span></p>
	         <%      
	      List<Hotel> list = (List)request.getAttribute("hotel");
	      String img = list.get(0).getHotelImage();
	      List<String> result = Arrays.asList(img.split(","));
	      for(int i=0;i<result.size();i++){
	    	  String image =result.get(i); 
	    	%>	      	           
	      <img src="<%=image%>" width="200" height="200">      
	     <%  
	      }
	      %>	         
	    <br><br>
      	<div>
    	<div class="row form-group" >
			<div class="col-md-12">
				<label for="date-start">入住日期：</label>
    			<input type="text" id="date-start"   class="form-control" style="width: 150px;height: 38px;">
    		</div>
		</div>
      	</div>
      	<br>  
      	<div>
      	<span><strong>入住天数：</strong></span><select id="days" name="days" style="width: 80px;">
      	<option value="1天">1天</option>
      	<option value="2天">2天</option>
      	<option value="3天">3天</option>
      	</select>
      	</div>
      	<br>
      <div class="jdinfo" style="width:1000px;display: initial;">
    	<span><strong>房型信息：</strong></span>
    	<select name="room" id="room" style="width: 110px;">
      	<option>标准间</option>
      	<option>双人房</option>
      	<option>豪华房</option>
      	</select>
      </div>      
	      <br><br><br>
	      <div align="right">
	     <strong><font color="#09C6AB" size="4px">价格：￥${hotel.price}</font></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	     <input type="button" id="buyHotel" class="button" value="预订酒店"  />
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
	$("#buyHotel").click(function(){
		//先判断是否登录，再提交订单到后台
		var orderUid = <%=session.getAttribute("uid")%>;
		if(orderUid=="" || orderUid==null){
			alert("你还未登录，请登陆后再购买！");
			window.location.href = "http://localhost:8080/TravelSystem/login";
			return false;
		};
		var liveTime = document.getElementById("date-start");
		if(liveTime.value==""){
			alert("请选择入住日期.");
			return false;
		}
		var time = liveTime.value.split("/");
		var a = time[0];
		var b = time[1];
		var c = time[2];
		var TimeReverse = c+"/"+a+"/"+b;
		var newTime=new Date(TimeReverse.replace("-","/"));
		var nowTime=(new Date()).toLocaleDateString();  //获取当前日期
		var NewnowTime=new Date(nowTime.replace("-","/"));
		if(NewnowTime>newTime){
			alert("入住时间不能早于当日时间.");
			return false;
		}
		var hid = <%=request.getAttribute("hid")%>;
		var price = <%=request.getAttribute("price")%>;
		var travelTime = document.getElementById("date-start");
		var room = document.getElementById("room");
		var days = document.getElementById("days");

		if (confirm("你确认要预订该酒店吗?")==true){ 
			$.post("bookHotel?uid="+orderUid+"&hid="+hid+"&price="+price+"&travelTime="
					+travelTime.value+"&room="+room.value+"&days="+days.value, function (data) {
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
