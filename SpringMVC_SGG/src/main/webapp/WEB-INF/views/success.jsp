<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-1-24
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Success</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="/static/js/jquery-1.12.4.min.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="/static/js/bootstrap.min.js"></script>

    <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <!--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>-->
    <!--<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>-->
    <!--[endif]-->
    <script>
       $(document).ready( function() {
               loc = document.location.toString();
               jQuery("p").text(loc);
       });


        /*$.noConflict();
        jQuery(document).ready(function(){
            jQuery("a").click(function(){
                loc = window.location.toString();
                alert(jQuery("p").text());
                jQuery("p").text(loc);
                alert(loc);
            });
        });*/

    </script>
</head>
<body>

<h1 class="text-center">Good!</h1>
<div>
    <p id="page11">page11</p> <a>p1</a>
</div>



</body>
</html>
