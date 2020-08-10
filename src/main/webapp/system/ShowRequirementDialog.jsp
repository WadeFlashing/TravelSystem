<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>show Requirement</title>
</head>
<body>

<div style="padding: 10px;">
线路需求管理>>查看旅游线路需求
<hr>
<form action="" method="post"  id="requirement_dialog_form">
<table>
		<tr>
				<td >用户ID：</td>
				<td><input type="text" name="uid" style="height: 30px;width: 130px" /></td>
		</tr>
		<tr>
				<td >用户名称：</td>
				<td><input type="text" name="name" style="height: 30px;width: 130px" /></td>
		</tr>
		<tr>
				<td>旅游目的地：</td>
				<td><textarea rows="4" cols="20" name="requireplace" id="RequireplaceArea"></textarea></td>
		</tr>
		<tr>
				<td>景点：</td>
				<td><textarea rows="6" cols="30" name="scenicspot"  id="ScenicspotArea"></textarea></td>
		</tr>
		<tr>
				<td>旅游方案：</td>
				<td><textarea rows="10" cols="60" name="requirements"  id="RequirementsArea"></textarea></td>
		</tr>
		<tr>
				<td>旅行日期：</td>
				<td><input type="text" name="requiredate" style="height: 30px;width: 130px" /></td>
		</tr>
</table>
</form>
</div>

</body>
</html>