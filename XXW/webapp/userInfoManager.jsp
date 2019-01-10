<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>   
<html >
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>用户信息管理</title>
    <style>
            
           
	table{
	width:100%;
	border-collapse: collapse;
        color:orange;
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
            color:orange;
        }
        a:hover{
            color:cyan;
        }
        
        html,body{
       background-repeat:no-repeat;
	   background-attachment:fixed;
	   background-size:100% 100%;
	   background-image: url(img/lv.jpg);}   
	   
    </style>
    </head>
    <body>  
       <table border="0">
           <thead>
               <tr>
                   <th>UserName</th>
                   <th>Age</th>
                   <th>Gender</th>
                   <th>Grade</th>
                   <th>PhoneNumber</th>
                   <th>删除</th>
                   <th>查看信息</th>
               </tr>
           </thead>
           <tbody>
   <c:forEach items="${sessionScope.userList}" var="user" >
  <tr>
  <td>${user.name }</td>
  <td>${user.age}</td>
  <td>${user.gender}</td>
  <td>${user.grade }</td>
  <td>${user.phoneNumber}</td>
   <td><a href="${pageContext.request.contextPath }/deleteUser.mvc?id=${user.id}">删除</a></td>
  <td><a href="${pageContext.request.contextPath }/userInfo.mvc?id=${user.id}">查看</a><td>
  </tr>
 </c:forEach>
              
           </tbody>
       </table>
    </body>
</html>
