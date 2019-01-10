<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
    
    <title>用户详细信息</title>
	<meta charset="utf-8">
	
	<style type="text/css">
	table{
	width:100%;
	border-collapse: collapse;
	}
	td{
	border:1px solid cyan;
	text-align: center;
	}
	
	</style>
  </head>
  <body>
  <table>
  <tr>
  <th>UserName</th> 
  <th>UserAge</th>
  <th>Gender</th>
  <th>Grade</th>
  <th>PhoneNumber</th>
  </tr>

  <tr>
  <td>${requestScope.user.name}</td>
  <td>${requestScope.user.age}</td>
  <td>${requestScope.user.gender }</td>
  <td>${requestScope.user.grade}</td>
  <td>${requestScope.user.phoneNumber}</td>

  </tr>

  </table>
  </body>