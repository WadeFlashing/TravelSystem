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
<table id="showRequirement_table"></table>
<div id="Requirement_dialog"></div>
<div id="win"></div>

<script type="text/javascript">
$(function(){
	$('#showRequirement_table').datagrid({
	    url:'system/showRequirement', 
	    columns:[[
			{field:'requireid',title:'id',width:100,hidden:true},
			{field:'uid',title:'用户ID',width:40},
			{field:'name',title:'用户名称',width:80},
			{field:'requireplace',title:'旅游目的地',width:150},
			{field:'scenicspot',title:'景点',width:100},
			{field:'requirements',title:'旅游方案',width:350},
			{field:'requiredate',title:'旅行日期',width:60},
			
	    ]],
		pagination:true,
		fitColumns:true,
		striped:true,
		singleSelect:true,
		rownumbers:true,
		nowrap:false,
		autoRowHeight:true,
		pageSize:5,
		pageList:[5,10,15,20,25,50],
		
		toolbar: [{
			iconCls: 'icon-remove',
			text:'删除',
			handler: function(){
				if($("#showRequirement_table").datagrid("getSelections").length==1){
					//修改消息框显示文字
					$.messager.defaults = { ok: "确认", cancel: "取消" , height:180,width:235 };  
					$.messager.confirm('确认','你想要删除这条需求吗?',function(r){
					    if (r){
					    	//发送Ajax请求到后台删除
					    	var SelectedId = ($("#showRequirement_table").datagrid("getSelected").requireid);
					        $.post("system/deleteRequirement", { requireid: SelectedId }, function (data) {
		                        if (data == 1) {
		                        	//刷新数据表格
		                           $('#showRequirement_table').datagrid('reload'); 
		                        	//右下角提示框
		                           $.messager.show({
		   							title:'系统信息',
		   							msg:'<font color="green">删除成功.</font>',
		   							width:250,
		   							height:120,
		   							timeout:3000,
		   							showType:'slide'
		   						});
		                        } else {
		                            $.messager.alert("系统信息","删除失败！");
		                        }
		                    });
					    }
					});
					}else{
						$.messager.alert("系统信息","请选择<b style='color:red;'>一行数据</b>");
					}
					
				}
		},'-',{
			iconCls: 'icon-search',
			text:'查看',
			handler: function(){
				if($("#showRequirement_table").datagrid("getSelections").length==1){
				//弹出修改对话框
				$('#Requirement_dialog').dialog({
				    title: '查看旅游线路需求',
				    width: 650,
				    height: 640,
				    closed: false,
				    cache: false,
				    href: 'system/ShowRequirementDialog.jsp',
				    modal: true,
				    onLoad:function(){
				    	
				    	$("#requirement_dialog_form :text:eq(0)").val($("#showRequirement_table").datagrid("getSelected").uid);
				    	$("#requirement_dialog_form :text:eq(1)").val($("#showRequirement_table").datagrid("getSelected").name);
				    	$("#RequireplaceArea").val($("#showRequirement_table").datagrid("getSelected").requireplace);
				    	$("#ScenicspotArea").val($("#showRequirement_table").datagrid("getSelected").scenicspot);
				    	$("#RequirementsArea").val($("#showRequirement_table").datagrid("getSelected").requirements);
				    	$("#requirement_dialog_form :text:eq(2)").val($("#showRequirement_table").datagrid("getSelected").requiredate);
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