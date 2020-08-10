<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>用户信息页面</title>
</head>
<body>
<table id="user_table"></table>
<script type="text/javascript">
$(function(){
	$('#user_table').datagrid({
	    url:'system/showUserInfo', 
	    columns:[[
			{field:'uid',title:'用户ID',width:50},
			{field:'username',title:'用户账号',width:100},
			{field:'phone',title:'用户电话',width:110},
			{field:'sex',title:'性别',width:50},
			{field:'name',title:'用户名称',width:100},
			{field:'address',title:'用户地址',width:150},
			{field:'signature',title:'用户签名',width:200},
	    ]],
		pagination:true,
		fitColumns:true,
		striped:true,
		singleSelect:true,
		rownumbers:true,
		nowrap:false,
		autoRowHeight:true,
		pageSize:5,
		pageList:[5,10,15,20,25],
		
		toolbar: [{
			iconCls: 'icon-cancel',
			text:'注销',
			handler: function(){
				if($("#user_table").datagrid("getSelections").length==1){
					//修改消息框显示文字
					$.messager.defaults = { ok: "确认", cancel: "取消" , height:180,width:235 };  
					$.messager.confirm('确认','你确认要注销此用户吗?',function(r){
					    if (r){
					    	//发送Ajax请求到后台删除
					    	var SelectedId = ($("#user_table").datagrid("getSelected").uid);
					        $.post("system/deleteUser", { uid: SelectedId }, function (data) {
		                        if (data == 1) {
		                        	//刷新数据表格
		                           $('#user_table').datagrid('reload'); 
		                        	//右下角提示框
		                           $.messager.show({
		   							title:'系统信息',
		   							msg:'<font color="green">注销成功.</font>',
		   							width:250,
		   							height:120,
		   							timeout:3000,
		   							showType:'slide'
		   						});
		                        } else {
		                            $.messager.alert("系统信息","注销失败！");
		                        }
		                    });
					    }
					});
					}else{
						$.messager.alert("系统信息","请选择<b style='color:red;'>一行数据</b>");
					}
					
				}
		}]
		
	});

})
</script>
</body>
</html>