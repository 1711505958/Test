<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>驴行网</title>
<style type="text/css" media="screen">
body{
background-repeat:no-repeat;
	background-size:100% 100%;
	background-image: "webapp/img/lv.jpg";
	  }
html, body {
width: 100%;
}

ul li {
list-style: none;
}
*{margin:0;padding:0;}
#box {
width: 1200px;
margin: 20px auto;
}
.slide {
height: 500px;
position: relative;
}
.slide ul {
height: 100%;
}
.slide li {
position: absolute;
left:200px;
top:0;
}
.slide li img{
width: 100%;
}
.arraw {
opacity: 0;
}
.arraw a {
width: 70px;
height: 110px;
display: block;
position: absolute;
top: 50%;
margin-top: -55px;
z-index: 999;
}
.next {
background: url(image/right.png) no-repeat;
right: -10px;
/*opacity: .5;*/
/*filter: alpha(opacity=50);*/
}
.prev {
background: url(image/left.png) no-repeat;
left: -10px;
}

div{
 
}
</style>



</head>

<body background="img/lv.jpg" >
<div id="box">
<div class="slide">
<ul>
 <li><a href="#"><img src="img/thumb50.jpg" alt=""></a></li>
 <li><a href="#"><img src="img/thumb70.jpg" alt=""></a></li>
 <li><a href="#"><img src="img/thumb90.jpg" alt=""></a></li>
 <li><a href="#"><img src="img/thumb30.jpg" alt=""></a></li>
 <li><a href="#"><img src="img/thumb40.jpg" alt=""></a></li>
</ul>
<div class="arraw">
  <a href="javascript:;" class="next"></a>
  <a href="javascript:;" class='prev'></a>
</div>
</div>
</div>
<script>
var box = document.querySelector('#box');
var slide = document.querySelector('.slide');
var arraw = document.querySelector('.arraw');
var lis = document.querySelectorAll('li');
var json = [  //  包含了5张图片里面所有的样式
	{   //  1
		width:400,
		top:20,
		left:100,
		opacity:20,
		z:2,
		id:1
	},
	{  // 2
		width:600,
		top:70,
		left:50,
		opacity:60,
		z:3,
		id:2
	},
	{   // 3
		width:800,
		top:100,
		left:200,
		opacity:100,
		z:4,
		id:3
	},
	{  // 4
		width:600,
		top:70,
		left:550,
		opacity:60,
		z:3,
		id:4
	},
	{   //5
		width:400,
		top:20,
		left:650,
		opacity:20,
		z:2,
		id:5
	}
];
box.addEventListener('mouseover', function(){
// console.log('aaa')
animate(arraw, {opacity: 100});
});
box.addEventListener('mouseout', function(){
// console.log('aaa')
animate(arraw, {opacity: 0});
});

var next = document.querySelector('.next');
var prev = document.querySelector('.prev');
var timer = null;
var flag = true;
next.addEventListener('click', function(){
// alert('next');
// console.log(json);
// console.log('================')
clearInterval(timer);
if(flag == true){
move(true);
flag = false;
}
//console.log(json);
});
next.addEventListener('mouseleave', function(){

clearInterval(timer);
//alert('next')
run();
//console.log(json);

});
prev.addEventListener('click', function(){
clearInterval(timer);
// alert('prev')
if(flag == true){
move(false);
flag = false;
}
});
prev.addEventListener('mouseleave', function(){
// alert('prev')
// clearInterva(timer);
run();
});

move();
run();
function run(){
clearInterval(timer);
timer = setInterval(function(){
// console.log('run')
if(flag == true){
flag = false;
move(true);
}
// console.log(json)
},500);
}

function move(x){
if(x != undefined){
if(x){
json.push(json.shift());
}else{
  json.unshift(json.pop());
};
};

for(var i = 0; i<json.length; i++){
animate(lis[i],{
  width: json[i].width,
  top: json[i].top,
  left: json[i].left,
  opacity: json[i].opacity,
  zIndex: json[i].z
},function(){flag = true;})
};
}

function animate(obj, json, callback){
// 先停止定时器
  clearInterval(obj.timers);
  obj.timers = setInterval(function(){
	var stoped = true;
	// console.log('sss')
	for(var k in json){
	 // var leader = parseInt(getStyle(obj, k));
	 var leader = 0;
	 if(k == 'opacity'){
	  leader = Math.round(getStyle(obj, k)*100) || 100;
	 }else {
	  // console.log(json[k]);
	  leader = parseInt(getStyle(obj, k)) || 0;
	 };
//         console.log(leader);
	 // json[k]是目标位置
	 var step = (json[k]-leader)/10;
	 step = step > 0? Math.ceil(step) : Math.floor(step);
	 leader = leader + step;
	 if(k == 'opacity'){
	  obj.style[k] = leader/100;
	  obj.style['filter'] = 'alpha(opacity='+ leader +')';
	 }else if(k == 'zIndex'){
	  obj.style['zIndex'] = json[k];
		 console.log(666);
	 }else{
	  obj.style[k] = leader + "px";
	 }
	 if(leader != json[k]){
	  stoped = false;
	  }
	 };
	 if(stoped){
		// console.log('stop')
		clearInterval(obj.timers);
		callback && callback();
	  };
  },50);
};
//获取属性值
function getStyle(obj, attr){
  if(obj.currentStyle){
	return obj.currentStyle[attr];
  }else{
	return window.getComputedStyle(obj, null)[attr];
  };
};
</script>

  <div style="text-align:center;margin:100px 0; font:normal 14px/24px 'MicroSoft YaHei';">
  <p style="color:red">${requestScope.msg}</p>
 <form  action="${pageContext.request.contextPath }/login.mvc" method="post">
   <span>姓名：</span><input type="text" placeholder="请输入您的姓名"  name="name" /><br/>
   <span>密码：</span><input type="password" placeholder="请输入您的密码" name="password" /><br/>
     <input style="font-size:18px" type="submit" value="登录"/>
 </form>
 
 <a style="color:red;font-size:18px" href="register.jsp">无账号？点击注册！</a>
 </div>
</body>
</html>