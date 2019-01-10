<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<html>
   <head>
         <title>旅游信息修改</title>
        <style type="text/css">      
            .fFormat {font-weight:bolder; font-size: larger;font-family:serif;color: white;}
     body{      
        background-image: orange;      
        background-size:cover;    
     }  
     div{
         width:100%;
         height: 100%;
         text-align: center;
         margin-top: 15%;
     }
     input{
          margin-top: 1ex;
          width:200px;;
          height: 4ex;
          background-color: transparent ;
         
     }
   
  
     span{
         font-size:25px;
     }
  
    </style> 
    </head>
    <body>
        <div >
           <form action="${pageContext.request.contextPath}/updateJourney.mvc?spId=${requestScope.journey.spId}" method="post">
               <span>旅游标题:</span><input type="text"   value="${requestScope.journey.spName }"  name="spName"/><br/>
               <span>旅游地点:</span><input type="text"    value="${requestScope.journey.spAddress }" name="spAddress" }"/><br/>
               <span>旅游时间:</span><input type="text"  value="${requestScope.journey.spDate }"   name="spDate"/><br/>
               <span>旅游具体信息:</span><input   value="${requestScope.journey.spContent }" name="spContent" placeholder="请输入具体信息"/><br/>
              
               <input type="submit" value="修改">
    
         </form>

        </div>
     
    </body>
</html>