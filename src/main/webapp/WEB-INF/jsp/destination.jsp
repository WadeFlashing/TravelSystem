<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"><!--可无视-->
	<link rel="stylesheet" href="css/search.css">

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
			
<title>Insert title here</title>
</head>
<body>

<div class="gtco-loader"></div>
<div id="page">

<nav class="gtco-nav" role="navigation" >
		<div class="gtco-container" style="background-color: #09C6AB; height: 40px;">			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="index" ><font color="white" >旅行者 .</font> </a></div>
				</div>
				<div class="col-xs-8 text-right menu-1" >
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
	
	<div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<br><br>
					<h2>Most Popular Destination</h2>					
				</div>
			</div>
			
<div class="containers">
<form action="SearchProject" class="parent" method="post">
    <select name="scope"> 
    <option value="place">&nbsp; 省&nbsp;&nbsp;份 &nbsp;</option> 
    <option value="country">&nbsp; 全&nbsp;&nbsp;国 &nbsp;</option> 
    </select>
    	&nbsp;
    <select class="select2" name="province" > 
    <option value="广东省">广东省</option> 
    <option value="云南省">云南省</option> 
    <option value="陕西省">陕西省</option> 
    </select>
    &nbsp;
    <input type="text" class="search" name="placename" placeholder="选择全国请输入名称.." />
    &nbsp;
    <input type="submit" class="button" value="搜索" >
    </form>
</div>
<hr class="hr">
			
			<div class="row">
				<table>
				<c:forEach items="${list}" var="list">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="images/img_1.jpg" class="fh5co-card-item image-popu">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="images/img_4.jpg" alt="Image" class="img-responsive">
						</figure>						
						<div class="fh5co-text">
							<a href="findProject?projectname=${list.pname}"><p><font size="4px">${list.pname}</font></p></a>
							<a><p>${list.pdescribe}</p></a>	
						</div>
					</a>
				</div>
				</c:forEach>
				</table>				
			</div>
		</div>
	</div>
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
	  }else {
	  $(".hideB").hide();
	}
});
</script>

</html>