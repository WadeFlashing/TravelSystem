<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>旅行者 &mdash; Free Website Template, Free HTML5 Template by FreeHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
	
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
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<!-- <div class="page-inner"> -->
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="index">旅行者 .</a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<li><a href="index">首页</a></li>
						<li><a href="listProject">目的地</a></li>
						<li><a href="listDiary">游记</a></li>
						<li><a href="ShowHotel">酒店</a></li>
						<li><a class="hideA" href="homePage">
	     				   <img alt="" src="images2/user.jpg"  height="21px" width="21px"  align="middle"/>${sessionScope.username}
	    			    </a></li>
					</ul>	
				</div>
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_bg_3.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1>旅游线路需求</h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>
	
	
	<div class="gtco-section border-bottom">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-6 animate-box">					
					<p><font color="red" size="4px">${msg}</font></p>
					<h3>需求联系</h3>
					<form action="AddRequirement" method="post">
						<div class="row form-group">
							<div class="col-md-12">
								<label for="date-start">旅游目的地：</label>
								<input type="text" id="requireplace"  name="requireplace" required="required" class="form-control" placeholder="你想去的地方....">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<label for="date-start">途经游玩地点：</label>
								<input type="text" id="scenicspot"  name="scenicspot" required="required" class="form-control" placeholder="途经的景点....">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<label for="date-start">旅行日期</label>
								<input type="text" id="date-start"  name="requiredate" required="required" class="form-control">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<label for="date-start">大致旅游方案：</label>
								<textarea name="requirements" id="requirements" cols="30" rows="10" class="form-control" placeholder="描述您的需求....." required="required"></textarea>
							</div>
						</div>
						<div class="form-group">
							<input type="submit" value="发送信息" class="btn btn-primary">
						</div>

					</form>		
				</div>
				<div class="col-md-5 col-md-push-1 animate-box">
					
					<div class="gtco-contact-info">
						<h3>联系方式（微信、QQ、电话）</h3>
						<ul>
							<li class="address"><font color="black">微&nbsp;信：</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<img src="images/weiXinCode.jpg" width="180" height="180"></li>
							<li class="address"><font color="black">Q&nbsp;Q：</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<img src="images/qqCode.jpg" width="180" height="180"></li>
							<li class="phone"><a href="tel://18316119088"><font size="3px">电话：18316119088</font></a></li>
							<li class="email"><a href="https://mail.qq.com"><font size="3px">邮箱：1064243031@qq.com</font></a></li>
							<li class="url"><a href="http://localhost:8080/TravelSystem/index"><font size="3px">主页：Traveler.com</font></a></li>
						</ul>
					</div>

				</div>
				</div>
			</div>
		</div>
	</div>

	<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">

			<div class="row copyright">
				<div class="col-md-12">
					<p class="pull-left">
						<small class="block">&copy; 2016 Free HTML5. All Rights Reserved.</small> 
						<small class="block">Designed by FreeHTML5.co  Demo Images: Unsplash - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="æ¨¡æ¿ä¹å®¶"></a> - Collect from <a href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿" target="_blank"></a></small>
					</p>
					<p class="pull-right">
						<ul class="gtco-social-icons pull-right">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>
				</div>
			</div>

		</div>
	</footer>
	<!-- </div> -->

	</div>

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
	  }
});
</script>
	
</html>

