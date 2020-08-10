<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>selectProject.jsp</title>
</head>
<body>

<table id="proselect_table"></table>
<div id="proselect_dialog"></div>
<div id="proselect_window"></div>

<script type="text/javascript">
$(function(){
$('#proselect_table').datagrid({
    url:'system/showProject', 
    columns:[[
		{field:'pid',title:'id',width:100,hidden:true},
		{field:'pname',title:'旅游项目名称',width:100},
		{field:'pdescribe',title:'旅游项目描述',width:100},
		{field:'pcontent',title:'项目内容',width:200},
		{field:'pbegin',title:'起点',width:100},
		{field:'pend',title:'终点',width:100},
		{field:'province',title:'所在省份',width:50},
		{field:'pimage',title:'图片',width:100},
		{field:'pcost',title:'价格',width:50,align:'right'}
    ]],
	pagination:true,
	fitColumns:true,
	striped:true,
	singleSelect:true,
	rownumbers:true,
	nowrap:false,
	autoRowHeight:false,
	pageSize:2,
	pageList:[2,4,6,8,10],
	toolbar: [{
		iconCls: 'icon-add',
		text:'新增',
		handler: function(){
			//弹出新增对话框
			$('#proselect_dialog').dialog({
			    title: '新增旅游项目',
			    width: 650,
			    height: 640,
			    closed: false,
			    cache: false,
			    href: 'system/AddDialog.jsp',
			    modal: true,
			});
			
		}
	},'-',{
		iconCls: 'icon-remove',
		text:'删除',
		handler: function(){
			if($("#proselect_table").datagrid("getSelections").length==1){
			//修改消息框显示文字
			$.messager.defaults = { ok: "确认", cancel: "取消" , height:180,width:235 };  
			$.messager.confirm('确认','你想要删除这条数据吗?',function(r){
			    if (r){
			    	//发送Ajax请求到后台删除
			    	var SelectedId = ($("#proselect_table").datagrid("getSelected").pid);
			        $.post("system/deleteProject", { pid: SelectedId }, function (data) {
                        if (data == 1) {
                        	//刷新数据表格
                           $('#proselect_table').datagrid('reload'); 
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
		iconCls: 'icon-edit',
		text:'修改',
		handler: function(){
			if($("#proselect_table").datagrid("getSelections").length==1){
			//弹出修改对话框
			$('#proselect_dialog').dialog({
			    title: '修改旅游项目',
			    width: 650,
			    height: 640,
			    closed: false,
			    cache: false,
			    href: 'system/UpdateDialog.jsp',
			    modal: true,
			    onLoad:function(){
			    	
			    	$("#pnameArea").val($("#proselect_table").datagrid("getSelected").pname);
			    	$("#pdescribeArea").val($("#proselect_table").datagrid("getSelected").pdescribe);
			    	$("#pcontentArea").val($("#proselect_table").datagrid("getSelected").pcontent);
			    	$("#proselect_dialog_form :text:eq(0)").val($("#proselect_table").datagrid("getSelected").pbegin);
			    	$("#proselect_dialog_form :text:eq(1)").val($("#proselect_table").datagrid("getSelected").pend);
			    	$("#proselect_dialog_form :text:eq(2)").val($("#proselect_table").datagrid("getSelected").province);
			    	$("#proselect_dialog_form :text:eq(3)").val($("#proselect_table").datagrid("getSelected").pimage);
			    	$("#proselect_dialog_form :text:eq(4)").val($("#proselect_table").datagrid("getSelected").pcost);
			    	$("#proselect_dialog_form :hidden:eq(0)").val($("#proselect_table").datagrid("getSelected").pid);
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