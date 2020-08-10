<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table.gridtable {
    font-family: verdana,arial,sans-serif;
    font-size:15px;
    color:#333333;
    border-width: 2px;
    border-color: #09C6AB;
    border-collapse: collapse;
}
table.gridtable th {
    border-width: 2px;
    padding: 8px;
    border-style: solid;
    border-color: greed;
    background-color: #09C6AB;
}
table.gridtable td {
    border-width: 2px;
    padding: 8px;
    border-style: solid;
    border-color: #09C6AB;
    background-color: #ffffff;
}
</style>
</head>
<body>
<table class="gridtable">
<tr>
    <th>Info Header 1</th>
    <th>Info Header 2</th>
    <th>Info Header 3</th>
</tr>
<tr>
    <td>Text 1A</td>
    <td>Text 1B</td>
    <td>Text 1C</td>
</tr>
<tr>
    <td>Text 2A</td>
    <td>Text 2B</td>
    <td>Text 2C</td>
</tr>
<tr>
    <td>Text 3A</td>
    <td>Text 3B</td>
    <td>Text 3C</td>
</tr>
</table>
</body>
</html>