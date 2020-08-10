<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>管理酒店信息页面</title>
</head>
<body>
<table id="Hotel_table"></table>
<div id="Hotel_AddDialog"></div>
<div id="Hotel_UpdateDialog"></div>

<script type="text/javascript">
$(function(){
$('#Hotel_table').datagrid({
    url:'system/showSystemHotel', 
    columns:[[
		{field:'hid',title:'hid',width:100,hidden:true},
		{field:'hotelName',title:'酒店名称',width:80},
		{field:'hotelAddress',title:'酒店地址',width:100},
		{field:'introduce',title:'酒店介绍',width:200},
		{field:'room',title:'房间信息',width:80},
		{field:'hotelImage',title:'酒店图片',width:80},
		{field:'price',title:'价格',width:50},
    ]],
	pagination:true,
	fitColumns:true,
	striped:true,
	singleSelect:true,
	rownumbers:true,
	nowrap:false,
	autoRowHeight:false,
	pageSize:3,
	pageList:[3,6,9,12,15],
	toolbar: [{
		iconCls: 'icon-add',
		text:'新增',
		handler: function(){
			//弹出新增对话框
			$('#Hotel_AddDialog').dialog({
			    title: '新增酒店',
			    width: 650,
			    height: 640,
			    closed: false,
			    cache: false,
			    href: 'system/AddHotel.jsp',
			    modal: true,
			});
			
		}
	},'-',{
		iconCls: 'icon-remove',
		text:'删除',
		handler: function(){
			if($("#Hotel_table").datagrid("getSelections").length==1){
			//修改消息框显示文字
			$.messager.defaults = { ok: "确认", cancel: "取消" , height:180,width:235 };  
			$.messager.confirm('确认','你想要删除这条数据吗?',function(r){
			    if (r){
			    	//发送Ajax请求到后台删除
			    	var SelectedId = ($("#Hotel_table").datagrid("getSelected").hid);
			        $.post("system/deleteHotel", { hid: SelectedId }, function (data) {
                        if (data == 1) {
                        	//刷新数据表格
                           $('#Hotel_table').datagrid('reload'); 
                        	//右下角提示框
                           $.messager.show({
   							title:'系统信息',
   							msg:'<font color="green">删除酒店成功.</font>',
   							width:250,
   							height:120,
   							timeout:3000,
   							showType:'slide'
   						});
                        } else {
                            $.messager.alert("系统信息","删除酒店失败！");
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
			if($("#Hotel_table").datagrid("getSelections").length==1){
			//弹出修改对话框
			$('#Hotel_UpdateDialog').dialog({
			    title: '修改酒店信息',
			    width: 650,
			    height: 640,
			    closed: false,
			    cache: false,
			    href: 'system/UpdateHotel.jsp',
			    modal: true,
			    onLoad:function(){
			    	
			    	$("#pnameArea").val($("#Hotel_table").datagrid("getSelected").hotelName);
			    	$("#pdescribeArea").val($("#Hotel_table").datagrid("getSelected").hotelAddress);
			    	$("#pcontentArea").val($("#Hotel_table").datagrid("getSelected").introduce);
			    	$("#Hotel_table_UpdateDialog :text:eq(0)").val($("#Hotel_table").datagrid("getSelected").room);
			    	$("#Hotel_table_UpdateDialog :text:eq(1)").val($("#Hotel_table").datagrid("getSelected").hotelImage);
			    	$("#Hotel_table_UpdateDialog :text:eq(2)").val($("#Hotel_table").datagrid("getSelected").price);
			    	$("#Hotel_table_UpdateDialog :hidden:eq(0)").val($("#Hotel_table").datagrid("getSelected").hid);
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