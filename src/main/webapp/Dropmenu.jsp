<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<title>下拉菜单效果</title>
</head>
<body>
<ul>
<li class="has-dropdown">
	<a href="#">旅游</a>
	<ul class="dropdown">
		<li><a href="#">Europe</a></li>
		<li><a href="#">Asia</a></li>
		<li><a href="#">America</a></li>
		<li><a href="#">Canada</a></li>
	</ul>
</li>
</ul>
</body>
</html>