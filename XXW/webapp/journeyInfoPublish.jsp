<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
  <head>
    <title>添加旅游信息</title>
   <meta charset="utf-8">
   <style type="text/css">
   P{
    font-size: 30px;
    color:cyan;
   }
  td{
   padding:10px;
  }
  
  input{
  width:10em;
  padding:5px;
  background:fuchsia;
  }
  textarea {
  font-size:20px;
  width :700px;
  height:70px;
  background: pink;
}

#input{
 background:green;
}
   </style>
  </head>
  
  <body>
   <marquee><p>添加旅游信息</p></marquee> 
    <center>
<form action="${pageContext.request.contextPath }/journeyInfoPublish.mvc" method="post">
<table>
<tr>
<td>旅游标题：</td>
<td><input type="text" name="spName" placeholder="请输入旅游标题"></td>
</tr>

<tr>
<td>旅游地点:</td>
<td><input type="text" name="spAddress" placeholder="请输入旅游地点"></td>
</tr>


<tr>
<td>旅游时间:</td>
<td><input type="date" name="spDate" placeholder="请输入旅游时间"></td>
</tr>

<tr>
<td>旅游信息:</td>
<td><textarea  name="spContent" placeholder="请输入具体信息"></textarea></td>
</tr>


<tr>
<td> <input id="input" type="submit"value="添加"></td>
</tr>

</table>

</form>

</center>
  </body>
</html>
