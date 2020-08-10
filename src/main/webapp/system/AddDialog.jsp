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
旅游项目管理>>新增项目
<hr>
<form action="system/addProject" method="post"  id="proselect_dialog_Addform" enctype="multipart/form-data">
<table>
		<tr>
				<td >旅游项目名称：</td>
				<td><textarea rows="3" cols="21" name="pname" id="pnameArea" required="required"></textarea></td>
		</tr>
		<tr>
				<td>旅游项目描述：</td>
				<td><textarea rows="5" cols="22" name="pdescribe" id="pdescribeArea" required="required"></textarea></td>
		</tr>
		<tr>
				<td>项目内容：</td>
				<td><textarea rows="10" cols="60" name="pcontent"  id="pcontentArea" required="required"></textarea></td>
		</tr>
		<tr>
				<td>起点：</td>
				<td><input type="text" name="pbegin" style="height: 30px" required="required" /></td>
		</tr>
		<tr>
				<td>终点：</td>
				<td><input type="text" name="pend" style="height: 30px" required="required" /></td>
		</tr>
		<tr>
				<td>所在省份：</td>
				<td><input type="text" name="province" style="height: 30px" required="required" /></td>
		</tr>
		<tr>
				<td>图片：</td>
				<td><input type="file" onchange="setImage(this)" multiple="multiple" name="pimage" style="height: 30px" required="required"/></td>
		</tr>
		<tr>
				<td>价格：</td>
				<td><input type="text" name="pcost" style="height: 30px" placeholder="输入小数." required="required" /></td>
		</tr>
		<tr>
		<td colspan="2" align="right">
		<br>
		<input type="submit"  value="新增"  class="btn btn-primary">
		</td>
		</tr>
</table>
</form>
</div>

<script type="text/javascript">

function setImage(obj){
	var pimage=$(obj).val();
	console.log(obj);
    if(pimage == null || pimage ==undefined || pimage == ''){
        return false;
    }
     if(!/\.(?:png|jpg|bmp|gif|PNG|JPG|BMP|GIF)$/.test(pimage)){
        alert("类型必须是图片(.png|jpg|bmp|gif|PNG|JPG|BMP|GIF)");
        $(obj).val('');
        return false;
  		  } 
   		
	};

</script>

</body>
</html>