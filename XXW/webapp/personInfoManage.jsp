<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<html>
   <head>
         <title>人信息管理</title>
        <style type="text/css">      
            .fFormat {font-weight:bolder; font-size: larger;font-family:serif;color: white;}
     body{      
          
           background-repeat:no-repeat;
	   background-attachment:fixed;
	   background-size:100% 100%;
	   background-image: url(img/thumb40.jpg);
     }  
     div{
         width:100%;
         height: 100%;
         text-align: center;
         margin-top: 15%;
     }
    select, input{
          margin-top: 1ex;
          width:200px;;
          height: 4ex;
          background-color: transparent ;
          color: white;
        
     }
      a{ 
         font-size: 30px; text-decoration: none; color:orange;
     }
     a:hover{
         color:cyan;
     }
  
     span{
         font-size:25px;
     }
  
    </style> 
    </head>
    <body>
        <div >
           <form action="${pageContext.request.contextPath }/userUpdate.mvc?id=${sessionScope.user.id}" method="post">
               <span>姓名:</span><input type="text"   value="${sessionScope.user.name }"  name="name"/><br/>
               <span>密码:</span><input type="text"    value="${sessionScope.user.password }" name="password" }"/><br/>
               <span>年龄:</span><input type="number"  value="${sessionScope.user.age }"  name="age"/ min="16" max="80"><br/>
               <c:if test="${sessionScope.user.grade ==2}">
               <span>等级:</span><input type="number"  value="${sessionScope.user.grade }" name="grade" min="2" max="2" /><br/>
               </c:if>
                <c:if test="${sessionScope.user.grade ==1}">
               <span>等级:</span><input type="number"  value="${sessionScope.user.grade }" name="grade" min="1" max="1" /><br/>
               </c:if>
               <span>性别:</span>  <input type="text"   value="${sessionScope.user.gender }"  name="gender"/><br/>
               <span>电话:</span><input type="text"   value="${sessionScope.user.phoneNumber}" name="phoneNumber"/><br/>
               <input type="submit" value="修改">
    
         </form>

        </div>
     
    </body>
</html>