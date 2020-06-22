<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>荆楚当地中药材查询</title>
    <link rel="stylesheet" href="./lib/bootstrap.css">
    <link rel="stylesheet" href="./CSS/SelectZycss.css">
    <script src="./lib/heart.js"></script>
    <style>
       .row p{
    font-size: 24px;
    color:darkgray;
    margin: auto;
 }
 #tih{
     background-image: url(./pictures/beijin.jpg);
     background-repeat:no-repeat;
     background-size:100% 100%;
     background-attachment:fixed;
     filter:alpha(opacity=60);-moz-opacity:0.6;opacity:0.60;
     position: relative;
     height: 600px;
 }
 #ztih{
     width: 300px;
     margin: auto;
     position: absolute;
     margin: auto;
     top: 50px;
     left: 500px;
 }
 #ytih{
     position: absolute;
     margin: auto;
     top: 150px;
     left: 300px;
 }
 a{
     font-size: 15px;
 }
 table{
     position: relative;
     margin: auto;
     right: 100px;
     bottom: 50px;
 }
 img{
     width: 50px;
     height: 50px;
     position:relative;
     top: 35px;
     right: 150px;
 }
 li{
     float: left;
     line-height: 60px;
     margin-left: 100px;
 }
 #fh{
     float: left;
     position: relative;
     top: 50px;
 }
 a{
 color:#286090;
 }
 a:hover{
 color:#337ab7;
 }
    </style>
</head>
<body>
    <div class="container-fluid" id="#app">
        <div class="row text-center">
            <a href="index.jsp" id="fh">返回首页&gt&gt</a>
            <img src="./pictures/9.png">
             <p>荆楚当地中药查询</p>
        </div>
        <div class="row text-center" id="tih">
            <div class="input-group " id="ztih">
                <input id="zy"  type="text" class="form-control"><span onclick="search()" class="input-group-addon btn btn-primary">搜索</span>
            </div>
            <div id="ytih">
               <ul>
                    <li>
                        <a href="./login/ZYList.do?location=武汉">武汉市</a>
                    </li>
                    <li>
                        <a href="./login/ZYList.do?location=黄石">黄石市</a>
                    </li>
                    <li>
                        <a href="./login/ZYList.do?location=十堰">十堰市</a>
                    </li>
                    <li>
                        <a href="./login/ZYList.do?location=宜昌">宜昌市</a>
                    </li>
               </ul>
               <ul>
                   <li>
                        <a href="./login/ZYList.do?location=襄阳">襄阳市</a>
                   </li>
                   <li>
                        <a href="./login/ZYList.do?location=鄂州">鄂州市</a>
                   </li>
                   <li>
                        <a href="./login/ZYList.do?location=荆门">荆门市</a>
                   </li>
                   <li>
                        <a href="./login/ZYList.do?location=孝感">孝感市</a>
                   </li>
               </ul>
               <ul>
                    <li>
                        <a href="./login/ZYList.do?location=随州">随州市</a>
                    </li>
                    <li>
                        <a href="./login/ZYList.do?location=神农架">神农架</a>
                    </li>
                    <li>
                        <a href="./login/ZYList.do?location=黄冈">黄冈市</a>
                    </li>
                    <li>
                        <a href="./login/ZYList.do?location=荆州">荆州市</a>
                    </li>
               </ul>
               <ul>
                    <li>
                        <a href="./login/ZYList.do?location=天门">天门市</a>
                    </li>
                    <li>
                        <a href="./login/ZYList.do?location=仙桃">仙桃市</a>
                    </li>
                    <li>
                        <a href="./login/ZYList.do?location=潜江">潜江市</a>
                    </li>
               </ul>
            </div>
        </div>
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
    window.location.href='./login/ZYs.do?Tcm_name='+$(" #zy ").val();
     
}
</script>
</html>