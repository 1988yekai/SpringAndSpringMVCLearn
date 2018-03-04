<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>SpringMVC Bootstrap Learn</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <!--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>-->
    <!--<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>-->
    <!--[endif]-->
    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="/static/js/jquery-1.12.4.min.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="/static/js/index.js"></script>

</head>
<body>
<div class="container">
    <h1 class="text-center">Hello bell's page</h1>
    <div class="row clearfix">
        <div class="col-md-4 column">
            <h2>
                Hello world!
            </h2>
            <p>
            </p>
            <p>
                <a class="btn" href="test1/helloWorld">Say hello »</a>
            </p>
        </div>
        <div class="col-md-4 column">
            <h2>
                表单：<span id="formReturn"></span>
            </h2>
            <form action="test1/requestMappingTest" method="post" role="form">
                <div class="form-group">
                    <label class="sr-only" for="name">姓名</label>
                    <input type="text" class="form-control" name="name" id="name" placeholder="请输入姓名">
                </div>
                <div class="form-group">
                    <label class="sr-only" for="name">年龄</label>
                    <input type="text" class="form-control" name="age" id="age" placeholder="请输入年龄">
                </div>
                <div class="row clearfix">
                    <div class="col-md-6 column">
                        <button type="submit" value="Submit" class="btn btn-info btn-block">Form提交</button>
                    </div>
                    <div class="col-md-6 column">
                        <button type="button" id="Submit" class="btn btn-info btn-block">Ajax提交</button>
                    </div>
                </div>
            </form>

        </div>
        <div class="col-md-4 column">
            <h2 class="text-center">
                服务器返回参数
            </h2>

            <form role="form">
                <div class="form-group">
                    <label class="sr-only" for="name">姓名</label>
                    <input type="text" class="form-control" name="name" id="nameBack" placeholder="返回姓名">
                </div>
                <div class="form-group">
                    <label class="sr-only" for="name">年龄</label>
                    <input type="text" class="form-control" name="age" id="ageBack" placeholder="返回年龄">
                </div>


                <p>
                    <button type="reset" class="btn btn-primary btn-block" href="#">reset</button>
                </p>
            </form>
        </div>
    </div>
    <hr/>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h2 class="text-center">testParamsAndHeaders</h2>
            <div class="row clearfix">
                <div class="col-md-3 column">
                    <p>params,headers 了解用法比较少但可做简单限制</p>
                    <p>RequestMapping(value = "testParamsAndHeaders",params =
                        {"username","age!=10"},headers={"Referer","Accept-Language=zh-CN,zh;q=0.8})</p>
                    <a class="btn btn-default btn-block" href="test1/testParamsAndHeaders?username=yek&age=10">testParamsAndHeaders</a>
                </div>
                <div class="col-md-3 column">
                    <p>RequestMapping(value = "test1") 目录：/test1</p>
                    <p>支持Ant风格的通配符 ？代替一个字符，*代替一串字符，**代替多级目录</p>
                    <a class="btn btn-default btn-block" href="#">test</a>

                </div>
                <div class="col-md-3 column">
                    <p>@PathVariable 可以映射请求路径到方法参数</p>
                    <a class="btn btn-default btn-block" href="test1/testPathVariable/23">testPathVariable/23</a>

                </div>
                <div class="col-md-3 column">
                    <a class="btn btn-default btn-block" href="#">test</a>

                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>
