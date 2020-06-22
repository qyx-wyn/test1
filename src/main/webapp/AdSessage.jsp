<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./lib/bootstrap.css">
    <link rel="stylesheet" href="./lib/bootstrap-theme.css">
    <script src="./lib/vue.min.js"></script>
    <script src="./lib/heart.js"></script>
</head>
<body>
    <div class="panel panel-primary" >
          <div class="panel-heading">
                <h3 class="panel-title text-center">
                <a href="javascript:history.back(-1);" class="pull-left">管理员主界面</a>意见箱</h3>
          </div>
          <div class="panel-body" id="app">   
                <form action="" method="POST" role="form">
                    <table class="table table-bordered table-hover table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Advice</th>
                                <th>Status</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="(item,i) in advices" v-band:key="item.id">
                                <td>{{item.id}}</td>
                                <td>{{item.advice}}</td>
                                <td>{{item.status}}</td>
                                <td>
                                    <a href="" @click.prevent="del(item.id)">删除</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>  
                </form>   
          </div>
    </div>
    <script>
        new Vue({
           el:'#app',
           data:{
               id:'',
               advices:[
                   {id:1,advice:'功能不齐全',status:'已阅'},
                   {id:2,advice:'新增药物:某某',status:'未阅'}
               ]
           },
           methods:{
               del(id){
                   var index=this.advices.findIndex(item =>{
                        if(item.id==id){
                            return true;
                        }
                    })
                    this.advices.splice(index,1)
               }
           }
        })
    </script>
</body>
</html>