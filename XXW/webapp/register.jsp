<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>

<style>
html,body{
       background-repeat:no-repeat;
	   background-attachment:fixed;
	   background-size:100% 100%;
	   background-image: url(img/lv.jpg);}   
	  select, input{
	     background-color: transparent ;
	    width:200px;
	    height:30px ;
	   }
</style>

<script type="text/javascript"  src="https://cdn.bootcss.com/jquery/2.0.0/jquery.min.js"></script>
<script>

$(document).ready(function() {
	
	$("#send_verify_number").click(function(){
		 
	
			var number=$("#number").val();
			 $.ajax({
            	 data:{"number":number},
            	 contentType:"application/json;charset=UTF-8",
                 url:"send_verify_number.mvc",
               
             });	
			 $("#verify_number_alert").html("已发送");
		
	
	 });

	
	$("#verify_number").blur(function(){
		if($("#verify_number").val() == ""){
             $("#verify_number_alert").html("验证码不为空");
  
         }
		 else{
	
			 $("#verify_number_alert").html("");
		 		var verifyNumber=$("#verify_number").val();
		 		var number=$("#number").val();
	             $.ajax({
	            	 data:{"verifyNumber":verifyNumber,"number":number},
	            	 contentType:"application/json;charset=UTF-8",
	                 url:"check_verify_number.mvc",
	             });	 		 
		 	}
			            
        
	});
});
</script>
</head>

<body topmargin=10% width=80>
<center> 
<p> ${requestScope.message }</p>
<p> ${requestScope.check }</p>
</center>
<form action="${pageContext.request.contextPath }/register.mvc"  method="post" style="text-align:center">
   姓名:<input  placeholder="请输入您的姓名" type="text"  name="name" required/><br/>
   密码:<input  placeholder="请设置您的密码" type="password" name="password" required/><br/>
   等级:<input  type="number" min=2 max=2 value="2" name="grade" /><br/>
   年龄:<input  placeholder="请输入您的年龄"  type="number" min=16 max=80 name="age" required/><br/>

   性别:<select name="gender" size="1" >
   <option value="男">男</option>
    <option value="女">女</option>
     </select><br/>


  电话:<input  placeholder="请输入您的电话"  id="number" type="type"  name="phoneNumber" required/><br/>
  验证码:<input   id="verify_number" type="text" maxlength="6"  required/>
 <input id="send_verify_number" type="button" value="获取验证码"/><span id="verify_number_alert"></span><br/>
      <input  type="submit" value="注册" />
      <input  type="reset" value="重置"/>
      

      
</body>
</html>