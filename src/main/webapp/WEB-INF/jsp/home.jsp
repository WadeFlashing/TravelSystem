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

	<link rel="stylesheet" href="css/OrderTbale.css">
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
	          <li class="nav-item"><a href="index" class="nav-link"><font color="white" size="3px">首页</font></a></li>
	          <li class="nav-item"><a href="listProject" class="nav-link"><font color="white" size="3px">目的地</font></a></li>
	          <li class="nav-item"><a href="listDiary" class="nav-link"><font color="white" size="3px">游记</font></a></li>
	          <li class="nav-item"><a href="ShowHotel" class="nav-link"><font color="white" size="3px">酒店</font></a></li>
	        </ul>
	        <div id="head-icon"><a href="homePage">
	        <img alt="" src="images2/user.jpg"  height="20px" width="20px"  align="middle"/><font color="white" size="2px">${sessionScope.username}</font>
	        </a></div>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    

    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
         
         <div style="margin-left: 8cm;">
              <div id="mydiary" >
              <h3 align="left">我的游记</h3>
              <hr style="width: 230%; height: 10%; border-color: #08c299; ">
              <strong><font color="green" size="4px">${msg1}</font></strong>
              <strong><font color="red" size="4px">${msg2}</font></strong>
              <strong><font color="#08c299" size="4px">${requestScope.diaryMessage}</font></strong>
              <c:forEach items="${list}" var="list">
              <div class="block-21 mb-4 d-flex" >
                <a class="blog-img mr-4" style="background-image: url(images2/image_1.jpg);"></a>
                <div class="text" id="abc">
                  <h3 class="heading"><a href="findDiary?dname=${list.dname}">${list.dname}</a></h3>
                  <div class="meta">
                    <div><a href="#">时间：${list.diarytime}</a></div>
                  </div>
                </div>
              </div>
              </c:forEach>
              <p><strong><font color="black" size="3px">${requestScope.countDiary} </font></strong></p>
              </div>
              
              
              <form action="" method="post">
             <div id="personal" style="display:none ;">
             <h3 align="left">个人信息</h3>
             <hr style="width: 190%; height: 10%; border-color: #08c299; ">
             <div class="updateMessage" id="updateMessage"></div>
             <c:forEach items="${user}" var="user">
				<label for="date-start">名称：</label>
				<input type="text" id="myname"  name="myname" value="${user.name}" class="form-control" style="border-color: #878787;
				border-style: solid;border-top-width: 0px;border-right-width: 0px;border-radius: 0px;border-bottom-width: 1px;border-left-width: 0px;
				height: 25px !important;padding: 0rem 0rem;line-height: 0;width: 6cm;"><br>
				<label for="date-start">性别：</label>
				<select id="selectSex"  name="selectSex"  style="height: 30px;width: 50px;">
					<option selected="selected" >男</option>
					<option>女</option>
				</select>
				<br><br>
				<label for="date-start">电话号码：</label>
				<input type="text" id="phone"  name="phone" value="${user.phone}" class="form-control" style="border-color: #878787;
				border-style: solid;border-top-width: 0px;border-right-width: 0px;border-radius: 0px;border-bottom-width: 1px;border-left-width: 0px;
				height: 25px !important;padding: 0rem 0rem;line-height: 0;width: 6cm;"><br>
				<label for="date-start">地址：</label>
				<input type="text" id="address"  name="address"  value="${user.address}" class="form-control" style="border-color: #878787;
				border-style: solid;border-top-width: 0px;border-right-width: 0px;border-radius: 0px;border-bottom-width: 1px;border-left-width: 0px;
				height: 25px !important;padding: 0rem 0rem;line-height: 0;width: 11cm;"><br>
				<label for="date-start">个人签名：</label><br>
				<textarea id="personalsign" name="personalsign"  cols="50" rows="3" >${user.signature}</textarea><br><br>
				</c:forEach>
			  <div class="col-md-12">
			 	 <input type="button" onclick="updatePersonal()" value="确定" id="updatebtn" class="btn btn-primary" >
			 	 &emsp;&emsp;
			 	 <input type="button" value="清空" onclick="clearInformation()" class="btn btn-primary">
			 </div>
			 </div>
			 </form>
              
              
             <form action="" method="post" id="resetForm">
             <div id="repwd" style="display: none;">
             <h3 align="left">重置密码</h3>
             <hr style="width: 315%; height: 10%; border-color: #08c299; ">
            <div class="resetMessage" id="Message"></div>
				<label for="date-start">旧密码：</label>
				<input type="password" id="oldpassword"  name="oldpwd"  required="required" class="form-control" >
				<label for="date-start">新的密码：</label>
				<input type="password" id="newpassword"  name="newpwd" required="required" class="form-control" onkeyup="special()">
				<label for="date-start">再次输入：</label>
				<input type="password" id="secondpassword"  name="secpwd" required="required" class="form-control" onkeyup="validate()">
			 	<span id="tips" style="position: absolute;"></span>
			 <br>
			  <div class="col-md-12">
			 	 <input type="button" onclick="resetPassword()" value="确定" id="btn" class="btn btn-primary" >
			 	 &emsp;&emsp;
			 	 <input type="reset" value="清空"  class="btn btn-primary">
			 </div>
			 </div>
			 </form>
			
			<div id="AddDiary" style="display: none;">
			<h3 align="left">发表游记</h3>
			<hr style="width: 100%; height: 10%; border-color: #08c299; ">
				<form action="addDiaryCheck" method="post" enctype="multipart/form-data">
					<label for="date-start" ><strong>游记名称：</strong></label>
					<input type="text" id="diaryname"  name="dname" required="required" 
					style="box-shadow: none; width:12cm; background: transparent; border: 2px solid rgba(0, 0, 0, 0.1); height: 46px; font-size: 16px; ">
					<hr style="margin-top:0.8rem; visibility:hidden; margin-bottom:-1px;" />
					<label for="date-start"><strong>游记图片：</strong></label>
					<!-- onchange="setImage(this) -->
					<input type="file" id="diaryimage"  name="filename"  required="required"  onchange="setImage(this)" multiple="multiple"
					style="box-shadow: none; background: transparent; border: 2px solid rgba(0, 0, 0, 0.1); height: 36px; font-size: 16px; ">
					<font>(可上传多张图片)</font>
					<hr style="margin-top:0.8rem; visibility:hidden; margin-bottom:-1px;" />
					<label for="date-start"><strong>游记内容：</strong></label>
					<br>
					<textarea name="dcontent" id="diarycontent" cols="100" rows="15" required="required" 
					style="box-shadow: none; background: transparent; border: 2px solid rgba(0, 0, 0, 0.1); font-size: 16px; "></textarea>
					<br>
					<input type="submit"  value="发表" id="diarybtn" class="btn btn-primary">
				</form>
			</div>
			
			<div id="TravelOrder" style="display: none;">
              		<h3 align="left">旅游订单</h3>
             	 	<hr style="width: 120%; height: 10%; border-color: #08c299; ">
             	 	<table class="gridtable" >
					<tr>
					    <th>旅游项目名称</th>
					    <th>旅行时间</th>
					    <th>订单时间</th>
					    <th>价格</th>
					    <th>订单状态</th>
					</tr>
					<c:forEach items="${order}" var="order">
					<tr>
					    <td><a  href="findProject?projectname=${order.pname}">
					    <Strong><font size="3px">${order.pname}</font></Strong></a></td>
					    <td><font size="3px">${order.travelTime}</font></td>
					    <td><font size="3px">${order.orderTime}</font></td>
					    <td><font size="3px">${order.cost}</font></td>
					    <td><Strong><font size="3px" color="black">${order.orderState}</font></Strong></td>
					</tr>
					</c:forEach>
					</table>
              </div>
              
              
              <div id="HotelOrder" style="display: none;">
              		<h3 align="left">酒店订单</h3>
             	 	<hr style="width: 100%; height: 10%; border-color: #08c299; ">
             	 	<table class="gridtable" >
					<tr>
					    <th>酒店名称</th>
					    <th>酒店地址</th>
					    <th>房间信息</th>
					    <th>入住天数</th>
					    <th>入住时间</th>
					    <th>订单时间</th>
					    <th>价格</th>
					    <th>订单状态</th>
					</tr>
					<c:forEach items="${hotelOrder}" var="hotelOrder">
					<tr>
					    <td><a  href="findHotelByName?hotelName=${hotelOrder.hotelName}">
					    <Strong><font size="3px">${hotelOrder.hotelName}</font></Strong></a></td>
					    <td><font size="2px">${hotelOrder.hotelAddress}</font></td>
					    <td><font size="2px">${hotelOrder.room}</font></td>
					    <td><font size="2px">${hotelOrder.days}</font></td>
					    <td><font size="2px">${hotelOrder.travelTime}</font></td>
					    <td><font size="2px">${hotelOrder.orderTime}</font></td>
					    <td><font size="2px">${hotelOrder.price}</font></td>
					    <td><Strong><font size="3px" color="black">${hotelOrder.orderState}</font></Strong></td>
					</tr>
					</c:forEach>
					</table>
              </div>
			
          </div>
          
          <div class="col-md-4 sidebar ftco-animate"  style="position: absolute; width: 250px;" align="left">
            <div class="sidebar-box ftco-animate">
              <div class="categories" >
                <h4>个人主页</h4>
                <li><a href="javascript:void(0);" onclick="goToPersonal()"><font size="3px">个人信息</font></a></li>
                <li><a href="javascript:void(0);" onclick="goToMydiary()"><font size="3px">我的游记</font></a></li>
                <li><a href="javascript:void(0);" onclick="goToAddDiary()"><font size="3px">发表游记</font></a></li>
                <li><a href="javascript:void(0);"  onclick="goToreset()"><font size="3px">重置密码</font></a></li>
                <li><a href="javascript:void(0);" onclick="goToTravelOrder()"><font size="3px">旅游订单</font></a></li>
                <li><a href="javascript:void(0);" onclick="goToHotelOrder()"><font size="3px">酒店订单</font></a></li>
                <li><a href="contact"><font size="3px">需求联系</font></a></li>
                <li></li>
              </div>
            </div>

            <div class="sidebar-box ftco-animate">
            <c:forEach items="${user}" var="user">
              <h3>个人签名</h3>
              <p>${user.signature}</p>
            </c:forEach>
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
   $(document).ready(function(){
	  var uid = <%=session.getAttribute("uid")%>;
	  if(uid==null){
		  $("#head-icon").hide();//隐藏头像div 
	  }
  });
 /* ====================================================================== */
 	  	//<a>标签重置密码事件
        function goToreset(){
        	$('html, body').animate({"scrollTop":top});
        	$("#mydiary").hide();
        	$("#AddDiary").hide();
        	$("#personal").hide();
        	$("#TravelOrder").hide();
        	document.getElementById("repwd").style.display="";//显示
        };
        
        //第一次输入校验密码
        function special(){
        	var newpwd = document.getElementById("newpassword").value;
        	var reg = new RegExp("[`~!@#$^&*()=|{}\\s+':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]");
			if(reg.test(newpwd)){
				document.getElementById("tips").innerHTML="<strong><font color='red'>不能包含特殊字符</font></strong>";
				document.getElementById("btn").disabled = true;
				return false;
      	  }
        }
        
        //第二次校验密码
        function validate() {
              var pwd1 = document.getElementById("newpassword").value;
              var pwd2 = document.getElementById("secondpassword").value;
			  var reg = new RegExp("[`~!@#$^&*()=|{}\\s+':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]");
			if(reg.test(pwd2)){
				document.getElementById("tips").innerHTML="<strong><font color='red'>不能包含特殊字符</font></strong>";
				document.getElementById("btn").disabled = true;
				return false;
			}
			  //对比两次输入的密码
              else if(pwd1==pwd2) {
                  document.getElementById("tips").innerHTML="<strong><font color='green'>两次密码相同</font></strong>";
                  document.getElementById("btn").disabled = false;
              }
              else {
                  document.getElementById("tips").innerHTML="<strong><font color='red'>两次密码不相同</font></strong>";
                  document.getElementById("btn").disabled = true;
              }
       }
        
        //重置密码
        function resetPassword(){
        //判断密码是否为空
        var uid = <%=session.getAttribute("uid")%>;
        var oldpassword = document.getElementById("oldpassword");
        var newpassword = document.getElementById("newpassword");
        var secondpassword = document.getElementById("secondpassword");
        	if(oldpassword.value=="" || newpassword.value=="" || secondpassword.value==""){
        		  document.getElementById("tips").innerHTML="<strong><font color='red'>密码不能为空</font></strong>";
        		  document.getElementById("btn").disabled = true;
        		  return;
      		  }
        	
      	  $.post("resetPassword?uid="+uid+"&oldpassword="+oldpassword.value+"&newpassword="+newpassword.value+"&secondpassword="+secondpassword.value, function (data) {
                if (data == 1) {
                	//显示重置密码信息
              	  document.getElementById("Message").innerHTML="	<strong><font color='green' size='4px'>重置成功！</font></strong>";
              	  document.getElementById("btn").disabled = true;
             	  $("#oldpassword").val("");
             	  $("#newpassword").val("");
                  $("#secondpassword").val("");
                } else {
              	  document.getElementById("Message").innerHTML="	<strong><font color='red' size='4px'>重置失败！旧密码错误</font></strong>";
                  alert("重置密码失败，请检查旧密码是否正确");
				}
          });
      		 
        };
/* ====================================================================== */
        
        //我的游记视图
        function goToMydiary(){
        	$('html, body').animate({"scrollTop":top});
        	document.getElementById("repwd").style.display="none";//隐藏
        	$("#AddDiary").hide();
        	$("#personal").hide();
        	$("#TravelOrder").hide();
        	$("#HotelOrder").hide();
        	$("#mydiary").show();
        };
        
        //发表游记视图
        function goToAddDiary(){
        	$('html, body').animate({"scrollTop":top});
        	$("#mydiary").hide();
        	$("#personal").hide();
        	document.getElementById("repwd").style.display="none";//隐藏
        	$("#TravelOrder").hide();
        	$("#HotelOrder").hide();
        	$("#AddDiary").show();
        };

        //修改个人信息视图
        function goToPersonal(){
        	$('html, body').animate({"scrollTop":top});
        	$("#mydiary").hide();
        	$("#AddDiary").hide();
        	document.getElementById("repwd").style.display="none";//隐藏
        	$("#TravelOrder").hide();
        	$("#HotelOrder").hide();
        	$("#personal").show();
        };
        
        //查看旅游订单视图
        function goToTravelOrder(){
        	$('html, body').animate({"scrollTop":top});
        	$("#mydiary").hide();
        	$("#AddDiary").hide();
        	document.getElementById("repwd").style.display="none";//隐藏
        	$("#personal").hide();
        	$("#HotelOrder").hide();
        	$("#TravelOrder").show();
        }
        
	      //查看酒店订单视图
	       function goToHotelOrder(){
	       	$('html, body').animate({"scrollTop":top});
	       	$("#mydiary").hide();
	       	$("#AddDiary").hide();
	       	document.getElementById("repwd").style.display="none";//隐藏
	       	$("#personal").hide();
	       	$("#TravelOrder").hide();
	       	$("#HotelOrder").show();
	       }
        
/* ====================================================================== */
		
		//发表游记
		function setImage(obj){
		var dimage=$(obj).val();
		console.log(obj);
	    if(dimage == null || dimage ==undefined || dimage == ''){
	        return false;
	    }
	     if(!/\.(?:png|jpg|bmp|gif|PNG|JPG|BMP|GIF)$/.test(dimage)){
	        alert("类型必须是图片(.png|jpg|bmp|gif|PNG|JPG|BMP|GIF)");
	        $(obj).val('');
	        return false;
	  		  } 
	   		
		};
/* ====================================================================== */		

		//修改个人信息
        function updatePersonal(){
        var uid = <%=session.getAttribute("uid")%>;
        var name = document.getElementById("myname");
        var sex = $("#selectSex").val();
        var phone = document.getElementById("phone");
        var address = document.getElementById("address");
        var signature = document.getElementById("personalsign");
      	  $.post("updatePersonal?uid="+uid+"&name="+name.value+"&sex="+sex+"&phone="+phone.value+
      			  "&address="+address.value+"&signature="+signature.value, function (data) {
                if (data == 1) {
                	//显示修改状态信息
              	  document.getElementById("updateMessage").innerHTML="	<strong><font color='green' size='4px'>修改成功！</font></strong>";
              	  document.getElementById("updatebtn").disabled = true;
              	  //提交成功之后清空内容
              	 $("#myname").val("");		 $("#phone").val("");		 $("#address").val("");		 $("#personalsign").val("");
                } else {
              	  document.getElementById("updateMessage").innerHTML="	<strong><font color='red' size='4px'>修改失败！请检查信息</font></strong>";
                  alert("修改个人信息失败，请检查信息是否正确！");
				}
          });
      		 
        };

        //清空个人信息
        function clearInformation(){
        	$("#myname").val("");
        	$("#sex").val("");
        	$("#phone").val("");
        	$("#address").val("");	
        	$("#personalsign").val("");
        };
        
  /* ====================================================================== */	
  
  	//旅游订单项目名称字体变色
  	function BlueColor(){
  		document.getElementById("mouseColor").style.color="blue";
  };
  
	function BlackColor(){
  		document.getElementById("mouseColor").style.color="#f9be37";
  };
  
        
</script>
  
</html>