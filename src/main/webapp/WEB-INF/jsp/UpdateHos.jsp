<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <form action="../login/UpdateHospital.do" method="POST" role="form">
            <div class="form-group form-inline">
                  <label for="hosName">医院名称</label>
                  <input type="text" class="form-control" id="hosName" name="hos_name" required="required" value="${hospital.getHos_name() }">
                  <label for="hosCity">所在城市</label>
                  <select id="city" name="city" class="form-control">
                  	<option selected="selected">${hospital.getCity() }</option>
                  	<option v-for="item in city" v-band:value="item.id">
                          {{item}}
                    </option>
                    <option id="hos_city" style="display:none;">${hospital.getCity() }</option>
                  </select>
            </div>
            <div class="form-group form-inline">
                  <label for="hosAddress">详细地址</label> 
                  <input type="text"  id="hosAddress" name="address" class="form-control" required="required" value="${hospital.getAddress() }">
                  <label for="hosWebsite">医院官网</label>
                  <input type="text" id="hosWebsite" name="website" class="form-control" value="${hospital.getWebsite() }">
            </div>
            <div class="form-group form-inline" id="shuju">
                  <label for="hosLev">医院等级</label>                                    
                   <select id="hosLev" name="lev" class="form-control">
                   	  <option selected="selected">${hospital.getLev() }</option>
                      <option v-for="item in hoslevs">{{item}}</option>
                   </select>
                  <label for="hosType">医院类型</label>
                  <select id="hosType" name="type" class="form-control">
                  	<option selected="selected">${hospital.getType() }</option>
                     <option v-for="types in hostypes">{{types}}</option>
                  </select>
            </div>
            <div class="form-group form-inline">
                  <label for="hosPostcode">邮&ensp;&ensp;&ensp;&ensp;编</label>
                  <input type="text"  id="hosPostcode" name="postcode" class="form-control" required="required" value="${hospital.getPostcode() }">
                  <label for="hosTel">医院电话</label>
                  <input type="text" id="hosTel" name="tel" class="form-control"required="required" value="${hospital.getTel() }">
            </div>
            <div class="form-group">
                  <label for="hosSpecial">医院特色</label> 
                  <textarea id="hosSpecial" name="special" class="form-control" rows="3">${hospital.getSpecial() }</textarea>
            </div>
            <div class="form-group">
                  <label for="hosRec">医院介绍</label>
                  <textarea id="hosRec" name="recommend" class="form-control" rows="3">${hospital.getRecommend() }</textarea>
            </div>
            <div class="form-inline">
                  <input class="btn btn-primary" type="submit" onclick="fun1()" value="提交修改">                 
                  <input class="btn btn-warning pull-right" type="reset" onclick="javascript:history.back(-1);" value="放弃修改">
            </div>
      </form>  
   </div>
</body>

<script type="text/javascript">
new Vue({
	el:"#city",
	data:{
		city:[
			'武汉','黄石','咸宁','随州','襄阳','宜昌','荆州','黄冈',
			'孝感','十堰','恩施','鄂州','天门','荆门','仙桃','潜江',
			'神农架'
		]
	}
});

new Vue({
    el:'#shuju',
    data:{
          hoslevs:[
                '三级特等','三级甲等','三级乙等','三级丙等',
                '二级甲等','二级乙等','二级丙等','一级甲等',
                '一级乙等','一级丙等'
          ],
          hostypes:['营利性','非营利性']
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

function fun1(){
	alert("修改成功！谢谢");
}
</script>
</html>