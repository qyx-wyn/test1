<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>荆楚大药房</title>
    <script src="./lib/vue.min.js"></script>
    <link rel="stylesheet" href="./lib/bootstrap.css">
    <link rel="stylesheet" href="./lib/bootstrap-theme.css">
    <style type="text/css">
       select{
        filter:alpha(opacity=60);-moz-opacity:0.6;opacity:0.60;
        border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        -o-border-radius: 10px;
        margin-top: 15px;
        background-color: rgb(244, 248, 246);
       }
       .active{
           width: 200px;
       }

       .tuozhan{
           margin-left: 20px;
           width: 200px;
           height: 300px;
           margin-top: 15px;
           float: left;
       }
       .kuan1{
        border-top-left-radius:10px;
        border-top-right-radius:10px; 
       }
       .kuan2{
        border-bottom-right-radius:10px;
        border-bottom-left-radius :10px;
       }
       .web{
           text-align: center;
           font-size:15px;
           margin-top: 20px;
       }
       .fengqing{
        border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        -o-border-radius: 10px;
       }
       .kuai{
        border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        -o-border-radius: 10px;
        border: solid 1px lightseagreen;  
       }
       .big{
           transition: all 2s;
       }
       .big:hover{
           cursor: crosshair;
           transform: scale(1.5);
       }
       .feedback{
           filter:alpha(opacity=60);-moz-opacity:0.6;opacity:0.60;
           width: 1000px;
           height: 500px;
           background-color: rgb(238, 245, 237);
           border: solid 1px lightgreen;
           border-radius: 10px;
           -moz-border-radius: 10px;
           -webkit-border-radius: 10px;
           -o-border-radius: 10px;
           margin-top: 10px;
           float: right;
           margin-right: 20px;
       }
       textarea{
        border-radius: 10px;
           -moz-border-radius: 10px;
           -webkit-border-radius: 10px;
           -o-border-radius: 10px; 
       }
       button{
        border-radius: 10px;
           -moz-border-radius: 10px;
           -webkit-border-radius: 10px;
           -o-border-radius: 10px; 
       }
    </style>
</head>
<body>
<%
	session.removeAttribute("login");
	%>
    <div  style="margin-left: 30px;float: left;width: 300px;height: 50px;filter:alpha(opacity=60);-moz-opacity:0.6;opacity:0.60; margin-top: 5px; ">
        <img src="./pictures/3.jpg" style="float: left;height: 50px;width: 50px;">
        <h2 style="color: slategray;float: left;line-height: 15px;">荆楚大药房</h2>
    </div>
    <div>
        <select onchange="window.location=this.value;" style="height: 40px;width: 300px;margin-left: 500px;">
            <option>请选择</option>
            <option value="hospital.jsp">湖北中医院查询</option>
            <option value="doctor.jsp">荆楚历代名医查询</option>
            <option value="selectZy.jsp">荆楚特色药材查询</option>
        </select>
    </div>
    <div style="margin-top: 28px;">        
        <div class="navbar" style="background-color:rgb(37, 110, 74) ;height: 40px;margin-bottom: 0px;">
            <a class="navbar-brand" href="#" style="width: 250px;">首页</a>
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="#jump1">湖北风情</a>
                </li class="active">
                <li class="active">
                    <a href="#jump3">其他中药查询网站</a>
                </li>
                <li class="active">
                    <a href="#jump4">常见中药材</a>
                </li>
                <li class="active">
                    <a href="#jump2">给我留言</a>
                </li>
                <li class="active">
                    <a href="login.jsp">管理员登录</a>
                </li>
            </ul>
        </div>
        <img src="./pictures/bg.jpg" style="height:450px ;width: 1262.67px;"/>
        <div class="tuozhan">
            <div id="jump3" class="kuan1" style="height: 30px;background-color:rgb(37, 110, 74);color: snow;text-align: center;line-height: 30px;">其他中药查询网站</div>
            <div class="kuan2" style="height: 250px;border: solid 1px rgb(37, 110, 74);">
               <p class="web"><a href="http://www.cntcm.com.cn/index.htm">中国中医药网</a></p>
               <p class="web"><a href="http://kecheng.zyyspwlpt.com/">中医药网络平台</a></p>
               <p class="web"><a href="http://www.pharmnet.com.cn/tcm/">上海市中医文献馆</a></p>
               <p class="web"><a href="http://www.satcm.gov.cn/e/tool/mailbox/">国家中医药管理局</a></p>
               <p class="web"><a href="https://www.wncx.cn/mingfang/">中草药名方大全</a></p>
            </div>
        </div>
        <div style="float: right;width: 1000px;height: 500px;background-color: rgb(238, 245, 237);margin-right: 20px;margin-top: 15px;">
            <div class="fengqing" style="height: 50px;width:1000;background-color:rgb(37, 110, 74);color: snow;line-height: 50px;">
               <p id="jump1" style="font-size: 20px;float: left;margin-left: 10px;">湖北风情</p>
               <p style="font-size: 13px;float:right;margin-right: 10px;"><a href="https://hubei.cncn.com/">更多>></a></p>             
            </div>
            <div class="kuai" style="width: 320px;height: 400px;float: left;margin-top: 15px;margin-left:-80px;">
                <img class="big" src="./pictures/fengqing1.bmp" style="width:300px;height: 180px;margin-left: 10px;margin-top: 5px;"/>
                <p style="margin-top: 10px;">
                    &ensp;&ensp; &ensp;&ensp;蕲春县地处中国“中三角”中心地带，与武汉、南昌、合肥等大中城市同属“1小时城市圈”，京九铁路、沪蓉高速公路、长江黄金水道、大别山腹地公路横贯全境，交通四通八达，来往十分便利。蕲春县是世界文化名人医圣李时珍故里所在地，同时也是艾中之王蕲艾的产地。
                </p>
            </div>
            <div class="kuai" style="width: 320px;height: 400px;float: left;margin-top: 15px;margin-left:10px;">
                <img class="big" src="./pictures/fengqing2.bmp" style="width:300px;height: 180px;margin-left: 10px;margin-top: 5px;"/>
                <p style="margin-top: 10px;">
                    &ensp;&ensp; &ensp;&ensp;原始苍莽的神农架，东连荆襄，西通巴蜀，南接彝陵，北临武当，其独特的地理环境和气候条件，成为多种动植物区系成分汇含有之地，被世人誉为"天然植物园"、"天然动物园"、"植物、动物种质基因库"，同时，它更蕴藏着极丰富的中草药资源，有"中草药王国"之称。其除门类齐全的常用中药外，更有疗效奇特的民间草药，其民间草药所在地域性强，命名独特，疗效显著，药源丰富，开发新药潜力巨大。
                </p>
            </div>
            <div class="kuai" style="width: 320px;height: 400px;float: left;margin-top: 5px;margin-left:10px;">
                <img class="big" src="./pictures/fengqing3.bmp" style="width:300px;height: 180px;margin-left: 10px;margin-top: 5px;"/>
                <p style="margin-top: 10px;">
                    &ensp;&ensp; &ensp;&ensp;潜江正是我国旱半夏的主要产区。《辞海》在“潜江”这一词条内有“盛产半夏等中药材”语。所以潜江产半夏有“潜半夏”之誉。老一代的中医在处方上写“潜半夏”，犹之乎“贝露”冠之以“川”字而成“川贝”，“潜半夏”也是名闻遐迩，行销海内外的名贵中草药。
                </p>
            </div>
        </div>
        <div class="tuozhan">
            <div id="jump4" class="kuan1" style="height: 30px;background-color:rgb(37, 110, 74);color: snow;text-align: center;line-height: 30px;">常见中药材</div>
            <div class="kuan2" style="height: 250px;border: solid 1px rgb(37, 110, 74);">
               <ul style="float: left;margin-left: 5px;">
                   <li><a href="https://baike.baidu.com/item/%E5%8D%8A%E5%A4%8F/16621440#viewPageContent">半夏</a></li>
                   <li><a href="https://baike.baidu.com/item/%E8%95%B2%E8%89%BE">蕲艾</a></li>
                   <li><a href="https://baike.baidu.com/item/%E9%BB%84%E8%8A%AA/22508935#viewPageContent">黄芪</a></li>
                   <li><a href="https://baike.baidu.com/item/%E4%B8%B9%E5%8F%82/53612">丹参</a></li>
                   <li><a href="https://baike.baidu.com/item/%E4%BA%94%E5%80%8D%E5%AD%90/16211030#viewPageContent">五倍子</a></li>
                   <li><a href="https://baike.baidu.com/item/%E5%85%9A%E5%8F%82/756444#viewPageContent">党参</a></li>
                   <li><a href="https://baike.baidu.com/item/%E9%BB%84%E8%BF%9E/16177743#viewPageContent">黄连</a></li>
                   <li><a href="https://baike.baidu.com/item/%E8%BE%9B%E5%A4%B7/16561038">辛夷</a></li>
                   <li><a href="https://baike.baidu.com/item/%E6%A0%80%E5%AD%90/16175803">栀子</a></li>
                   <li><a href="https://baike.baidu.com/item/%E7%8B%AC%E6%B4%BB/682381#viewPageContent">独活</a></li>
                   <li><a href="https://baike.baidu.com/item/%E7%99%BD%E8%8A%A8">白芨</a></li>
               </ul>
               <ul style="float: left;margin-left: 5px;">
                <li><a href="https://baike.baidu.com/item/%E5%8E%9A%E6%9C%B4/405699">厚朴</a></li>
                <li><a href="https://baike.baidu.com/item/%E5%A4%A9%E5%86%AC/16630939">天冬</a></li>
                <li><a href="https://baike.baidu.com/item/%E5%A4%A9%E9%BA%BB/274538">天麻</a></li>
                <li><a href="https://baike.baidu.com/item/%E5%B0%84%E5%B9%B2/16169061#viewPageContent">射干</a></li>
                <li><a href="https://baike.baidu.com/item/%E6%9C%A8%E8%80%B3/16630475#viewPageContent">木耳</a></li>
                <li><a href="https://baike.baidu.com/item/%E6%9C%A8%E8%B4%BC/16040623#viewPageContent">木贼</a></li>
                <li><a href="https://baike.baidu.com/item/%E6%9D%9C%E4%BB%B2/22506687#viewPageContent">杜仲</a></li>
                <li><a href="https://baike.baidu.com/item/%E5%A7%9C%E9%BB%84/16267078#viewPageContent">姜黄</a></li>
                <li><a href="https://baike.baidu.com/item/%E7%81%B5%E8%8A%9D/22514446#viewPageContent">灵芝</a></li>
                <li><a href="https://baike.baidu.com/item/%E7%99%BD%E6%9C%AF">白术</a></li>
                <li><a href="https://baike.baidu.com/item/%E6%A1%94%E6%A2%97/16267873#viewPageContent">桔梗</a></li>
            </ul>
            </div>
        </div>
        <div class="feedback">
            <div style="margin-left: 15px;margin-top: 15px;">
                <p id="jump2" style="font-size: 30px;float: left;">意见箱</p>
                <img src="./pictures/意见箱.png"/ style="width: 30px;height: 30px;margin-top: 7px;">
            </div>
            <form action="./login/InsertAdv.do" method="post">
            <div style="width: 600px;height: 300px;margin-left: 200px;margin-top: 40px;">
                <textarea type="text" id="advice"  name="advice" style="width: 600px;height: 300px;font-size: 20px;"></textarea>
            </div>
            <div style="text-align: center;margin-top: 15px;"><button type="submit" style="width: 80px;height: 40px;" onclick="fun()">提交</button></div> 
            </form>          
        </div>
    </div>
</body>
<script src="./lib/heart.js"></script>
<script type="text/javascript">
function fun(){
	alert("反馈成功！谢谢您")
}
</script>
</html>