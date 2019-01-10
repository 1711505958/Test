<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>驴行网-随处安家</title>
<style type="text/css" >
body {media="screen"
	background-size:100% 100%; 
	background-image:url("img/thumb50.jpg");
	background-repeat:no-repeat;
background-size:100% 100%;
}

a {
	text-decoration: none;
	margin-left: 70px;;
	font-size: 25px;
	color: orange;
}

p:hover {
	color: cyan;
}

a:hover {
	color: red;
}

marquee {
	font-size: 25px;
	color: orange;
}

div {
	width: 100%;
	height: 140px
}
</style>

<script>
	function invokeQQ(){
		window.open("tencent://message/?uin=869325706");
	}
</script>
</head>
<body  style=" height: 100%;width:100%" >
	<div>
		<c:if test="${sessionScope.user.grade==1}">
			<marquee>
				<scan> 管理员用户 ${sessionScope.user.name} 你好</scan>
			</marquee>
		</c:if>
		<c:if test="${sessionScope.user.grade!=1 }">
			<marquee>
				<scan> 尊敬的 ${sessionScope.user.name} 你好</scan>
			</marquee>
		</c:if>


		<c:if test="${sessionScope.user.grade==1 }">
			<a href="${pageContext.request.contextPath }/findAllUser.mvc">用户信息管理</a>
			<a href="journeyInfoManage.jsp">旅游信息管理</a>

		</c:if>
		<a href="${pageContext.request.contextPath }/personJourneyInfo.mvc">个人旅游信息</a>
		<a href="personInfoManage.jsp">个人信息管理</a> 
		<a href="${pageContext.request.contextPath }/cancel.mvc">注销</a>
		
		<c:if test="${sessionScope.user.grade!=1 }">
		<a herf="#" onclick="invokeQQ()">联系我们</a>
		</c:if>
		 
	</div>
	<marquee>
		<c:forEach items="${sessionScope.listJourney}" var="journey">
			<p>
				${journey.spName}旅游开始了，时间为${journey.spDate },地点为${journey.spAddress },具体信息为${journey.spContent }!
				<a
					href="${pageContext.request.contextPath }/join.mvc?spId=${journey.spId}">参加</a>
			</p>
		</c:forEach>

	</marquee>
<div style="text-align:center;margin:288px 0; color:yellow; font:normal 14px/24px 'MicroSoft YaHei';">
<p> 驴行网--随处安家   版权所有 翻版必究</p>
</div>


</body>
</html>
