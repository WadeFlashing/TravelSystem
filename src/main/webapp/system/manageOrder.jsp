<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>管理订单页面</title>
</head>
<body>
<table id="ProjectOrder_table"></table>
<div id="OrderCheck_Window" title="审核"></div>

<script type="text/javascript">
$(function(){
	$('#ProjectOrder_table').datagrid({
	    url:'system/showProjectOrder', 
	    columns:[[
			{field:'orderid',title:'id',width:50,hidden:true},
			{field:'uid',title:'用户ID',width:50},
			{field:'name',title:'用户名称',width:100},
			{field:'phone',title:'用户电话',width:100},
			{field:'pid',title:'旅游项目ID',width:50},
			{field:'pname',title:'旅游名称',width:100},
			{field:'travelTime',title:'旅行时间',width:80},
			{field:'orderTime',title:'订单时间',width:80},
			{field:'cost',title:'价格',width:50},
			{field:'orderState',title:'订单状态',width:80,
				formatter:function(value,row,index){
					if(value=="待支付"){
						return  '<strong><span style="color:blue;font-size:15px;">'+value+'</span></strong>';
					}else if(value=="已支付"){
					return  '<strong><span style="color:green;font-size:15px;">'+value+'</span></strong>';
					}else {
						return  '<strong><span style="color:red;font-size:15px;">'+value+'</span></strong>';
					}
					 }
			},
	    ]],
		pagination:true,
		fitColumns:true,
		striped:true,
		singleSelect:true,
		rownumbers:true,
		nowrap:false,
		autoRowHeight:true,
		pageSize:5,
		pageList:[5,10,15,20,30],
		
		toolbar: [{
			iconCls: 'icon-edit',
			text:'修改',
			handler: function(){
				if($("#ProjectOrder_table").datagrid("getSelections").length==1){
				var SelectedId = ($("#ProjectOrder_table").datagrid("getSelected").orderid);
				$('#OrderCheck_Window').window({
				    width:200,
				    height:200,
				    href: 'system/ProjectOrder_State_window.jsp',
				    collapsible:false,
				    minimizable:false,
				    maximizable:false,
				    draggable:false,
				    resizable:false,
				    modal:true,
				    onLoad:function(){
				    	$("#ProjectOrder_State_window :hidden:eq(0)").val($("#ProjectOrder_table").datagrid("getSelected").orderid);
					    },
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