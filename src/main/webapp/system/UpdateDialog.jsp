<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>update project</title>
</head>
<body>
<div style="padding: 10px;">
旅游项目管理>>修改项目
<hr>
<form action="" method="post"  id="proselect_dialog_form">
<input type="hidden" name="pid" id="pid" />
<table>
		<tr>
				<td >旅游项目名称：</td>
				<td><textarea rows="3" cols="21" name="pname" id="pnameArea"></textarea></td>
		</tr>
		<tr>
				<td>旅游项目描述：</td>
				<td><textarea rows="5" cols="22" name="pdescribe" id="pdescribeArea"></textarea></td>
		</tr>
		<tr>
				<td>项目内容：</td>
				<td><textarea rows="10" cols="60" name="pcontent"  id="pcontentArea"></textarea></td>
		</tr>
		<tr>
				<td>起点：</td>
				<td><input type="text" name="pbegin" style="height: 30px" /></td>
		</tr>
		<tr>
				<td>终点：</td>
				<td><input type="text" name="pend" style="height: 30px" /></td>
		</tr>
		<tr>
				<td>所在省份：</td>
				<td><input type="text" name="province" style="height: 30px" /></td>
		</tr>
		<tr>
				<td>图片：</td>
				<td><input type="text" name="pimage" style="height: 30px" /></td>
		</tr>
		<tr>
				<td>价格：</td>
				<td><input type="text" name="pcost" style="height: 30px" /></td>
		</tr>
		<tr>
		<td colspan="2" align="right">
		<br>
		<a id="project_update_btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'" >修改</a>
		</td>
		</tr>
</table>
</form>
</div>

<script type="text/javascript">
	$(function(){
		$("#project_update_btn").click(function(){
			$('#proselect_dialog_form').form('submit', {
			    url:'system/updateProject',	
			    onSubmit: function(){
					// do some check
					// return false to prevent submit;
			    },
			    success:function(data){
					if(data==1){
						//关闭修改弹出框
						$("#proselect_dialog").dialog("close");
						//在向服务器改变数据之后，更新前台数据
						$('#proselect_table').datagrid('reload'); 
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