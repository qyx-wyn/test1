<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.ssm.login.pojo.Tcm"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理员修改数据</title>
    <script src="./lib/vue.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="./lib/bootstrap-theme.css">
    <link rel="stylesheet" href="./lib/bootstrap.css">
    <script src="./lib/heart.js"></script>
    <style type="text/css">
    #tih{
            width: 1000px;
            position: relative;
            left: 30%;
      }
    select{
        filter:alpha(opacity=60);-moz-opacity:0.6;opacity:0.60;
        border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        -o-border-radius: 10px;
        margin-top: 15px;
       }
      #div{
            position: absolute;
      }
      #tih div{
        position: relative;
        left: 10%;
      }
      #ztih{
            position: relative;
            left: 10%;
      }
      #tih{
            width: 600px;
            position: relative;
            left: 28%;
      }
      table {
	margin-top: 20px;
}
  </style>
</head>
<body>
      <div class="panel panel-primary">
            <div class="panel-heading">
                  <h3 class="panel-title text-center">
                  <a href="AdInput.jsp" class="pull-left">录入数据</a>管理员修改数据<a href="./login/back.do" class="pull-right">管理员主界面</a></h3>
            </div>
            <div>
            <select style="height: 40px;width: 300px;margin-left: 480px;">
            <option>请选择</option>           
            <option onclick="fun1()">当地中药材修改</option>
            <option onclick="fun2()">当地名医信息修改</option>
            <option onclick="fun3()">当地中医院信息修改</option>
        </select>
       </div>  
   <div id="tih">  
   <table class="table table-bordered table-hover" style="text-align:center;">
    <thead>
        <tr id="ys">      
        </tr>
    </thead>
    <tbody id="content">
       
    </tbody>
</table>
</div>
      </div>
<script>
      function fun1(){
    	  $.ajax({
    		  url:"${pageContext.request.contextPath}/login/FindAllZY.do",
    		  success:function(data){
    			  console.log(data);
    			  var ys="<th>中药名字</th><th>中药产地</th><th>性味归经</th>";
    			  $("#ys").html(ys);
    			  var html="";
    			  for(var i=0;i<data.length;i++){
    				  html+="<tr onclick='method(this)'>"+
    				  "<td>"+data[i].tcm_name+"</td>"+
    				  "<td>"+data[i].location+"</td>"+
    				  "<td>"+data[i].taste+"</td>"+"</tr>";
    			  }
    			  $("#content").html(html);
    		  }
    	  });  	  
      }
      function method(e){
    	      var tdd=e.firstChild;
    		  var id=tdd.innerHTML;
              window.location.href='./login/ZY.do?Tcm_name='+id;
      }
      function fun2(){
    	  $.ajax({
    		  url:"${pageContext.request.contextPath}/login/FindAllDoc.do",
    		  success:function(data){
    			  console.log(data);
    			  var ys="<th>名医姓名</th><th>所处朝代</th><th>名医著作</th>";
    			  $("#ys").html(ys);
    			  var html="";
    			  for(var i=0;i<data.length;i++){
    				  html+="<tr onclick='method2(this)'>"+
    				  "<td style='display:none;'>"+data[i].id+"</td>"+
    				  "<td style='width:80px;'>"+data[i].doc_name+"</td>"+
    				  "<td style='width:80px;'>"+data[i].dynasty+"</td>"+
    				  "<td>"+data[i].book+"</td>"+"</tr>";
    			  }
    			  $("#content").html(html);
    		  }
    	  });  	  
      }
      function method2(e){
    	      var tdd=e.firstChild;
    		  var id=tdd.innerHTML;
              window.location.href='./login/doc.do?id='+id;
      }
      function fun3(){
    	  $.ajax({
    		  url:"${pageContext.request.contextPath}/login/FindAllHos.do",
    		  success:function(data){
    			  console.log(data);
    			  var ys="<th>医院名字</th><th>所在城市</th><th>联系电话</th>";
    			  $("#ys").html(ys);
    			  var html="";
    			  for(var i=0;i<data.length;i++){
    				  html+="<tr onclick='method3(this)'>"+
    				  "<td>"+data[i].hos_name+"</td>"+
    				  "<td>"+data[i].city+"</td>"+
    				  "<td>"+data[i].tel+"</td>"+"</tr>";
    			  }
    			  $("#content").html(html);
    		  }
    	  });  	  
      }
      function method3(e){
    	      var tdd=e.firstChild;
    		  var id=tdd.innerHTML;
              window.location.href='./login/hospital2.do?hos_name='+id;
      }
      function show1(){
    	  $.ajax({
    		  url:"${pageContext.request.contextPath}/login/ZY.do",
    		  data:{"Tcm_name":$("#zyName").val()},
    		  success:function(data){
    			  console.log(data);
    			  var value1=data.location;
    			  console.log(value1);
    			  $("#zyPlace").val(value1);
    			  $("#zyTaste").val(data.taste);
    			  $("#zyEffect").val(data.efficacy);
    			  $("#zyPz").val(data.processing);
    			  $("#nameYl").val(data.origin)
    		  }
    	  });
      }
      
      function show3(){
    	  $.ajax({
    		  url:"${pageContext.request.contextPath}/login/hospital2.do",
    		  data:{"hos_name":$("#hosName").val()},
    		  success:function(data){
    			  console.log(data);
    			  $("#hosCity").val(data.city);
    			  $("#hosAddress").val(data.address);
    			  $("#hosWebsite").val(data.website);
    			  $("#zyPz").val(data.processing);
    			  $("#nameYl").val(data.origin)
    			  $("#zyEffect").val(data.efficacy);
    			  $("#zyPz").val(data.processing);
    			  $("#nameYl").val(data.origin)
    		  }
    	  });
      }
     </script>
</body>
</html>