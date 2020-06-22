<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员修改数据</title>
    <script src="./lib/vue.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="./lib/bootstrap-theme.css">
    <link rel="stylesheet" href="./lib/bootstrap.css">
    <script src="./lib/heart.js"></script>
    <style>
      #div{
            position: absolute;
      }
      #tih{
            width: 500px;
            position: relative;
            left: 28%;
            margin-top: 50px;
      }
  </style>
  </head>
<body>
<div id="tih">
        <form action="">
            <div class="form-group form-inline">
               <label for="ysName">名医姓名</label>
               <input type="text" class="form-control" id="zyName" required="required">
               <label for="ysPlace">朝代</label>
               <input type="text" class="form-control" id="zyPlace" required="required">
             </div>
             <div class="form-group">
                 <label for="ysStory">生平</label>                           
                 <textarea  id="ysStory" class="form-control" rows="3" required="required" ></textarea> 
             </div>
             <div class="form-group">
                   <label for="ysBook">所著书籍</label>   
                   <textarea id="ysBook" class="form-control" rows="3" ></textarea>    
             </div>
             <div class="form-group">
               <label for="ysPre">所撰名方</label>   
               <textarea id="ysPre" class="form-control" rows="3"></textarea>    
             </div>
             <div class="form-inline">
               <input class="btn btn-primary" type="submit" value="放弃修改">
               <input class="btn btn-warning pull-right" type="button" value="提交修改">
             </div>   
       </form>
</div>
</body>
</html>