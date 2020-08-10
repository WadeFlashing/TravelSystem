<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<%@page import="com.web.core.Entity.Diary"%>
<%@page import="com.web.core.Tool.SplitString"%>
<%@page import="java.math.BigDecimal"%>

<!DOCTYPE html>
<html lang="en">
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
	          <a class="hideA"  href="homePage">
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

    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
          <div class="col-md-8 ftco-animate">
          	<c:forEach items="${diary}" var="diary">
            <h2 class="mb-3">${diary.dname}</h2>           
            
            <%
            List<Diary> contentList = (List)request.getAttribute("diary");	 
            String imgcontent = contentList.get(0).getDimage();
            if(imgcontent==null){
            	imgcontent = "";
            }
            List<String> imgresult = Arrays.asList(imgcontent.split(","));
            double length = imgresult.size()+1.0;
            String content = contentList.get(0).getDcontent();
            double longs = content.length();
            double m = 0.0;
        	double n= 1/length;
        	if(longs>170.0){
            for(int a=0;a<(int)length;a++){
            	String diaryContent = content.substring((int)(longs*m), (int)(longs*n));
            	m = n;
            	n = n+(1/length);
            	String image;
            	%>
            	<p><%=diaryContent %></p>
            	<% 
            	if(a==(int)(length-1.0)){
            		continue;
            	}
            	image =imgresult.get(a);
            %>
            
            <img src="<%=image %>" alt="" class="img-fluid">
              <%
           		 }
        	}else{
        		%>
        	<p>${diary.dcontent}</p>
        	
        	<%
        	
        	for(int b=0;b<imgresult.size();b++){
        		String image =imgresult.get(b); 
        	%>
        	<img src="<%=image %>" alt="" class="img-fluid" style="width: 800px;height: 405px;"/>
        	<br>
        	<br>
        	<%
        		}
        	}
             %>
            
            <div class="tag-widget post-tag-container mb-5 mt-5">
              <div class="tagcloud">
                <a href="#" class="tag-cloud-link">Life</a>
                <a href="#" class="tag-cloud-link">Sport</a>
                <a href="#" class="tag-cloud-link">Tech</a>
                <a href="#" class="tag-cloud-link">Travel</a>
                <a style="border:0px;position:absolute;right:40px;"><font size="3px">${diary.diarytime}</font></a>
              </div>
              <br>
              
            </div>
            </c:forEach>
            
            <div class="about-author d-flex p-4 bg-light">
              <div class="bio mr-5">
                <img src="images2/person_1.jpg" alt="Image placeholder" class="img-fluid mb-4" width="120" height="120">
              </div>
              <div class="desc">
                <h5>${requestScope.name}</h5>
                <p>${requestScope.signature}</p>
              </div>
            </div>

            <div class="pt-5 mt-5">
              <h3 class="mb-5">6 Comments</h3>
              <p><a href="javascript:;" class="reply_btn" ><strong><font size="5px">留言</font></strong></a></p>
              <ul class="comment-list">
              <c:forEach items="${message}" var="message">
                <li class="comment">
                  <div class="vcard bio">
                    <img src="images2/person_4.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>John Doe</h3>
                    <div class="meta">${message.mtime}</div>
                    <p>${message.mcontent}</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>
                </li>
			  </c:forEach>
                            
              </ul>                      
            </div>

          </div> <!-- .col-md-8 -->
          <div class="col-md-4 sidebar ftco-animate">
            <div class="sidebar-box">
              <form action="#" class="search-form">
                <div class="form-group">
                  <span class="icon icon-search"></span>
                  <input type="text" class="form-control" placeholder="Type a keyword and hit enter">
                </div>
              </form>
            </div>
            <div class="sidebar-box ftco-animate">
              <div class="categories">
                <h3>Categories</h3>
                <li><a href="#">Tour <span>(12)</span></a></li>
                <li><a href="#">Hotel <span>(22)</span></a></li>
                <li><a href="#">Coffee <span>(37)</span></a></li>
                <li><a href="#">Drinks <span>(42)</span></a></li>
                <li><a href="#">Foods <span>(14)</span></a></li>
                <li><a href="#">Travel <span>(140)</span></a></li>
              </div>
            </div>

            <div class="sidebar-box ftco-animate">
              <h3>Recent Blog</h3>
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

            <div class="sidebar-box ftco-animate">
              <h3>Tag Cloud</h3>
              <div class="tagcloud">
                <a href="#" class="tag-cloud-link">dish</a>
                <a href="#" class="tag-cloud-link">menu</a>
                <a href="#" class="tag-cloud-link">food</a>
                <a href="#" class="tag-cloud-link">sweet</a>
                <a href="#" class="tag-cloud-link">tasty</a>
                <a href="#" class="tag-cloud-link">delicious</a>
                <a href="#" class="tag-cloud-link">desserts</a>
                <a href="#" class="tag-cloud-link">drinks</a>
              </div>
            </div>
            			
            <div class="sidebar-box ftco-animate">
              <h3>Paragraph</h3>
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
        
        $(document).ready(function(){
          var uid = <%=session.getAttribute("uid")%>;
      	  if(uid==null){
      	  $(".hideA").hide();
      	  }else {
      		$("#hideB").hide();
		}
      });
        
</script>
  
</html>