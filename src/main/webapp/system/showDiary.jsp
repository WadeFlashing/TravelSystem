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
<table id="showDiary_table"></table>
<script type="text/javascript">
$(function(){
	$('#showDiary_table').datagrid({
	    url:'system/showDiary', 
	    columns:[[
			{field:'did',title:'id',width:100,hidden:true},
			{field:'dname',title:'旅游游记名称',width:100},
			{field:'dcontent',title:'游记内容',width:200},
			{field:'dimage',title:'游记图片',width:100},
			{field:'uid',title:'用户ID',width:50},
			{field:'diarytime',title:'游记时间',width:100},
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
				if($("#showDiary_table").datagrid("getSelections").length==1){
					//修改消息框显示文字
					$.messager.defaults = { ok: "确认", cancel: "取消" , height:180,width:235 };  
					$.messager.confirm('确认','你想要删除这条数据吗?',function(r){
					    if (r){
					    	//发送Ajax请求到后台删除
					    	var SelectedId = ($("#showDiary_table").datagrid("getSelected").did);
					        $.post("system/deleteDiary", { did: SelectedId }, function (data) {
		                        if (data == 1) {
		                        	//刷新数据表格
		                           $('#showDiary_table').datagrid('reload'); 
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
		}]
		
	});

})
</script>

</body>
</html>