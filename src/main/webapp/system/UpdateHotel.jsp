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
管理酒店>>修改酒店信息
<hr>
<form action="" method="post"  id="Hotel_table_UpdateDialog">
<input type="hidden" name="hid" id="hid" />
<table>
		<tr>
				<td >酒店名称：</td>
				<td><textarea rows="3" cols="21" name="hotelName" id="pnameArea"></textarea></td>
		</tr>
		<tr>
				<td>酒店地址：</td>
				<td><textarea rows="5" cols="22" name="hotelAddress" id="pdescribeArea"></textarea></td>
		</tr>
		<tr>
				<td>酒店介绍：</td>
				<td><textarea rows="10" cols="60" name="introduce"  id="pcontentArea"></textarea></td>
		</tr>
		<tr>
				<td>房间信息：</td>
				<td><input type="text" name="room" style="height: 30px" /></td>
		</tr>
		<tr>
				<td>酒店图片：</td>
				<td><input type="text" name="hotelImage" style="height: 30px" /></td>
		</tr>
		<tr>
				<td>价格：</td>
				<td><input type="text" name="price" placeholder="输入小数." style="height: 30px" /></td>
		</tr>
		<tr>
		<td colspan="2" align="right">
		<br>
		<a id="hotel_update_btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'" >修改</a>
		</td>
		</tr>
</table>
</form>
</div>

<script type="text/javascript">
	$(function(){
		$("#hotel_update_btn").click(function(){
			$('#Hotel_table_UpdateDialog').form('submit', {
			    url:'system/updateHotel',	
			    onSubmit: function(){
					// do some check
					// return false to prevent submit;
			    },
			    success:function(data){
					if(data==1){
						//关闭修改弹出框
						$("#Hotel_UpdateDialog").dialog("close");
						//在向服务器改变数据之后，更新前台数据
						$('#Hotel_table').datagrid('reload'); 
						$.messager.show({
							title:'系统信息',
							msg:'<font color="green">修改成功.</font>',
							width:250,
							height:120,
							timeout:3000,
							showType:'slide'
						});
					}else{
						$.messager.alert("系统信息","修改失败！请重新修改");
					}
					
			    }
			});
		})
		
	})
</script>

</body>
</html>