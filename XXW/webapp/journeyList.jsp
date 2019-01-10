<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>   
<html >
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>旅游信息修改</title>
    <style>
            
           
	table{
	width:100%;
	border-collapse: collapse;
       
	}
	td{
	border:1px solid cyan;
	text-align: center;
        font-size: 25px;
	}
        th{
            font-size: 30px;
        }
        a{
            text-decoration: none;
            color:black;
        }
        a:hover{
            color:cyan;
        }
    </style>
    </head>
    <body>  
       <table border="0">
           <thead>
               <tr>
                   <th>NAME</th>
                   <th>ADDRESS</th>
                   <th>DATE</th>
                   <th>CONTENT</th>
                   <th>INFOUPDATE</th>
                   <th>DELETE</th>
               </tr>
           </thead>
           <tbody>
   <c:forEach items="${sessionScope.journeyList}" var="journey" >
  <tr>
  <td>${journey.spName}</td>
  <td>${journey.spAddress}</td>
  <td>${journey.spDate}</td>
  <td>${journey.spContent}</td>
   <td><a href="${pageContext.request.contextPath }/journeyInfoUpdate.mvc?spId=${journey.spId}">修改</a></td>
    <td><a href="${pageContext.request.contextPath }/journeyInfoDelete.mvc?spId=${journey.spId}">删除</a></td>
  </tr>
 </c:forEach>
              
           </tbody>
       </table>
    </body>
</html>