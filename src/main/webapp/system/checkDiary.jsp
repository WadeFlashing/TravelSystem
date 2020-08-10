<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>审核游记页面</title>
</head>
<body>
<table id="checkDiary_table"></table>
<div id="CheckWindow" title="审核"></div>
<script type="text/javascript">
$(function(){
	$('#checkDiary_table').datagrid({
	    url:'system/showCheckDiary', 
	    columns:[[
			{field:'c_did',title:'id',width:100,hidden:true},
			{field:'c_dname',title:'游记名称',width:150},
			{field:'c_dcontent',title:'游记内容',width:250},
			{field:'c_dimage',title:'游记图片',width:100},
			{field:'c_diarytime',title:'游记发表时间',width:100},
			{field:'c_uid',title:'用户ID',width:50},
			{field:'diaryState',title:'审核状态',width:55,
				formatter:function(value,row,index){
					if(value=="待审核"){
						return  '<strong><span style="color:blue;font-size:15px;">'+value+'</span></strong>';
					}else if(value=="审核通过"){
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
		pageSize:2,
		pageList:[2,4,6,8,10],
		
		toolbar: [{
			iconCls: 'icon-remove',
			text:'删除',
			handler: function(){
				if($("#checkDiary_table").datagrid("getSelections").length==1){
					//修改消息框显示文字
					$.messager.defaults = { ok: "确认", cancel: "取消" , height:180,width:235 };  
					$.messager.confirm('确认','你想要删除这条数据吗?',function(r){
					    if (r){
					    	//发送Ajax请求到后台删除
					    	var SelectedId = ($("#checkDiary_table").datagrid("getSelected").c_did);
					        $.post("system/deleteCheckDiary", { c_did: SelectedId }, function (data) {
		                        if (data == 1) {
		                        	//刷新数据表格
		                           $('#checkDiary_table').datagrid('reload'); 
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
			text:'审核',
			handler: function(){
				if($("#checkDiary_table").datagrid("getSelections").length==1){
				var SelectedId = ($("#checkDiary_table").datagrid("getSelected").c_did);
				$('#CheckWindow').window({
				    width:200,
				    height:200,
				    href: 'system/Diary_State_window.jsp',
				    collapsible:false,
				    minimizable:false,
				    maximizable:false,
				    draggable:false,
				    resizable:false,
				    modal:true,
				    onLoad:function(){
				    	$("#Diary_State_window :hidden:eq(0)").val($("#checkDiary_table").datagrid("getSelected").c_did);
				    	$("#Diary_State_window :text:eq(0)").val($("#checkDiary_table").datagrid("getSelected").c_dname);
				    	$("#Diary_State_window :text:eq(1)").val($("#checkDiary_table").datagrid("getSelected").c_dcontent);
				    	$("#Diary_State_window :text:eq(2)").val($("#checkDiary_table").datagrid("getSelected").c_dimage);
				    	$("#Diary_State_window :text:eq(3)").val($("#checkDiary_table").datagrid("getSelected").c_diarytime);
				    	$("#Diary_State_window :text:eq(4)").val($("#checkDiary_table").datagrid("getSelected").c_uid);
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