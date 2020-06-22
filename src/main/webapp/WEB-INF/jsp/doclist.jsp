<%@page import="com.ssm.login.pojo.Doctor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>名医列表</title>
<script src="../lib/heart.js"></script>
    <style>
        .seacher{
          border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        -o-border-radius: 10px;
        height: 30px;
        width: 340px;
        position: absolute;
        margin-top: 10px;
        margin-left: 440px;
        float: left;
        }
        #FindDoc{
        border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        -o-border-radius: 10px;
        width: 300px;
        height: 30px;
        border: snow;
      }
      body {
	margin: 0;
	padding: 0;
	font-size: 12px;
	font-family: "Microsoft Yahei", Verdana, Arial, Helvetica, sans-serif
}
.leftMenu {
	min-width:220px;
    width:70%;
	margin:40px auto 0 auto;
}
.menu {
	border: rgb(248, 242, 204) 1px solid;
	border-top: #f1ba02 4px solid;
	border-bottom: #f1ba02 4px solid;
  border-left: #f1ba02 1px solid;
  border-right: #f1ba02 1px solid;
	background: rgb(248, 242, 204) url(images/leftdhbg.jpg) repeat-y right;
	margin-left: 10px;
}
.menu .ListTitle {
	border-bottom: 1px #f1ba02 solid;
	display: block;
	text-align: center;
	/*position: relative;*/
	height: 38px;
	line-height: 38px;
	cursor: pointer;
	/*+min-width:220px;*/

	width:100%;
}
.ListTitlePanel {
	position: relative;
}
.leftbgbt {
	position: absolute;
	background: url(images/leftbgbt.jpg) no-repeat;
	width: 11px;
	height: 52px;
	left: -11px;
	top: -4px;
}
/*.leftbgbt {
	float:left;
	background: url(images/leftbgbt.jpg) no-repeat;
	width: 11px;
	height: 52px;
	left: 0px;
	top: 0px;
	zoom:1;
	z-index:200px;
}
*/.leftbgbt2 {
	position: absolute;
	background: url(images/leftbgbt2.jpg) no-repeat;
	width: 11px;
	height: 48px;
	left: -11px;
	top: -1px;
}
.menuList {
	display: block;
	height: auto;
  display: none;
  /* margin-left: 10px; */
}
.menuList div {
	/* height: 28px; */
	line-height: 24px;
  padding-top: 10px;
  padding-bottom: 10px;
	border-bottom: 1px rgb(247, 226, 89) dotted;
}
.menuList div {
	display: block;
	background: #fff;
	line-height: 28px;
	/* height: 28px; */
	/* margin-left: 10px; */
	color: rgb(32, 32, 30);
	text-decoration: none;
}
/* .menuList div a:hover {
	color: #f30;
	background: rgb(248, 242, 204);
	color: #fff;
} */
    </style>
    <script type="text/javascript" src="../lib/jquery-3.4.1.js"></script>
</head>
<body>
    <div style="height: 50px;width: 1264px;background-color:rgb(248, 242, 204);filter:alpha(opacity=60);-moz-opacity:0.6;opacity:0.60; ">
        <div class="seacher">
        <% String str=  request.getParameter("doc");
                    if(str==null)
                    	str=" ";
                    	%>
          <input id="FindDoc" type="text" value="<%=str %>" />
          <img src="../pictures/搜索--1.png" onclick="search();" style="height: 30px;width: 30px;float:right;"/>
          
        </div>
        <p style="float: right;margin-right: 15px;"><a href="../doctor.jsp" >返回查询>></a></p>
    </div>
    <div style="width: 1264;">
	  <div style="text-align: left;margin:10px; marfont-size: 15px;"><span style="color: darkviolet;">
	  <%
	  String dynasty=request.getParameter("dynasty");
	  String doc=request.getParameter("doc");
	  if(dynasty!=null)
		  out.print(dynasty+"朝");
	  else
		  out.print(doc);%></span>查询结果</div>
      
	<div class="leftMenu">
		<div class="menu">
			<c:forEach var="doc" items="${requestScope.doctors}" >  
			<div class="menuParent">
				<div class="ListTitlePanel">
					<div class="ListTitle">
			          <table width="100%">
			            <tr>
			              <td width="50%"><strong>${doc.getDoc_name()}</strong></td>
			              <td>${doc.getDynasty()}</td>
			            </tr>
			          </table>
					</div>
				</div>
				<div class="menuList">
					<div> 生平：${doc.getStory()}</div>
					<c:if test="${not empty doc.getPrescriptions()}">
					<div> 名方： <br/>
						<table style="text-align: center">
							<tr>
								<td>方名</td>
								<td>构成</td>
								<td>主治</td>
							</tr>
							<c:forEach var="pre" items="${doc.getPrescriptions()}" >
							<tr>
								<td style="width: 80px">${pre.getName()}</td>
								<td>${pre.getForm()}</td>
								<td>${pre.getMajor()}</td>
							</tr>
							</c:forEach>
						</table>
					</div>
					</c:if>
					<c:if test="${not empty doc.getBook()}">
					<div> 著作：  ${doc.getBook()}</div>
					</c:if>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
</div>
</body>

<script type="text/javascript">

$(document).ready(function() {
	var menuParent = $('.menu > .ListTitlePanel > div');//获取menu下的父层的DIV
	var menuList = $('.menuList');
	$('.menu > .menuParent > .ListTitlePanel > .ListTitle').each(function(i) {//获取列表的大标题并遍历
		$(this).click(function(){
			if($(menuList[i]).css('display') == 'none'){
				$(menuList[i]).slideDown(300);
			}
			else{
				$(menuList[i]).slideUp(300);
			}
		});
	});
});


$('#FindDoc').bind('keypress',function(event){ 
    
    if(event.keyCode == 13)      

    {  
        search();
    }  

});


function search()
{
    window.location.href='../login/getDoc.do?doc='+$(" #FindDoc ").val();
     
}

</script>
</body>
</html>