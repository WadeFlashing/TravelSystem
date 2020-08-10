<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<!DOCTYPE html>
<html>
<head>
<script src="http://cdn.bootcss.com/jquery/2.2.4/jquery.js"></script>
 <style type = "text/css">
        *{
            padding:0;
            margin:0;
        }
        textarea {
            width:320px;
            height:80px;
            background:whitesmoke;
            font-size:16px;
        }
        span:hover {
            cursor:pointer;
        }
    </style>
<title>Insert title here</title>
</head>
<body>
 <h1>简单留言板</h1>
    <div id = "box">
        <!--通过js实现根据用户的输入动态创建一个存放用户留言的li，并且允许用户删除留言-->
    </div>   
    <label>
        <textarea id = "msg" rows = "5" cols = "42" ></textarea>
    </label>
    <br>
    <input type = "button" id = "btn" value = "留言">
    <button id = "calc" onclick = calc()>统计</button>
    
    
    
</body>

 <script type = "text/javascript">
        var box = document.getElementById("box");
        var ul = document.createElement("ul");
        box.appendChild(ul);
        var btn = document.getElementById("btn");
        var msg = document.getElementById("msg");
        var n = 0;
        btn.onclick = function(){
            if(msg.value === ""){
                alert("请输入内容")
            } else{
                n++;
                var li = document.createElement("li");
                li.innerHTML = msg.value + "  "+"<span>X</span>";
                var lis = document.getElementsByTagName("li");
                if(n === 1){
                    ul.appendChild(li);
//                    如果是第一条留言则用appendChild
                }else{
                    ul.insertBefore(li,lis[0]);
//                    最新的留言总在第一条显示
                }
                msg.value = "";
//                重置文本框
                var span = document.getElementsByTagName("span");
                for(var i = 0;i<span.length;i++){
                    span[i].onclick = function(){
                        ul.removeChild(this.parentNode);
                        n--;
                    }
                }
            }
        };
        function calc(){
        	parent.location.href="message.jsp";
        };
    </script>

</html>