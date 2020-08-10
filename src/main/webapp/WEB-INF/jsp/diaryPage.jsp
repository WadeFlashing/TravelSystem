<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
  <head>
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
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images2/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Tips &amp; Articles</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row d-flex">
        <table>
		<c:forEach items="${list}" var="list">
          <div class="col-md-4 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a class="block-20" style="background-image: url('images2/image_1.jpg');">
              </a>
              <div class="text">
              	<span class="tag">Tips, Travel</span>
                <h3 class="heading mt-3"><a href="findDiary?dname=${list.dname}">${list.dname}</a></h3>
                <div class="meta mb-3">
                  <div><a href="#">October 3, 2018</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
              </div>
            </div>
          </div>          
          </c:forEach>
        </table>                                                                   
        
        </div>
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>  

<!-- loader -->
  <div id="ftco-loader" class="show fullscreen">
  <svg class="circular" width="48px" height="48px">
  <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
  <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/>
  </svg>
  </div>

  <script src="js2/jquery.min.js"></script>
  <script src="js2/jquery-migrate-3.0.1.min.js"></script>
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
    
  </body>
  
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
  
</html>