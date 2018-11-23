<%-- 
    Document   : xiangmu
    Created on : 2018-6-17, 21:13:30
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--<link rel="stylesheet" href="resources/css/form.css"/>-->
        <style>
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
          
        </style>
    </head>
    <body>
        <div  style="overflow-x: hidden;overflow-y: auto;height: 450px;text-align: center;background: #c3dde0;border: 1px solid #003399">
            <h1 style="text-align: center; color: chocolate">我的项目</h1></br></br>
            <table class="hovertable">
    <tr>
        <th>项目编号</th>
        <th>项目名称</th>
        <th>项目类型</th>
        <th>目标金额</th>
        <th>截止时间</th>
        <th>项目说明</th>
        <th>项目进度</th>
    </tr>
        <c:forEach var="o" varStatus="vs" items="${list}">
                    <tr>
                        <td>${o[0]}</td>
                        <td>${o[1]}</td>
                        <td>${o[2]}</td>
                        <td>${o[3]}</td>
                        <td>${o[4]}</td>
                        <td>${o[5]}</td>
                        <td>${o[6]}</td>
                    </tr>
                </c:forEach>
  </table>
            </div>
    </body>
</html>
