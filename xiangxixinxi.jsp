<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
           
           .button{
            text-decoration: none;
            background-color: #003399;
            border-radius: 5px;
            outline: none;
            border: none;
            padding: 5px 10px;
            color: white;
            position: relative;
}

.button:hover{
    background-color: #003366;
    cursor:pointer;
}
        </style>
    </head>
    <body>
        <div class="container" >
            <div class="header"> 
                
            </div>
            <div class="navigation">
               
                <div><a href="" >项目分类</a></div>
                <div><a href="" >&nbsp;&nbsp;首页</a></div>
                <div><a href="" >战略信息</a></div>
                <div><a href="" >新闻资讯</a></div>
                <div><a href="" >申请加入</a></div>  
                
            </div>
            <div class="contentview">
                <div style="text-align: center;position: relative;left: 8%;top:10%" class="record">
                    <div class="vidio">
                        <img src="resources/image/xiangxixinxi.png" />
                    </div>
                    <div class="detail" style="border: 1px solid #003399;background: #F9F0DA">
                        <img src="resources/image/sta3.jpg" />
                        <form style="text-align: left;position: relative;top: 10%;">
                            <h2 style="color: chocolate;">目标金额</h2>${project.targetAmount}</br></br>
                        <h2 style="color: chocolate;">投资人数</h2>${AllUser}</br></br>
                        <h2 style="color: chocolate;">已投金额</h2>${AllMoney}</br></br>
                        <h2 style="color: chocolate;">截止时间</h2>${project.deadline}</br></br>
                        <a class="button" href="user/totouzi?pid=${pid}">投资</a>
                        </form>
                        
                    </div>
                        
                    <div class="discuss" >
                        <div style="width: 100px;height: 25px;background-color: #ccc;border: 1px solid #003399;"><a>评论</a></div>
                        <div style="width: 700px;height: 50px;text-align: left;position: relative;top: 8px;">
                            <input id="content" style="border: 2px solid #797979; border-radius: 5px;  width: 300px;height: 30px;position: relative;" type="text" placeholder="评论些什么...">
                            <input class="button" type="button" id="btn" style="width: 40px;height: 30px;" value="发表" />
                            <input id="pid" type="number" value="${pid}" hidden />
                        </div>
                        <div style="border: 1px solid #003399;background: #ccc">
                        <table id="ctable">
    <tr>
        <th>用户名</th>
        <th></th>
        <th>评论</th>
    </tr>
    
        <c:forEach var="e" varStatus="vs" items="${commemt}">
            <tr style="background: #666666;font-size: 20px;">
                        <td>${e[0]}</td>
                        <td></td>
                        <td>${e[1]}</td>
                    </tr>
                </c:forEach>
  </table>
                        </div>
                        <script>
            $(document).ready(function(){

                $("#btn").click(function(){

                    $.ajax({
                        url: "user/comment",
                        data: {"pid": $("#pid").val(),"content": $("#content").val()},
                        success: function (list) { 
                            $("#ctable").empty(); 
                            $("#ctable").append(" <tr><th>用户名</th><th>评论</th></tr>");
                            $.each(list,function(index,c){
                              var str="<tr><td>"+c[0]+"</td><td>"+c[1]+"</td>"+"</tr>";
                                $("#ctable").append(str);
                            });
                        },
                        error: function(){ 
                            alert("请求失败");
                        }
                    });
                }); 
            });
            
        </script>
                    
                    
                        <div></div>
                    </div>
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
    </body>
</html>