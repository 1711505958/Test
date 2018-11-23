
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <base href="${pageContext.request.contextPath}/">
                <script type="text/javascript"  src="resources/js/jquery-3.2.1.min.js"></script>
        <link rel="stylesheet" href="resources/css/style.css"/>
        <title>Qianqian</title>
       <style>
          .information
{
    background-color: #ccc;
    display: inline;
    float: left;
    width: 15%;
    height: 455px;
    
}
        </style>
    </head>
    <body>
        <div class="container" >
            <div class="header"> 
                
            </div>
                        <div class="navigation">
               
                <div><a href="user/template_xiangmu" >项目分类</a></div>
                <div><a href="" >&nbsp;&nbsp;首页</a></div>
                <div><a href="" >战略信息</a></div>
                <div><a href="" >新闻资讯</a></div>
                <div><a href="" >申请加入</a></div>  
                
            </div>

            <div class="contentview">
                <div class="information">
                     <br/> <br/> <br/> <br/>
                    <div style="border: 1px solid #666666;text-align: center"><a id="a1">个人信息</a></div>
                    <div style="border: 1px solid #666666;text-align: center"><a id="a2" >我的项目</a></div>
                    <div style="border: 1px solid #666666;text-align: center"><a id="a3" >资金</a></div>
                    <div style="border: 1px solid #666666;text-align: center"><a id="a4" >创建项目</a></div>
                </div>
                <div id="div" class="show">
                     
                </div>
            </div>
            <div class="footer">
                <div style="position: relative;width: 300px;top: 20%;left: 10%;float: left;color: white;">
                    <tr>通信地址：</tr><br/><br/>
                    <tr>地址：山东省崂山区中韩街道</tr><br/>
                    <tr>青岛大学浮山公寓401—1</tr><br/>
                    <tr>邮编：266071</tr>
                    </div>
                <div style="position: relative;width: 300px; top: 20%;left: 25%;float: left;color: white;">
                    <tr>联系我们：</tr><br/><br/>
                    <tr>电话：0532-15863795641</tr><br/>
                    <tr>传真：0532-15879654564</tr><br/>
                    <tr>邮箱：1820298692@qq.com</tr>
                </div>
                <div style="position: relative;width: 300px; top: 20%;left: 35%;float: left;color: white;">
                    <tr>敬请关注微信公众号：</tr>
                </div>
                <div  class="gzh" style="position: relative;width: 100px; height: 100px;top: 35%;left: 20%;float: left;color: white;">
                </div>
                </div>
            </div>
        </div>
        
                                                <script>
            $(document).ready(function(){

      
                 $("#a1").click(function(){

                    $.ajax({
                        url: "user/gerenxinxi1",
                        success: function(msg){                   
                             $("#div").html(msg);
                        },
                        error: function(){ 

                        }
                    });
                }); 
                                 $("#a2").click(function(){

                    $.ajax({
                        url: "user/getprojectlistbyuid",
                        success: function(msg){                   
                             $("#div").html(msg);
                        },
                        error: function(){ 

                        }
                    });
                }); 
                                 $("#a3").click(function(){

                    $.ajax({
                        url: "user/zijin",
                        success: function(msg){                   
                             $("#div").html(msg);
                        },
                        error: function(){ 

                        }
                    });
                }); 
                                 $("#a4").click(function(){

                    $.ajax({
                        url: "user/toproject",
                        success: function(msg){                   
                             $("#div").html(msg);
                        },
                        error: function(){ 

                        }
                    });
                }); 
            });
            
        </script>
    </body>
</html>