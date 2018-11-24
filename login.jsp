<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/style.css"/>
        <link rel="stylesheet" href="resources/css/login.css"/>
        <script type="text/javascript"  src="resources/js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript"  src="resources/js/scrollAd.js"></script>
        <script type="text/javascript"  src="resources/js/script.js"></script>
        
            
        <title>Qianqian</title>
       <style>
           
        </style>
    </head>
    <body>
        <div class="backgroundimage">
            <!--<div style="position: relative;top: 15%" id="title">-->  
       
       
            <div  align="center" style="width: 420px;position: relative;top: 18%;left: 35%">
        <ul class="nav">
            <li ><a class="a1" href="#div1">投资者登录</a></li>
            <li ><a class="a2" href="#div2">融资者登录</a></li>
        </ul>
</div>
            <ul class="content" style="position: relative;top: 18%;left: 35%">
            <li>
                <div id="div1">
                    <form>
                        <h2>投资者登录</h2><br/>
                        账号：<input  id="sid" required="true" requiredMessage="  *账号不得为空" value="" />
                        <message for="sid" />
                        <br /><br />
                        密码：<input id="spwd" required="true" requiredMessage="  *密码不得为空" value="" />
                        <message for="spwd" />
                        <br /><br />
                        <input id="utype1" hidden value="投资者" />
                        <button  id="loginBtn1" class="reg3" value="登录" >登录 </button>
                        <a class="reg2" href="user/register">注册</a>
                        <h5 id="h1" ></h5>
                    </h:form>
                </div>
            </li>
            <li>
                <div id="div2">
                    <form>
                        <h2>融资者登录</h2><br/>
                        账号：<input id="mid" required="true" requiredMessage="  *账号不得为空" value="" />
                        <message for="mid" />
                        <br /><br />
                        密码：<input id="mpwd" required="true" requiredMessage="  *密码不得为空" value="" />
                        <message for="mpwd" />
                        <br /><br />
                        <button  id="loginBtn2" class="reg3" value="登录"  >登录 </button>
                        <a class="reg2" href="user/register">注册</a>
                        <input id="utype2" hidden value="融资者" />
                    </form>
                    <h5 id="h2" ></h5>
                    
                </div>
                
            </li>
        </ul>
        
        <br/><br/><br/><br/>
        <outputText style="color: red" value=""/>
                         
        
      <!--</div>-->
        
        
        
        
                                <script>
            $(document).ready(function(){

                $("#loginBtn1").click(function(){

                    $.ajax({
                        url: "user/login",
                        data: {"uAccount": $("#sid").val(),"upwd": $("#spwd").val(),"type": $("#utype1").val()},
                        success: function(msg){ 
                            if(msg!=="1"){
                                                                
                             $("#h1").html(msg);
                         }
                         else {
                              window.location.href = "${pageContext.request.contextPath}/user/template_1shouye";
                             
                         }
                        },
                        error: function(){ 
 
                        }
                    });
                }); 
                 $("#loginBtn2").click(function(){

                    $.ajax({
                        url: "user/login",
                        data: {"uAccount": $("#mid").val(),"upwd": $("#mpwd").val(),"type": $("#utype2").val()},
                        success: function(msg){ 
                            if(msg!=="2"){
                                                                
                             $("#h2").html(msg);
                         }
                         else {
                             window.location.href = "${pageContext.request.contextPath}/user/template_4gerenxinxi";
                             
                         }

                        },
                        error: function(){ 

                        }
                    });
                }); 
            });
            
        </script>
       
        
        </div>
    </body>
</html>