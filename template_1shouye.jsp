
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/style.css"/>
        <script type="text/javascript"  src="resources/js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript"  src="resources/js/scrollAd.js"></script>
        <script type="text/javascript"  src="resources/js/newjavascript.js"></script>
        
            
        <title>Qianqian</title>
       <style>
            
        </style>
    </head>
    <body>
        <div class="container" >
            <div class="header"> 
                <div class="myinformation">
                    <a style="text-decoration: none;" href="user/template_3gerenxinxi" >我的信息</a>
                </div>
            </div>
            <div class="navigation">
               
                <div><a href="user/template_xiangmu" >&nbsp;&nbsp;项目</a></div>
                <div><a href="" >&nbsp;&nbsp;首页</a></div>
                <div><a href="" >战略信息</a></div>
                <div><a href="" >新闻资讯</a></div>
                <div><a href="" >申请加入</a></div>  
                
            </div>
            <div class="contentview">
                <div class="box">
	<ol></ol>
	<ul>
    	<li class="active1" style="left:0;z-index:11;">
            <a href=""><img src="resources/image/1.jpg" /></a></li>
        <li><a href=""><img src="resources/image/2.jpg" /></a></li>
        <li><a href=""><img src="resources/image/3.jpg" /></a></li>
        <li><a href=""><img src="resources/image/4.jpg" /></a></li>
    </ul>
</div>
                <div class="search">
                  <form>
            <input type="text" placeholder="请输入您要搜索的内容...">
            <button type="submit"></button>
                  </form>
                </div>
                <div class="view">
                    <div class="left">
                        <div style="height: 32px;width: 32px; margin-left: 45%;">
                        <img src="resources/image/sta1.jpg"  />
                        </div>
                        <h2>
                            ${ProjectCount}
                        </h2>
                        <p>
                            项目总数
                        </p>
                    </div>
                    <div class="center">
                        <div style="height: 32px;width: 32px; margin-left: 45%;">
                        <img src="resources/image/sta3.jpg" />
                        </div>
                        <h2>
                            ${AllUser}
                        </h2>
                        <p>
                            支持者
                        </p>
                    </div>
                    <div class="right">
                        <div style="height: 32px;width: 32px; margin-left: 45%;">
                        <img src="resources/image/sta2.jpg" />
                        </div>
                        <h2>
                            ${SuccessCount}
                        </h2>
                        <p>
                            达成目标
                        </p>
                    </div>
                    <div class="down">
                        数据截止至2018年06月15日，来源于钱钱网内部统计；以上信息均为qianqian平台信息
                    </div>
                    <hr style="height:1px;border:none;border-top:1px solid #ccc; width:1400px;margin: 0 auto; margin-top:5px;margin-bottom:10px;">
                </div>
                <div class="event">
                    <div class="box6" style="float: left">
                    <button class="button_1 btn_2" value=""> 融资方式</button>  
                        <button class="button_1 btn_2">热门行业</button>
                        <div class="content_1"><a style="text-align: center;text-decoration: none;" href="jiuyexinxi.xhtml">股票融资</a><br/><br/>
                       </div>
                       <div  class="content_1" style="display:none;">
                           <a style="text-align: center;text-decoration: none;" href="jiuyexinxi.xhtml">音乐</a>
                         </div> 
    
<!--                    <div style="font-size:18px;width:15%; text-align:left; ">项目分类</div>
                    <hr style="height:1px;border:none;border-top:1px solid #ccc; width:1024px;margin: 0 auto; margin-top:5px;margin-bottom:10px;">-->
                </div>
                    <div class="box7" >
                        <h2>特别推荐：</h2>
                    </div>
            </div>
            <div class="footer">
                <div style="position: relative;width: 300px;top: 20%;left: 10%;float: left;color: white;">
                    <tr>通信地址：</tr><br/><br/>
                    <tr>地址：山东省崂山区中韩街道</tr><br/>
                    <tr>青岛大学浮山公寓401—1</tr><br/>
                    <tr>邮编：266071</tr>
                    </div>
                <div style="position: relative;width: 300px; top: 20%;left: 25%;float: left;color: white;">
                    <tr>联系我们：</tr><br/><br/>
                    <tr>电话：0532-15863795641</tr><br/>
                    <tr>传真：0532-15879654564</tr><br/>
                    <tr>邮箱：1820298692@qq.com</tr>
                </div>
                <div style="position: relative;width: 300px; top: 20%;left: 35%;float: left;color: white;">
                    <tr>敬请关注微信公众号：</tr>
                </div>
                <div  class="gzh" style="position: relative;width: 100px; height: 100px;top: 35%;left: 20%;float: left;color: white;">
                </div>
                </div>
            </div>
        </div>
    </body>
</html>
