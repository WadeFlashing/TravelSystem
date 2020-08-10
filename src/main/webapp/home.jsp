<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>个人主页</title>
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
	    <div class="container" style="background-color: #09C6AB;">
	      <a class="navbar-brand" href="index"><font color="white">旅行者 .</font></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index" class="nav-link"><font color="white" size="3px">主页</font></a></li>
	          <li class="nav-item"><a href="listProject" class="nav-link"><font color="white" size="3px">目的地</font></a></li>
	          <li class="nav-item"><a href="#" class="nav-link"><font color="white" size="3px">旅游</font></a></li>
	          <li class="nav-item"><a href="listDiary" class="nav-link"><font color="white" size="3px">游记</font></a></li>
	          <li class="nav-item"><a href="contact" class="nav-link"><font color="white" size="3px">需求联系</font></a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    


    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
         
         <div style="margin-left: 8cm;">
              <h3 align="left">Recent Blog</h3>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images2/image_1.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images2/image_2.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images2/image_3.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
            </div>
         
          <div class="col-md-4 sidebar ftco-animate"  style="position: absolute; width: 250px;" align="left">
            <div class="sidebar-box ftco-animate">
              <div class="categories">
                <h4>个人主页</h4>
                <li><a href="#"><font size="3px">个人信息</font></a></li>
                <li><a href="#"><font size="3px">重置密码</font></a></li>
                <li><a href="#"><font size="3px">我的游记</font></a></li>
                <li><a href="#"><font size="3px">发表游记</font></a></li>
                <li><a href="#"><font size="3px">订单</font></a></li>
                <li><a href="#"><font size="3px">留言</font></a></li>
                <li><a href="#"><font size="3px">需求联系</font></a></li>
                <li></li>
              </div>
            </div>

            <div class="sidebar-box ftco-animate">
              <h3>个人介绍</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
            </div>
          </div>

        </div>
      </div>
    </section> <!-- .section -->

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
        $(function(){
            //页面加载完毕后开始执行的事件
            $(".reply_btn").click(function(){
                $(".reply_textarea").remove();
                $(this).parent().append("<div class='reply_textarea'><textarea id='msg' cols='40' rows='5'></textarea><br/><input type='button' onclick='btns()' value='发表' /></div>");
            });
        });
        
        var btn = document.getElementById("btn");
        
        function btns(){
        	var msg = document.getElementById("msg");
        	       	
            var url = "http://localhost:8080/TravelSystem/addMessage?did="+${sessionScope.did}+"&mcontent="+msg.value;
            location.href=url;
        };
        
        
</script>
  
</html>