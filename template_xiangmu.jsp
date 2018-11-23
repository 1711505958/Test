
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <base href="${pageContext.request.contextPath}/">
        <script type="text/javascript"  src="resources/js/jquery-3.2.1.min.js"></script>
        <link rel="stylesheet" href="resources/css/style.css"/>
        <link rel="stylesheet" href="resources/css/form.css"/>
        <title>Qianqian</title>
       <style>
           .a10{
               float: left;
                width: 200px;
                height: 40px;
                border-radius: 5px;
                box-shadow: 0 0 5px #ccc;
                position: relative;left: 40%;
            }
            select{
                border: none;
                outline: none;
                width: 100%;
                height: 40px;
                line-height: 40px;
                appearance: none;
                -webkit-appearance: none;
                -moz-appearance: none;
                padding-left: 60px;
            }
            .a10:after{
                content: "";
                width: 14px;
                height: 8px;
                background: url(resources/image/xiala.png) no-repeat center;
                position: absolute;
                right: 20px;
                top: 45%;
                pointer-events: none;
            }
            
            div{
                border: 1px solid;
            }
            table.hovertable {
                margin: 0 auto;
            font-family: verdana,arial,sans-serif;
            font-size:20px;
            color:#333333;
            border-width: 1px;
            border-color: #999999;
            border-collapse: collapse;
           }
            table.hovertable th {
background-color:#c3dde0;
border-width: 1px;
padding: 12px;
border-style: solid;
border-color: #a9c6c9;
}
table.hovertable tr {
background-color:#d4e3e5;
}
table.hovertable td {
border-width: 1px;
padding: 8px;
border-style: solid;
border-color: #a9c6c9;
}
.button1{
    
    position: relative;
    width: 50px;
    height: 40px;
    background-color: #a9c6c9;
    border-radius: 5px;
    outline: none;
    border: none;
    padding: 5px 10px;
    color: white;
}
.button1:hover{
    background-color:#65bbf4;
    cursor:pointer;
}
</style>
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
               <form>
                   <div style="text-align: center;">
                       </br>
                 <h2> 请选择项目：</h2>
                 <br/><br/>
                 <div class="a10">
                 <select id="ptype" name="ptype2" >
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>

                 </select>
                 </div>
                 &nbsp;&nbsp;
                 <input class="button1" type="button" id="btn"  value="查询" />
                 <br></br>
            <br></br>
            <div  style="overflow-x: hidden;overflow-y: auto;height: 450px;text-align: center">
                <table  class="hovertable"  id="ptable">
    
  </table>
            </div>
        </form>

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
                    
                          
        <script>

           $(document).ready(function () {
                $("#btn").click(function () {
                    $.ajax({
                        url: "user/getProjectByType",
                        data: {"type": $("#ptype").val()},
                        success: function (list) { 

                            $("#ptable").empty(); 
                            $("#ptable").append("<tr><th>项目编号</th><th>项目名称</th><th>项目类型</th><th>目标金额</th><th>截止时间</th><th>项目说明</th><th>项目进度</th><th>操作</th></tr>");
                            $.each(list,function(index,o){
                         var newDate = new Date();
                        newDate.setTime(o[4]);
                                var str="<tr id="+o[0]+"><td>"+o[0]+"</td><td>"
                                    +o[1]+"</td>"+"<td>"+o[2]+"</td>"+"<td>"+o[3]+"</td>"+"<td>"+newDate.toLocaleDateString()+"</td><td>"+o[5]+"</td>"+"<td>"+o[6]+"</td>"+"<td><a href=\"user/getprojectbypid?pid="+o[0]+"\">查看</a></td>"+"</tr>";
                            
                                $("#ptable").append(str);
                            });
                        },
                        error: function () {
                            alert("Ajax请求失败!!!");
                        }
                    });
                });
           })

        </script>

    </body>
</html>