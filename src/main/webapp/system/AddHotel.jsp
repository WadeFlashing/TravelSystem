<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<div style="padding: 10px;">
酒店管理>>新增酒店
<hr>
<form action="system/addHotel" method="post"  id="Hotel_table_AddDialog" enctype="multipart/form-data">
<table>
		<tr>
				<td >酒店名称：</td>
				<td><textarea rows="3" cols="21" name="hotelName" id="pnameArea" required="required"></textarea></td>
		</tr>
		<tr>
				<td>酒店地址：</td>
				<td><textarea rows="5" cols="22" name="hotelAddress" id="pdescribeArea" required="required"></textarea></td>
		</tr>
		<tr>
				<td>酒店介绍：</td>
				<td><textarea rows="10" cols="60" name="introduce"  id="pcontentArea" required="required"></textarea></td>
		</tr>
		<tr>
				<td>房间信息：</td>
				<td><input type="text" name="room" style="height: 30px" required="required" /></td>
		</tr>
		<tr>
				<td>酒店图片：</td>
				<td><input type="file" onchange="setImage(this)" multiple="multiple" name="hotelImage" style="width: 150px;" required="required"/></td>
		</tr>
		<tr>
				<td>价格：</td>
				<td><input type="text" name="price" style="height: 30px" placeholder="输入小数." required="required" /></td>
		</tr>
		<tr>
		<td colspan="2" align="right">
		<br>
		<input type="submit"  value="新增"  class="btn btn-primary" style="width: 50px;height: 40px;">
		</td>
		</tr>
</table>
</form>
</div>

<script type="text/javascript">

function setImage(obj){
	var hotelImage=$(obj).val();
	console.log(obj);
    if(hotelImage == null || hotelImage ==undefined || hotelImage == ''){
        return false;
    }
     if(!/\.(?:png|jpg|bmp|gif|PNG|JPG|BMP|GIF)$/.test(hotelImage)){
        alert("类型必须是图片(.png|jpg|bmp|gif|PNG|JPG|BMP|GIF)");
        $(obj).val('');
        return false;
  		  } 
   		
	};

</script>

</body>
</html>