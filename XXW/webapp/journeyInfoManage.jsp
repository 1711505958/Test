<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
  <head>
    <meta charset="utf-8">
    <title>旅游信息管理</title>
    <style type="text/css">
    body{
     margin:0px;
    }
    .d1{
      width:100%;
      height:10%;
      background:pink;
    }
    .d2{
      width:20%;
      height:80%;
      float:left;
      background:gray;
    }
    .d3{
      width:80%;
      height:80%;
      float:right;
      background:orange;
    }
    .d4{
    width:100%;
    height:10%;
    clear:both;
    background:blue;
    }
    li{
    list-style: none;
    font-size:  25px;
    margin-top: 90px;
    }
    li:hover{
       color:cyan;
    }
  
    marquee{
    font-size: 30px;
    color:cyan;
    }
    iframe {
	border: opx;
	width:100%;
	height:100%;
}
    </style>
  </head>
  <body>
  <div class="d1">
  <marquee><p> 欢迎  <span>${sessionScope.user.name }</span></p> </marquee>
  </div>
  <div class="d2">
   <ul>
   <li onclick="journeyInfoPublish()">旅游信息发布</li>
   <li onclick="journeyInfoUpdate()">旅游信息修改</li>
   </ul>
  </div>
  <div class="d3"> 
  
  <iframe  id="iframe" src="">
  </iframe> 
  </div>
  <div class="d4">
  <marquee>旅游，精彩每一天</marquee>
   </div>
   
   <script type="text/javascript">
   var iframe = document.getElementById("iframe");
     function journeyInfoUpdate(){
      iframe.src="${pageContext.request.contextPath}/journeyList.mvc";
     }
     function journeyInfoPublish(){
       iframe.src="journeyInfoPublish.jsp"
     }
     
 
   
   </script>
  </body>
</html>