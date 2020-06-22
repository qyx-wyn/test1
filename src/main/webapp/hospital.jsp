<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>中医院查询</title>
<script src="./lib/heart.js"></script>
    <style type="text/css">
         body{
            filter:alpha(opacity=60);-moz-opacity:0.6;opacity:0.60;
         }
         .row{    
        background-image: url(./pictures/beijin.jpg);
        background-repeat: no-repeat;
        min-height: 100vh;
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
      .area{
          width: 660px;
          height: 200px;
          position: absolute;
          margin-top: 150px;
          margin-left: 290px;
      }
    </style>
</head>
<body>
    <div style="display: block;margin: 0 auto;height:50px;width: 250px;">
        <img src="./pictures/9.png" style="height: 50px;width: 50px;float: left;"/>
        <h2 style="color: slategray;line-height: 50px;">湖北中医医院</h2>
    </div>
    <p style="float: right;margin-top: -15px;margin-right: 8px;"><a href="index.jsp">返回主界面>></a></p>
    <div class="container">
        <div class="row" style="height: 700px;margin-top:15px;" >
            <div class="find">
                <input id="FindDoc" type="text"/>
                <img src="./pictures/搜索--1.png" onclick="search();" style="height: 30px;width: 30px;float:right;"/>
            </div>
            <div class="area">
                <div style="width: 130px;height: 200px;float: left;">
                        <ul>
                            <li style="margin-bottom: 20px;">
                                .<a href="./login/hospitalList.do?city=武汉">武汉</a>
                            </li>
                            <li style="margin-bottom: 20px;">
                                .<a href="./login/hospitalList.do?city=襄阳">襄阳</a>
                            </li>
                            <li style="margin-bottom: 20px;">
                                .<a href="./login/hospitalList.do?city=宜昌">宜昌</a>
                            </li>
                            <li style="margin-bottom: 20px;">
                                .<a href="./login/hospitalList.do?city=荆州">荆州</a>
                            </li>              
                        </ul>
                </div>
                <div style="width: 130px;height: 200px;float:left;">
                    <ul>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=黄石">黄石</a>
                        </li>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=黄冈">黄冈</a>
                        </li>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=孝感">孝感</a>
                        </li>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=十堰">十堰</a>
                        </li>              
                    </ul>
                </div>
                <div style="width: 130px;height: 200px;float: left;">
                    <ul>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=咸宁">咸宁</a>
                        </li>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=荆门">荆门</a>
                        </li>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=恩施">恩施</a>
                        </li>            
                    </ul>
                </div>
                <div style="width: 130px;height: 200px;float: left;">
                    <ul>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=随州">随州</a>
                        </li>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=鄂州">鄂州</a>
                        </li>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=天门">天门</a>
                        </li>            
                    </ul>
                </div>
                <div style="width: 130px;height: 200px;float: left;">
                    <ul>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=仙桃">仙桃</a>
                        </li>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=潜江">潜江</a>
                        </li>
                        <li style="margin-bottom: 20px;">
                            .<a href="./login/hospitalList.do?city=神农架">神农架</a>
                        </li>            
                    </ul>
                </div>                
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="./lib/jquery-3.4.1.js"></script>
<script type="text/javascript">


$('#FindDoc').bind('keypress',function(event){ 
    
    if(event.keyCode == 13)      

    {
        search();
    }  

});


function search()
{
    window.location.href='./login/hospital.do?hos_name='+$(" #FindDoc ").val();
     
}
</script>
</html>