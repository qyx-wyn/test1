<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.ssm.login.pojo.FeedBack"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Document</title>
    <link rel="stylesheet" href="../lib/bootstrap.css">
    <link rel="stylesheet" href="../lib/bootstrap-theme.css">
     <script src="../lib/jquery-3.4.1.js"></script>
    <script src="../lib/bootstrap.js"></script>
    <script src="../lib/text_overflow.js"></script>
    <style>
        img{
            width: 30px;
            height: 30px;
        }
        #yadvice{
            border: cornflowerblue solid 1px;
            border-radius:6px;
            color: darkgrey;
        }
    </style>
</head>
<body>
    <div class="panel panel-primary" >
          <div class="panel-heading">
                <h3 class="panel-title text-center">
                <a href="../login/back.do" class="pull-left">管理员主界面</a>意见箱</h3>
          </div>
          <div class="panel-body" id="app">  
              <div class="container">
                  <div class="row">
                      <div class="col-md-5">
                           <div class="row">
                               <h4>未阅意见<img src="../pictures/weiyue.png"></h4>
                           </div>
                         <c:forEach var="wd" items="${WdfeedBackList}" >
                           <div class="row" id="row2">
                               <p style="display:none;">${wd.getId()}</p>
                               <div class="form-group">
                                  <textarea name="wadvice" id="input" class="form-control" rows="3" required="required">${wd.getAdvice()}</textarea>
                               </div>
                                <div class="form-group form-inline">
                                    <button type="button" class="btn btn-success" onclick="changeFontColor(this)">已阅</button>
                                    <a href="../FeedBack/deleteSta.do?id=${wd.getId()}" class="btn btn-danger pull-right ">删除
                                    </a>
                                </div>
                           </div>
                          </c:forEach>
                      </div>
                      <div class="col-md-2">

                      </div>
                      <div class="col-md-5">
                            <div class="row">
                                <h4>已阅意见<img src="../pictures/yiyue.png"></h4>
                            </div>
                          <c:forEach var="yd" items="${YdfeedBackList}" >
                            <div class="row1" name="yadvice" id="yadvice">
                                  <P>
                                    &nbsp;&nbsp;&nbsp;&nbsp;${yd.getAdvice()}
                                  </P>
                                    <a href="../login/deleteSta.do?id=${yd.getId()}">
                                        <img src="../pictures/delete.png">
                                    </a> 
                            </div>
                            <div style="height:10px;">
                            </div>
                          </c:forEach>
                      </div>
                  </div>
              </div> 
          </div>
    </div>
    <script>
    $('.row1').each(function(){   
    	$(this).attr("displayLength","26") 
        $(this).click(function() {
           $(this).un_displayPart();
        })      
        $(this).un_displayPart();
    });
	 function changeFontColor(e){
		var s=e.parentNode.parentNode.children[1].children[0];
		var id=e.parentNode.parentNode.children[0].innerHTML;
		s.style.color='darkgrey';
		  $.ajax({
			  url:"${pageContext.request.contextPath}/login/updateSta.do",
			  data:{"id":id},		  
			  success:function(s){
				  location.reload();
			  }
		  });
	 }
</script>
</body>
</html>