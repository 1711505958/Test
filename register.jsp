<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/style.css"/>
        <link rel="stylesheet" href="resources/css/register.css"/>
        <script type="text/javascript"  src="resources/js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript"  src="resources/js/scrollAd.js"></script>
        <script type="text/javascript"  src="resources/js/script.js"></script>

            
        <title>Qianqian</title>
       <style>
            div{
                border: 1px solid;
            }
        </style>
    </head>
    <body>
        <div class="backgroundimage">
        <!--<div id="re" align="center">-->
        <div class="register" style="height: 350px;width: 420px;text-align: center;position:relative;top: 18%;left: 35%;background-color: #ccc">
            </br>
            </br>
            <h2>注册成为新用户</h2>
            <br/>
                <form>
                    用&nbsp;&nbsp;户&nbsp;&nbsp;名：<input id="uaccount"  required="true" validatorMessage="  *账号必须是8-20位字母或数字(区分大小写)"
                                                     requiredMessage="  *账号不得为空" value="">
                <!--<validateRegex pattern="[A-Za-z0-9]{8,20}"/>-->
                <!--<message for="sid" style="color: red"/><output id="sidmes" style="color: red" value=""/>-->
            <br/><br/>
            密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input id="upwd" validatorMessage="  *密码必须是6-15位数字或字母"
                                                                        required="true" requiredMessage="  *密码不得为空" value="">
            <!--<validateRegex pattern="[A-Za-z0-9]{6,15}"/>-->
               <br/><br/>
               确认密码：<input id="rpwd" validatorMessage="  *密码必须是6-15位数字或字母"
                                                                        required="true" requiredMessage="  *密码不得为空" value="">
               <br/><br/>
<!--            <form>
                性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：
                <input type="radio" name="radio" value="男">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;男
                <input type="radio" name="radio" value="女">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;女
            </form>
               </br>
               地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：<input id="" validatorMessage=""
                                                                        required="true" requiredMessage="  *地址不得为空" value="">
               </br></br>
                真实姓名：<input id="" validatorMessage=""
                                                                        required="true" requiredMessage="  *姓名不得为空" value="">
                </br></br>
                邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<input id="" validatorMessage=""
                                                                        required="true" requiredMessage="  *邮箱不得为空" value="">
               </br></br>
               联系方式：                                            <input id="" validatorMessage="" placeholder="请输入11位手机号"
                                                                       maxlength="11" onkeyup="this.value=this.value.replace(/\D/g,'')" />
               </br></br>-->
               <form>
                注册类型：
                <input id="utype" type="radio" name="radiotype" value="投资者">&nbsp;&nbsp;&nbsp;投资者
                <input id="utype" type="radio" name="radiotype" value="融资者">&nbsp;&nbsp;&nbsp;融资者
            </form>
</br>
               <input class="reg2" id="register" type="button" value="注册">
                </form>
                <h5 id="h5"></h5>
            <!--</div>-->
        </div>
<script>
            $(document).ready(function(){

                $("#register").click(function(){
                    
                    $.ajax({
                        url: "user/register",
                        type: 'POST',
                        data: {"uaccount": $("#uaccount").val(),
                            "upwd": $("#upwd").val(),
                            "utype": $("#utype").val(),
                            "rpwd": $("#rpwd").val(),
                        },
                        
                        success: function(msg){ 
                            if(msg!=="1"){
                            $("#h5").html(msg);
                        }
                        else{
                             window.location.href = "${pageContext.request.contextPath}/login";
                         }
                        },
                        error: function(){
                            alert("Ajax请求失败！！！");
                        } 
                    });
                }); 
            });
            
        </script>
        </div>
    </body>
</html>