<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>酒店列表</title>
    <title>Adventure - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">
    <link rel="stylesheet" href="css2/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css2/animate.css">
    
    <link rel="stylesheet" href="css2/owl.carousel.min.css">
    <link rel="stylesheet" href="css2/owl.theme.default.min.css">
    <link rel="stylesheet" href="css2/magnific-popup.css">

    <link rel="stylesheet" href="css2/aos.css">

    <link rel="stylesheet" href="css2/ionicons.min.css">

    <link rel="stylesheet" href="css2/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css2/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css2/flaticon.css">
    <link rel="stylesheet" href="css2/icomoon.css">
    <link rel="stylesheet" href="css2/style.css">
</head>
<body>
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index">旅行者 .</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index" class="nav-link"><font size="3px">首页</font></a></li>
	          <li class="nav-item"><a href="listProject" class="nav-link"><font size="3px">目的地</font></a></li>
	          <li class="nav-item"><a href="listDiary" class="nav-link"><font size="3px">游记</font></a></li>
	          <li class="nav-item"><a href="ShowHotel" class="nav-link"><font size="3px">酒店</font></a></li>
	          <li class="nav-item"><a href="homePage" class="nav-link" id="hideB"><font size="3px">个人主页</font></a></li>
	        </ul>
	        <div>
	          <a class="hideA" href="homePage">
	     	  <img alt="" src="images2/user.jpg"  height="20px" width="20px" align="middle" /><font color="white" size="2px">&nbsp;${sessionScope.username}</font>
	    	  </a>
	    	</div>
	      </div>
	    </div>
	  </nav>
	  
	<div class="hero-wrap js-fullheight" style="background-image: url('images2/bg_Hotel.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Hotel.</h1>
          </div>
        </div>
      </div>
    </div>
    <br><br>
    <div class="container">
        <div class="row d-flex">
        <table>
            <div class="blog-entry align-self-stretch">
              <div class="text">
              <c:forEach items="${hotel}" var="hotel">
              <div class="block-21 mb-4 d-flex" >
                <a class="blog-img mr-4" style="background-image: url(images2/face_Hotel.jpg); width: 310px;height: 160px;">
                <span class="tag"><strong><font size="3px">Hotel</font></strong></span>
                </a>
                <div class="text" id="abc">
                  <h4 class="heading">酒店名称：<a href="findHotelByName?hotelName=${hotel.hotelName}"><strong>${hotel.hotelName}</strong></a></h4>
                  <div class="meta">
                  <br>
                  <div><font color="black" size="3px">地址：${hotel.hotelAddress}</font></div>
                  <br><br>
                  <div><font color="black" size="3px">价格：</font><strong><font color="#08C299" size="3px">${hotel.price}元起</font></strong></div>
                  </div>
                </div>
              </div>
              <hr style="width: 230%; height: 10%; border-color: #08c299; ">
              </c:forEach>
                
                
              </div>
            </div>
        </table>                                                                   
        
        </div>
      </div>
    
 <!--  ============================================================= -->
  <script src="js2/jquery.min.js"></script>
  <script src="js2/jquery-migrate-3.0.1.min.js"></script>s
  <script src="js2/popper.min.js"></script>
  <script src="js2/bootstrap.min.js"></script>
  <script src="js2/jquery.easing.1.3.js"></script>
  <script src="js2/jquery.waypoints.min.js"></script>
  <script src="js2/jquery.stellar.min.js"></script>
  <script src="js2/owl.carousel.min.js"></script>
  <script src="js2/jquery.magnific-popup.min.js"></script>
  <script src="js2/aos.js"></script>
  <script src="js2/jquery.animateNumber.min.js"></script>
  <script src="js2/bootstrap-datepicker.js"></script>
  <script src="js2/jquery.timepicker.min.js"></script>
  <script src="js2/scrollax.min.js"></script>

  <script src="js2/google-map.js"></script>
  <script src="js2/main.js"></script>
	  
<script type="text/javascript">
	$(document).ready(function(){
		  var uid = <%=session.getAttribute("uid")%>;
		  if(uid==null){
		  $(".hideA").hide();
		  }else{
		  $("#hideB").hide();
		  }
	});
</script>	
	
</body>
</html>