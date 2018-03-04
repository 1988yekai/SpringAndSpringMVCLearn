$(document).ready(function () {
    $("#Submit").click(function () {
        name = $("#name").val();
        age = $("#age").val();
        //url="test1/requestMappingTest";
        url = "test1/jsonTest"
        $.ajax({
                type: "POST",
                timeout: 3000,
                async: false,
                cache: false,
                data: {"name": name, "age": age},//参数
                url: url,
                success: function (data) {
                    //var dataObj = eval("("+data+")");//这里要加上加好括号和双引号的原因我也不知道，就当是json语法，只能死记硬背了

                    $("#formReturn").text("return " + JSON.stringify(data) + "");

                    $("#nameBack").val(data.name);
                    $("#ageBack").val(data.age);
                    //if(obj.error_code!="0"){
                    //    document.getElementById("formReturn").innerHTML="请输入正确的身份证号!";
                    //}
                    //if(obj.error_code=="0"){
                    //    document.getElementById("chId").innerHTML="";
                    //}
                    //$("#formReturn").html(data);
                },
                error: function () {
                    document.getElementById("formReturn").innerHTML = "Ajax请求失败！";
                }
            }
        )
    });
});