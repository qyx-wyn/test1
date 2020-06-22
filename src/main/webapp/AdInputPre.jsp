<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Document</title>
    <script src="./lib/jquery-3.4.1.js"></script>
    <script src="./lib/bootstrap.js"></script>
    <link rel="stylesheet" href="./lib/bootstrap.css">
    <script src="./lib/heart.js"></script>
</head>
<style>
</style>
<body>
    <div class="panel panel-primary">
          <div class="panel-heading">
                <h3 class="panel-title text-center"><a href="javascript:history.go(-1);" class="pull-left">名医录入</a>名医方子录入<a href="" class="pull-right">管理员主界面</a></h3>
          </div>
          <div class="panel-body">
              <div class="container">
                 <div class="row">
                    <div class="col-md-3">

                    </div>
                    <div class="col-md-6">
                        <form action="./login/addPre.do?docid=<%= request.getParameter("docid") %>" method="POST" role="form">
                            <div class="form-group form-inline center-block">
                                <label for="name">方子名称</label>
                                <input type="text" name="name" class="form-control" id="name" >
                            </div>
                            <div class="form-group">
                                 <label for="major">方子组成</label>
                                 <textarea name="major" id="major" class="form-control" rows="3" required="required"></textarea>
                            </div>
                            
                            <div class="form-group">
                                <label for="form" class="control-label">方子主治</label>
                                    <textarea name="form" id="textarea" class="form-control" rows="3" required="required"></textarea>
                            </div>
                            <div class="form-group form-inline">
                                <button type="submit" class="btn btn-primary pull-left">提交</button>
                                <button type="reset" class="btn  btn-danger pull-right">清空</button>
                            </div>
                        </form> 
                      </div>
                    <div class="col-md-3">

                    </div>
                 </div>
              </div>
          </div>
    </div>
    
</body>
</html>