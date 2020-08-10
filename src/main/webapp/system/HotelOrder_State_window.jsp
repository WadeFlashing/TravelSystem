<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>酒店订单审核窗口</title>
</head>
<body>
<div align="center" >
<br>
<strong><font size="3px" color="blue">订单状态：</font></strong>
</div>
<form action="" method="post"  id="HotelOrder_State_window">
<div align="center" >
<hr style="height:1pt; visibility:hidden; margin-bottom: -1px" />
<input  name="horderid" id="horderid" type="hidden" />
<select name="orderState" id="orderState" class="easyui-combobox"  panelHeight="100px" style="width:150px; height: 40px;" >
    <option value="已支付" >已支付</option>
    <option value="支付失败" >支付失败</option>
    <option value="待支付">待支付</option>
</select>
<br><br>
<a id="check_btn" href="#" class="easyui-linkbutton"  style="height: 35px;width: 55px;">确定</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a id="cancel_btn" href="#" class="easyui-linkbutton" style="height: 35px;width: 55px;">取消</a>
</div>
</form>
<script type="text/javascript">
$(function(){
	$("#check_btn").click(function(){
		$('#HotelOrder_State_window').form('submit', {
		    url:'system/alterHotelOrder',	
		    onSubmit: function(){
				// do some check
				// return false to prevent submit;
		    },
		    success:function(data){
				if(data=="true"){
					//关闭修改弹出框
					$("#HotelOrderCheck_Window").dialog("close");
					//在向服务器改变数据之后，更新前台数据
					$('#HotelOrder_table').datagrid('reload'); 
					$.messager.show({
						title:'系统信息',
						msg:'<font color="green" size="3px">修改成功.</font>',
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

$(function(){
	$("#cancel_btn").click(function(){
		$('#OrderCheck_Window').window('close'); // close a window
	})
	
})
</script>
</body>
</html>