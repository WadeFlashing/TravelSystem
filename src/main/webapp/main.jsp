<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
	<head>
		<title>主页面</title>
		<meta charset="UTF-8" />
		<!--引入主题样式-->
		<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css" />
		<!--引入图标样式-->
		<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css" />
		<!--引入jQuery文件-->
		<script src="easyui/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
		<!--引入EasyUi的js文件-->
		<script src="easyui/jquery.easyui.min.js" type="text/javascript" charset="utf-8"></script>
		<!--声明css代码域-->
		
	<body class="easyui-layout">
    <div data-options="region:'north',title:'后台系统'"  style="height:100px;">
    	<div style="width: 400px; height: 60px; float: left; font-size: 20px; font-weight: bolder; line-height: 60px; padding-left: 20px" >
    		旅游后台管理系统
    	</div>
    	<div style="width: 200px; height: 60px; float: right; line-height: 60px; font-size: 15px;" >
    		你好，<font color="red">${sessionScope.user }</font>，欢迎您！
    	</div>
    </div>
    
    <div data-options="region:'west',title:'系统菜单' ,collapsible:false" style="width:170px;">
    		<ul id="main_tree"></ul>
    </div>
    
    <div data-options="region:'center',title:'内容' " style="padding:5px;background:#eee;">
		<div id="main_tabs" class="easyui-tabs" style="width:500px;height:250px;" data-options="fit:true, ">
    		<div title="首页" style="padding:20px;">
				tab1qweqwe
   			</div>  			   			
		</div>
    </div>
    
    <div data-options="region:'south',title:'底部声明' ,collapsible:false" style="height:100px;">
    		<div style="height: 70px; line-height: 70px; text-align: center; color: gray;">
    				Copyright &copy; 旅行者
    		</div>
    </div>
       
</body>

<script type="text/javascript">
 		$(function(){
			$('#main_tree').tree({
			    url:'showMenu',
			    onClick:function(node){
			    	if(($('#main_tabs').tabs("getTab",node.text))==null){
			    //	alert(node.text);
			    	$('#main_tabs').tabs('add',{
			    		title: node.text,
			    		selected: true,
			    		closable: true,
			    		
			    		//只能引进来<body>标签内的内容
			    		href:node.attributes.filename,
			    		//...
			    		
			    		});
			    	}else{
			    		$('#main_tabs').tabs("select",node.text);
			    	}
			    }
			    
			});
		}) 
		

</script>

</html>