<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员主界面</title>
    <link rel="stylesheet" href="../lib/bootstrap.css">
    <link rel="stylesheet" href="../lib/bootstrap-theme.css">
    <script src="../lib/heart.js"></script>
</head>
<style>
    img{
        width: 50px;
        height: 50px;
    }
    #tih{
        margin: auto;
        padding: 35%;
    }
    p{
        margin-top: 30%;
        font-size: larger;
    }
</style>
<body>
	<%
	if(session.getAttribute("login")==null)
		response.sendRedirect("../index.jsp");
	%>
   <div class="panel panel-primary">
         <div class="panel-heading">
               <h3 class="panel-title text-center">管理中心</h3>
         </div>
         <div class="panel-body" style="height: 500px;">
               <div class="col-md-3 center-block">
                   <div id="tih">
                       <a href="../AdInput.jsp"><img src="../pictures/luru.png"></a>
                        <p>
                          录入数据
                        </p>
                   </div>
               </div>
               <div class="col-md-3">
                   <div id="tih">
                       <a href="../AdUpdate.jsp"><img src="../pictures/xiug.png"></a>  
                       <p>修改数据</p>
                   </div>
               </div>
               <div class="col-md-3">
                   <div id="tih">
                       <a href="../login/FeedBackList.do"><img src="../pictures/yijian.png"></a>
                       <p>意见箱</p>
                   </div>
               </div>
               <div class="col-md-3">
                   <div id="tih"> 
                       <a href="../login/out.do"><img src="../pictures/tuichu.png"></a>     
                       <p>退出</p>
                   </div>
               </div>
         </div>
         <div class="panel-footer">
            荆楚大药房后台管理
        </div>       
   </div> 
</body>
</html>