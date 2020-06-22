<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改医院</title>
    <script src="../lib/vue.min.js"></script>
    <script src="../lib/heart.js"></script>
    <script src="${pageContext.request.contextPath}/lib/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="../lib/bootstrap-theme.css">
    <link rel="stylesheet" href="../lib/bootstrap.css">
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
        <form action="../login/UpdateDoc.do" method="POST" role="form">
            <div class="form-group form-inline">
                  <label for="docName">名医姓名</label>
                  <input type="text" class="form-control" name="doc_name" required="required" value="${doctor.getDoc_name() }">
                  <input value="${doctor.getId() }" style="display: none;" id="id" name="id">
                  <label for="docDyn">所处朝代</label>
                  <select id="dynasty" name="dynasty" class="form-control">
                  	<option selected="selected">${doctor.getDynasty() }</option>
                  	<option v-for="item in dynasty" v-band:value="item.id">
                          {{item}}
                    </option>
                  </select>
            </div>
            <div class="form-group">
                  <label for="docBook">名医著作</label> 
                  <textarea id="docBook" name="book" class="form-control" rows="3">${doctor.getBook() }</textarea>
            </div>
            <div class="form-group">
                  <label for="docStory">名医生平</label>
                  <textarea id="docStory" name="story" class="form-control" rows="3">${doctor.getStory() }</textarea>
            </div>
            <div class="form-inline">
                  <input class="btn btn-primary" type="submit" value="提交修改">  
                  
                  <input class="btn btn-warning pull-right" type="reset" onclick="javascript:history.back(-1);" value="放弃修改">
            </div>
      </form> 
      <button style="margin-top: 10px;" class="btn btn-primary" onclick="insertPre()">添加名方</button> 
      <div id="content" style="display: none; margin-top: 10px; border-radius:2%; padding:10px; border: 1px  rgb(161, 161, 161) solid;">
      	<div class="form-group">
      	<!-- <form action="../login/insertPre.do"> -->
      		<div class="form-group">
      			<label>方名</label>
	            <input type="text" id="preName" class="form-control" name="name">
	            <input value="${doctor.getId() }" style="display: none;" id="doc_id" name="doc_id">
	        </div>
	        <div class="form-group">
	            <label for="preMajor">主治</label>
	            <input type="text" id="preMajor" class="form-control" name="major">
	        </div>
            <div class="form-group">
	            <label for="preForm">组成</label>
	            <textarea type="text" id="preForm" class="form-control" name="form"></textarea>
	        </div>
	        <div class="form-inline">
			    <button class="btn btn-primary" onclick="insert()" style="display: block;margin: 0 auto;">插入</button>                
			</div>
		<!-- </form> -->
      	</div>
      </div>
       <div class="form-group" style="margin-top: 10px;">
                  <label for="docPre">名方</label>
                  <c:forEach var="pre" items="${doctor.getPrescriptions()}">
                  	<div style="border: 1px  rgb(161, 161, 161) solid; border-radius: 2%; margin-bottom: 10px; padding: 15px;">
	                  	<div class="form-group">
	                  		<input value="${pre.getId() }" style="display: none;">
	                  		<label for="preName">方名</label>
	                  		<input type="text" class="form-control" name="name" value="${pre.getName() }">
	                  	</div>
	                  	<div class="form-group">
	                  		<label for="preMajor">主治</label>
	                  		<input type="text" class="form-control" name="major" value="${pre.getMajor() }">
	                  	</div>
                  		<div class="form-group">
	                  		<label for="preForm">组成</label>
	                  		<textarea type="text" class="form-control" name="form">${pre.getForm() }</textarea>
	                  	</div>
	                  	<div class="form-inline">
			                  <button class="btn btn-primary" onclick="updatePre(this)" style="display: block;margin: 0 auto;">提交修改</button>                
			            </div>
                  	</div>
                  </c:forEach>
            </div>
   </div>
</body>

<script type="text/javascript">
new Vue({
	el:"#dynasty",
	data:{
		dynasty:[
			'魏晋','宋','明','清','现代'
		]
	}
});


$(document).ready(function() {
	var hos_city=$("#hos_city");
	var city=$("#city");
	for(var i=0;i<city.length;i++){
		if(hos_city.innerHtml.equals(this)){
			this.attr("selected",true);
		}
	}
});


function updatePre(e){
	var pp=e.parentNode.parentNode;
	var ppchild=pp.children;
	var id=ppchild[0].children[0].value;
	var name=ppchild[0].children[2].value;
	var form=ppchild[2].children[1].innerHTML;
	var major=ppchild[1].children[1].value;
	var pre={"id": id,
		    "name": name,
		    "form": form,
		    "major": major};
	  $.ajax({
		  url:"${pageContext.request.contextPath}/login/updatePre.do",
		  data:pre,		  
		  success:function(data){
			  if(data!=null)
			  alert("修改成功！");
		  }
	  });
};
function insertPre(){
	document.getElementById("content").style.display="block";
}
function insert(){
	$.ajax({
		  url:"${pageContext.request.contextPath}/login/insertPre.do",
		  data:{
			  "name":$("#preName").val(),
			  "doc_id":$("#doc_id").val(),
			  "form":$("#preForm").val(),
			  "major":$("#preMajor").val(),
		  },		  
		  success:function(data){
			  if(data>0){
				  alert("插入名方成功！");
				  location.reload();
			  }
			  else if(data==-1)
				  alert("数据库已有该名方");
			  else
				  alert("插入名方失败！");
		  }
	  });
}
</script>
</html>