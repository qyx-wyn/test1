<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="com.ssm.login.pojo.Doctor"%>
   <%@page import="com.ssm.login.pojo.Prescription"%>
<%@page import="java.util.ArrayList"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>管理员录入数据</title>
    <script src="./lib/vue.min.js"></script>
    <script src="./lib/jquery-3.4.1.js"></script>
    <script src="./lib/bootstrap.js"></script>
    <script src="./lib/tooltip.js"></script>
    <link rel="stylesheet" href="./lib/tooltip.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
    <link href="https://cdn.bootcdn.net/ajax/libs/jquery-confirm/3.3.4/jquery-confirm.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./lib/bootstrap.css">
    <link rel="stylesheet" href="./lib/bootstrap-theme.css">
    <script src="./lib/heart.js"></script>
    <style>
          #div{
                position: absolute;
          }
          #tih div{
            position: relative;
            left: 10%;
          }
          #ztih{
                position: relative;
                left: 10%;
          }
          #tih{
                width: 500px;
                position: relative;
                left: 30%;
          }
    </style>
</head>
<body>  
    <div class="panel panel-primary">
          <div class="panel-heading">
              <h3 class="panel-title text-center"><a href="./login/back.do" class="pull-left">管理员主界面</a>
                    管理员录入数据<a href="AdUpdate.jsp" class="pull-right">修改数据</a></h3>
          </div>
          <div class="panel-body" id="app">
            <div id="tih">
                  <div class="form-group">
                        <label id="ztih">请选择录入类型</label>
                        <div class="btn-group dropdown" >
                           <select  class="form-control" v-model="selected" @change='checks()'>
                                 <option v-for="item in selects" v-band:value="item.id">
                                       {{item.name}}
                                 </option>
                           </select> 
                        </div>
                  </div>
                  <div  v-show="show1">
                           <form action="./login/addTcm.do" method="POST" enctype="multipart/form-data">
                                <div class="form-group form-inline">
                                   <label for="zyName">药材名</label>
                                   <input type="text" class="form-control" id="zyName" name="zyName" required="required">
                                   <label for="zyPlace">产地</label>
                                   <input type="text" class="form-control" id="zyPlace" name="zyPlace" required="required">
                                 </div>
                                 <div class="form-group">
                                    <label for="zyPicture">上传中药图片</label>
                                    <input type="file" id="zyPicture" name="filename">
                                 </div>
                                 <div class="form-group">
                                    <label for="zyTaste">性味归经</label>                           
                                    <input type="text" class="form-control" id="zyTaste" name="zyTaste" required="required">
                                 </div>
                                 <div class="form-group">
                                     <label for="zyEffect">功效</label>                           
                                     <textarea  id="zyEffect" name="zyEffect" class="form-control" rows="3" required="required" ></textarea> 
                                 </div>
                                 <div class="form-group">
                                       <label for="zyPz">炮制方法</label>   
                                       <textarea id="zyPz" name="zyPz" class="form-control" rows="3" required="required"></textarea>    
                                 </div>
                                 <div class="form-group">
                                   <label for="nameYl">药名由来</label>   
                                   <textarea id="nameYl" name="nameYl" class="form-control" rows="3"></textarea>    
                                 </div>
                                 <div class="form-inline">
                                   <input class="btn btn-primary" type="submit"  value="录入">
                                   <input class="btn btn-warning pull-right" type="reset" value="清空">
                                 </div>   
                           </form>
                  </div>
                  <div  v-show="show2">
                        <form action="./login/addDoctor.do" method="POST" id="docform" name="docform1">
                              <div class="form-group form-inline">
                                 <label for="ysName">名医姓名</label>
                                 <input type="text" class="form-control" id="ysName" name="ysName"required="required">
                                  <label for="ysPlace">朝代</label>
                                 <select name="ysPlace" id="ysPlace" class="form-control">
                                       <option v-for="types in docdy">{{types}}</option>
                                 </select>
                               </div>
                               <div class="form-group">
                                   <label for="ysStory">生平</label>                           
                                   <textarea  id="ysStory" name="ysStory" class="form-control" rows="3" required="required" ></textarea> 
                               </div>
                               <div class="form-group">
                                     <label for="ysBook">所著书籍</label>   
                                     <textarea id="ysBook" name="ysBook" class="form-control" rows="3" ></textarea>    
                               </div>
                               <div class="form-inline">
                           
                                 <input class="btn btn-primary" type="button" id="confirm-btn" value="录入">
                                 <input class="btn btn-warning pull-right" type="reset" value="清空">
                               </div>   
                         </form>
                  </div>
                  <div  v-show="show3">                      
                        <form action="./login/addHos.do" method="Post" role="form">
                              <div class="form-group form-inline">
                                    <label for="hosName">医院名称</label>
                                    <input type="text" name="hos_name" class="form-control" id="hosName" required="required">
                                    <label for="hosCity">所在城市</label>
                                    <select  name="city" id="hosCity" class="form-control">
                                          <option v-for="types in hosCitys">{{types}}</option>
                                    </select>
                              </div>
                              <div class="form-group form-inline">
                                    <label for="hosAddress">详细地址</label> 
                                    <input type="text" name="address" id="hosAddress" class="form-control" required="required">
                                    <label for="hosWebsite">医院官网</label>
                                    <input type="text" name="website"id="hosWebsite" class="form-control">
                              </div>
                              <div class="form-group form-inline" id="shuju">
                                    <label for="hosLev">医院等级</label>                                    
                                    <select id="hosLev" name="lev" class="form-control">
                                          <option v-for="item in hoslevs">{{item}}</option>
                                    </select> 
                                    <label for="hosType">医院类型</label>
                                    <select id="hosType" name="type" class="form-control">
                                          <option v-for="types in hostypes">{{types}}</option>
                                    </select>     
                              </div>
                              <div class="form-group form-inline">
                                    <label for="hosPostcode">邮编</label>
                                    <input type="text" name="postcode" id="hosPostcode" class="form-control" required="required">
                                    <label for="hosTel">医院电话</label>
                                    <input type="text" name="tel" id="hosTel" class="form-control"required="required">
                              </div>
                              <div class="form-group">
                                    <label for="hosSpecial">医院特色</label> 
                                    <textarea id="hosSpecial" name="special" class="form-control" rows="3"></textarea>
                              </div>
                              <div class="form-group">
                                    <label for="hosRec">医院介绍</label>
                                    <textarea id="hosRec" name="recommend" class="form-control" rows="3"></textarea>
                              </div>
                              <div class="form-inline">
                                    <input class="btn btn-primary" type="submit" value="录入">
                                    <input class="btn btn-warning pull-right" type="reset" value="清空">
                              </div>
                        </form>  
                  </div>
            </div>       
          </div>
    </div>
    <script>
    $(document).ready(function() {
        $('#zyPlace').tooltip({
            text:"请填写地级市(十堰,孝感,宜昌,荆门,仙桃,襄阳,荆州,恩施,咸宁,麻城,黄石,天门,随州,武汉,潜江,神农架,鄂州),用逗号隔开！",
            theme:'light',
        });
    });
    $(function(){
        $("#confirm-btn").bind("click",function(){
                $.confirm({
                    title: '提示！',
                    content: '是否输入该名医所撰名方！',
                    buttons: {
                        ok: {
                            text: "是",
                            btnClass: 'btn-primary pull-left',
                            keys: ['enter'],
                            action: function(){
                        		document.docform1.action = './login/addDoctor.do?u='+"yes";
                        		$("#docform").submit();
                            }
                        },
                        cancel: {
                            text: "否",
                            btnClass: 'btn-warning',
                            keys: ['esc'],
                            action:function () {
	                            document.docform1.action = './login/addDoctor.do?u='+"no";
	                            $("#docform").submit();
                            }
                        }
                    }
                });
        })
    });
    </script>
    <script>
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
          })
          new Vue({
                el:'#app',
                data:{
                
                	 hosCitys:['十堰','孝感','宜昌','荆门','仙桃',
                          '襄阳','荆州','恩施','咸宁','麻城','黄石','天门',
                          '随州','武汉','潜江','神农架','鄂州'],
                	  docdy:['魏晋','宋','明','清','现代'],
                      isShow:false,
                      show1:false,
                      show2:false,
                      show3:false,
                      selected:'',
                      selects:[{id:1,name:'当地中药材录入'},
                               {id:1,name:'当地名医信息录入'},
                               {id:1,name:'当地中医院信息录入'}]
                },
                methods:{
                      checks(){
                          console.log(this.selected)
                          switch(this.selected){
                                case'当地中药材录入':
                                    this.show1=true;
                                    this.show2=false;
                                    this.show3=false;
                                    break;
                                case'当地名医信息录入':
                                    this.show1=false;
                                    this.show2=true;
                                    this.show3=false;
                                    break;
                                case'当地中医院信息录入':
                                    this.show3=true;
                                    this.show2=false;
                                    this.show1=false;
                                    break;
                          }
                      }
                }
          })
    </script>
</body>
</html>