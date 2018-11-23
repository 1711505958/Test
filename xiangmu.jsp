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
        <base href="${pageContext.request.contextPath}/">
        <script type="text/javascript"  src="resources/js/jquery-3.2.1.min.js"></script>
        <link rel="stylesheet" href="resources/css/style.css"/>
        <link rel="stylesheet" href="resources/css/form.css"/>
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
        <div  style="overflow-x: hidden;overflow-y: auto;height: 455px;text-align: center;background: #c3dde0">
            <h1 style="text-align: center; color: chocolate">投资项目</h1>
                <table class="hovertable" >
                    
    <tr>
        <th>项目名</th>
        <th>金额</th>
        <th>时间</th>
    </tr>
        <c:forEach var="e" varStatus="vs" items="${list}">
                    <tr>
                        <td>${e[0]}</td>
                        <td>${e[1]}</td>
                        <td>${e[2]  }</td>
                    </tr>
                </c:forEach>
                    
                </table>
            </div>
    </body>
</html>
