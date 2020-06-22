<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>错误信息提示界面</title>
    <script src="../lib/jquery-3.4.1.js"></script>
    <script src="../lib/bootstrap.js"></script>
    <link rel="stylesheet" href="../lib/bootstrap.css">
</head>
<body>
    <div class="panel panel-primary">
          <div class="panel-heading">
                <h3 class="panel-title text-center">错误提示</h3>
          </div>
          <div class="panel-body">
            <span style="color:red" mce_style="color:red">错误信息:${message}</span><br/>页面将在5秒后返回上一界面....<br/>还剩<span id="num">5</span>秒
          </div>
    </div>
    <script>
       $(document).ready(function() {
        function jump(count) {
        window.setTimeout(function(){
        count--;
        if(count > 0) {
        $('#num').text(count);
        jump(count);
        } else {
         window.history.back(-1); 
        }
        }, 1000);
        }
        jump(5);
        }); 
    </script>
</body>
</html>