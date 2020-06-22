<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>doc_select</title>
<script src="./lib/heart.js"></script>
<style type="text/css">
         body{
            filter:alpha(opacity=60);-moz-opacity:0.6;opacity:0.60;
         }
         .row{    
        background-image: url(./pictures/beijin.jpg);
        background-repeat: no-repeat;
        background-size:100% 100%;
        background-attachment:fixed;
      }
      .find{
        border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        -o-border-radius: 10px;
        height: 30px;
        width: 340px;
        position: absolute;
        margin-top: 50px;
        margin-left: 440px;
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
      .dynasty{
          /* width: 810px; */
          height: 200px;
          position: absolute;
          margin-top: 150px;
          margin-left: 120px;
      }.one{
        border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        -o-border-radius: 10px;
        float: left;border:solid 1px slategray;width: 200px;height: 200px;
      }
    </style>
</head>
<body>
    <div style="display: block;margin: 0 auto;height:50px;width: 250px;">
        <img src="./pictures/9.png" style="height: 50px;width: 50px;float: left;"/>
        <h2 style="color: slategray;line-height: 50px;">荆楚历代名医</h2>
    </div>
    <p style="float: right;margin-top: -15px;margin-right: 8px;"><a href="./index.jsp">返回主界面>></a></p>
    <div class="container">
        <div class="row" style="height: 700px;margin-top:15px;" >
            <div class="find">
                <input id="FindDoc" type="text" />
                <img src="./pictures/搜索--1.png" onclick="search();" style="height: 30px;width: 30px;float:right;"/>
            </div>
            <div class="dynasty">
                <div class="one" name="魏晋">
                    <p style="text-align: center;line-height: 160px;font-size: 25px;">魏晋</p>
                </div>
                <div class="one" name="宋">
                    <p style="text-align: center;line-height: 160px;font-size: 25px;">宋</p>
                </div>
                <div class="one" name="明">
                    <p style="text-align: center;line-height: 160px;font-size: 25px;">明</p>
                </div>
                <div class="one" name="清">
                    <p style="text-align: center;line-height: 160px;font-size: 25px;">清</p>
                </div>
                <div class="one" name="现代">
                    <p style="text-align: center;line-height: 160px;font-size: 25px;">现代</p>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="./lib/jquery-3.4.1.js"></script>
<script type="text/javascript">
var one=$('.one');
for (let index = 0; index < one.length; index++) {
    one[index].onclick=function(){
        var dynasty='./login/docByDyn.do?dynasty='+this.getAttribute("name");
	    window.location.href=dynasty;
    };
}

$('#FindDoc').bind('keypress',function(event){ 
    
    
    if(event.keyCode == 13)      

    {  
        search();
    }  

});


function search()
{
    window.location.href='./login/getDoc.do?doc='+$(" #FindDoc ").val();
     
}
</script>
</html>