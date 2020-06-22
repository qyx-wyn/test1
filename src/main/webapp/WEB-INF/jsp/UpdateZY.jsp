<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改中药</title>
    <script src="../lib/vue.min.js"></script>
    <script src="../lib/jquery-3.4.1.js"></script>
    <script src="../lib/heart.js"></script>
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
            margin-top: 30px;
      }
  </style>
</head>
<body>
 <div id="tih">
    <form action="../login/UpdateTcm.do">
        <div class="form-group form-inline">
           <label for="zyName" >药材名</label>
           <input type="text" class="form-control" id="zyName" name="Tcm_name" value="${Tcm.getTcm_name() }">
           <label for="zyPlace">产地</label>
           <input type="text" class="form-control" id="zyPlace" name="location" value="${Tcm.getLocation() }">
         </div>
         <div class="form-group">
          <label for="zyTaste">性味归经</label>                           
          <input type="text" class="form-control" id="zyTaste" name="taste" required="required" value="${Tcm.getTaste() }">
       </div>
         <div class="form-group">
             <label for="zyEffect">功效</label>                           
             <textarea  id="zyEffect" name="efficacy" class="form-control" rows="3" required="required">${Tcm.getEfficacy() }</textarea> 
         </div>
         <div class="form-group">
               <label for="zyPz">炮制方法</label>   
               <textarea id="zyPz" name="processing" class="form-control" rows="3" required="required">${Tcm.getProcessing() }</textarea>    
         </div>
         <div class="form-group">
           <label for="nameYl">药名由来</label>   
           <textarea id="nameYl" name="origin" class="form-control" rows="3">${Tcm.getOrigin() }</textarea>    
         </div>
         <div class="form-inline">
           <input class="btn btn-primary" type="submit" onclick="fun1()" value="提交修改">
           <input class="btn btn-warning pull-right" value="放弃修改" onclick="javascript:history.back(-1);">
         </div>   
   </form>
</body>
<script type="text/javascript">
function fun1(){
	alert("修改成功！谢谢");
}
</script>
</html>