<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>游记审核窗口</title>
</head>
<body>

<div align="center" >
<br>
<strong><font size="3px" color="blue">审核状态：</font></strong>
</div>
<form action="" method="post"  id="Diary_State_window">
<div align="center" >
<hr style="height:1pt; visibility:hidden; margin-bottom: -1px" />
<input  name="c_did" id="c_did" type="hidden" />
<input  name="c_dname" id="c_dname" hidden="true" />
<input  name="c_dcontent" id="c_dcontent" hidden="true" />
<input  name="c_dimage" id="c_dimage" hidden="true" />
<input  name="c_diarytime" id="c_diarytime" hidden="true" />
<input  name="c_uid" id="c_uid" hidden="true" />
<select name="diaryState" id="diaryState" class="easyui-combobox"  panelHeight="80px" style="width:150px; height: 40px;" >
    <option value="审核通过"  selected="selected">审核通过</option>
    <option value="审核不通过">审核不通过</option>
</select>
<br><br>
<a id="check_btn" href="#" class="easyui-linkbutton"  style="height: 35px;width: 55px;">确定</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a id="cancel_btn" href="#" class="easyui-linkbutton" style="height: 35px;width: 55px;">取消</a>
</div>
</form>

<script type="text/javascript">
$(function(){
	$("#check_btn").click(function(){
	/*	var selected = document.getElementById("check");
		var c_did = document.getElementById("c_did");
		var c_dname = document.getElementById("c_dname");
		var c_dcontent = document.getElementById("c_dcontent");
		var c_dimage = document.getElementById("c_dimage");
		var c_diarytime = document.getElementById("c_diarytime");
		var c_uid = document.getElementById("c_uid"); */
		var diaryState = document.getElementById("diaryState");
			
		$('#Diary_State_window').form('submit', {
		    url:'system/alterCheckDiary',	
		    onSubmit: function(){
				// do some check
				// return false to prevent submit;
		    },
		    success:function(data){
				if(data=="true"){
					//关闭修改弹出框
					$("#CheckWindow").dialog("close");
					//在向服务器改变数据之后，更新前台数据
					$('#checkDiary_table').datagrid('reload'); 
					$.messager.show({
						title:'系统信息',
						msg:'<font color="green" size="3px">审核成功.</font>',
						width:250,
						height:120,
						timeout:3000,
						showType:'slide'
					});
				}else{
					$.messager.alert("系统信息","审核失败！请重新审核");
				}
				
		    }
		});
	})
	
	
})

$(function(){
	$("#cancel_btn").click(function(){
		$('#CheckWindow').window('close'); // close a window
	})
	
})
</script>

</body>
</html>