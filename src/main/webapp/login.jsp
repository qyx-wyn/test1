<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员登录</title>
<script src="./lib/heart.js"></script>
    <style type="text/css">
    
    .container{
        filter:alpha(opacity=60);-moz-opacity:0.6;opacity:0.60;
        
    }
    .row{    
        background-image: url(pictures/beijin.jpg);
        background-repeat: no-repeat;
        background-size:100% 100%;
        background-attachment:fixed;
        height: 700px;margin-top:20px;
      }
      img{
          filter:alpha(opacity=60);-moz-opacity:0.6;opacity:0.60;
          height: 50px;
          width: 300px;
          display: block;
          margin: 0 auto;
      }
      input{
      height: 30px;width: 200px; border: snow;
      }
    </style>
    
  <!-- <script type="text/javascript" src="./lib/jquery-3.4.1.js"></script> -->
    
</head>
<body>
    <div>
       <img src="./pictures/2.png">
    </div>
    
    <div class="container">
        <div class="row" >
            <img src="./pictures/3.jpg" style="height: 150px;width: 150px;margin-top: 30px;">
            <div style="height: 300px;width: 600px;display: block;margin: 0 auto;margin-top: 20px;">
            <form method="post" action="./login/login.do">
                <div style="width: 230px;height: 30px;display: block;margin: 0 auto;">
                    <img src="./pictures/adduser.png" style="height: 30px;width: 30px;float: left;background-color: lightskyblue;">
                    <div style="height: 30px;width: 200px;float: right;background-color: snow;">
                       <input type="text" onblur="checkU();" required="required" name="username" id="username"/>
                       <span id="checkUser" style="color:red;"></span> 
                         
                    </div>
                </div>
                <div style="width: 230px;height: 30px;display: block;margin: 0 auto;margin-top: 30px;margin-bottom: 30px;">
                    <img src="./pictures/password normal.png" style="height: 30px;width: 30px;float: left;background-color: lightskyblue;">
                    <div style="height:30px;width: 200px;float: right;background-color: snow;">
                        <input type="password" onblur="checkP();" required="required" name="password" id="password"/>
                        <span id="checkPsd" style="color:red;"></span>
                    </div>
                </div>
                <button id="login" onclick="check()" style="height: 30px;width: 100px;display: block;margin: 0 auto;text-align: center;background-color:burlywood;line-height: 30px;">
                    登&ensp;&ensp;&ensp;录
                </button>
                </form>
            </div>
        </div>
    </div> 
</body>

<script type="text/javascript">
 
var username=document.getElementById("username");
var password=document.getElementById("password");
var checkUser=document.getElementById("checkUser");
var checkPsd=document.getElementById("checkPsd");

function checkU(){
	if(username.value != ""){
		checkUser.innerHTML = "";
	}else
	{
		checkUser.innerHTML = "用户名不能为空";
		
	}
	
}

function checkP(){
	if(password.value!=""){
		checkPsd.innerHTML = "";
		
	}else{
		checkPsd.innerHTML = "密码不能为空";
		
	}
		
		
}

function check(){
	if(username.value==""||password.value==""){
		if(username.value==""&&password.value==""){
			alert("用户名和密码不能为空！");
			window.location.reload();
		}
		
	}
	else{
		document.getElementById('checkUser').innerHTML = "";
		document.getElementById('checkPsd').innerHTML = "";
		postForm.submit();
	}
} 
</script>
</html>