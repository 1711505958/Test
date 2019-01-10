<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<html >
    <head>
        <title>个人旅游信息</title>
           <style>
            body{
               
               background-repeat:no-repeat;
	           background-size:100% 100%;
	           background-image: url(img/thumb90.jpg);
            }
           div{
                width:100%;
                height:610px;
                vertical-align: center;
                border: 1px solid cyan;
                font-size: 25px;
                color:cyan;
            }
            a{
             text-decoration: none;
             color:cyan;
            }
            a:hover{
            color:red;
            }
            </style>
    </head>
    <body>
       <center>  你参加的旅游：<center>
        <div>
             <marquee>
            <c:forEach  items="${sessionScope.journeyLists}" var="personJourneyInfo">
                <p>
   旅游标题为：${ personJourneyInfo.spName },时间为:${personJourneyInfo.spDate },地点为:${personJourneyInfo.spAddress },
   内容为：${personJourneyInfo.spContent },请准时参加！  <a href="${pageContext.request.contextPath }/deleteJourneyInfo.mvc?spId=${personJourneyInfo.spId }">不想参加了</a> </p>
            </c:forEach>
             </marquee>
        </div>
    </body>
</html>
