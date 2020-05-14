<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>testAjax</title>
    <script src="js/jquery-3.5.1.min.js"></script>
    <script>
        $(function () {
            $("#btn").click(function () {
                $.ajax({
                    url:"/ajax/testAjax",
                    data:{"username":"tom","age":23},
                    dataType:"text",    //设置接收到的响应数剧的格式
                    type:"POST",
                    contentType:"application/json;charset=UTF-8",
                    success:function () {  //响应成功后执行此函数
                        alert(this.data);
                    },
                    error:function () {
                        alert("bad");
                    }

                })
            })
        })
    </script>
</head>
<body>
    <input type="button" id="btn" value="test">
</body>
</html>