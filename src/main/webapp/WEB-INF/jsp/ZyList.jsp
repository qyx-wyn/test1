<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中药列表</title>
 <script src="../lib/vue.min.js"></script>
    <link rel="stylesheet" href="../lib/bootstrap.css">
    <script src="../lib/jquery-3.4.1.js"></script>
    <script src="../lib/bootstrap.js"></script>
    <script src="../lib/heart.js"></script>
    <style>
        #img1{
            width: 40px;
            height: 40px;
            position: relative;
            left: 0%;
            top: 0%;
        }
        #tih{
           height: 50px;
        }
        img{
            width: 300px;
            height: 300px;
            position: relative;
            left: 10%;
            top: 15%;
        }
        #app div{
            border-bottom:solid burlywood 1px;
            height: 500px;
        }
        a{
           font-size: larger;
        }
    </style>
</head>
<body>
 <div class="panel panel-warning">
          <div class="panel-heading " id="tih">
                <div class="col-md-3" >
                    <a href="../selectZy.jsp">中药查询界面</a>
                </div>
                <div class="col-md-6 pull-left">
                    <div class="input-group pull-right">
                    <% String str=  request.getParameter("Tcm_name");
                    if(str==null)
                    	str=" ";
                    	%>
                        <input id="zy" value="<%=str %>" type="text" class="form-control" placeholder="请输入关键字">
                        <span class="input-group-btn">
                          <button class="btn btn-warning" onclick="search();" type="button">搜索</button>
                        </span>
                   </div>
                </div>
                
          </div>
    </div>
    <c:forEach items="${requestScope.ZYList}" var="Tcm">
    <div class="container-fluid" id="app">
        <div class="row" v-for="(item ,i) in zys">
            <div class="col-md-4">
                <img src="../${Tcm.getImg()}">
            </div>
            <div class="col-md-6">
                <table class="table">
                    <tr>
                        <td>中药名称</td>
                        <td>${Tcm.getTcm_name()}</td>
                    </tr>
                    <tr>
                        <td>中药产地</td>
                        <td>${Tcm.getLocation()}</td>
                    </tr>
                    <tr>
                        <td>性味归经</td>
                        <td>${Tcm.getTaste()}</td>
                    </tr>
                    <tr>
                        <td>中药起源</td>
                        <td><textarea readonly="readonly" class="form-control" rows="2">${Tcm.getOrigin()}</textarea></td>
                    </tr>
                    <tr>
                        <td>功效</td>
                        <td>
                        <textarea readonly="readonly" class="form-control" rows="2">${Tcm.getEfficacy()}</textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>炮制方法</td>
                        <td>
                            <textarea readonly="readonly" class="form-control" rows="3">${Tcm.getProcessing()}</textarea> 
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </c:forEach>
    <div class="modal fade" id="ykmodal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">请输入您的反馈意见</h4>
                </div>
                <div class="modal-body">
                    <textarea id="sessage"class="form-control" rows="3" required="required"></textarea>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger pull-left" data-dismiss="modal" id="clear">关闭</button>
                    <button type="button" class="btn btn-primary pull-right">提交</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
</body>
<script type="text/javascript" src="./lib/jquery-3.4.1.js"></script>
<script type="text/javascript">
$('#zy').bind('keypress',function(event){ 
    
    
    if(event.keyCode == 13)      

    {  
        search();
    }  

});


function search()
{
    window.location.href='../login/ZYs.do?Tcm_name='+$(" #zy ").val();
     
}
</script>
</html>