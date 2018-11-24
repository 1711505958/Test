
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <base href="${pageContext.request.contextPath}/">
        <script src="resources/js/jquery-3.3.1.min.js"></script>  
        <style>
           
            .button{
                background-color: #003399;
                border-radius: 5px;
                outline: none;
                border: none;
                padding: 5px 10px;
                color: white;
            }
            .button:hover
            {
                background-color: #003366;
                cursor:pointer;
            }
        </style>
    </head>
    <body>

       
        <div style="text-align: center;height: 455px;background:#c3dde0;border: 1px solid #003399">
             <h1 style="text-align: center; color: chocolate">个人信息</h1>
             </br></br> 
                用&nbsp;&nbsp;户&nbsp;&nbsp;名：<input id=""  required="true" validatorMessage="  *账号必须是8-20位字母或数字(区分大小写)"
                                                   requiredMessage="  *账号不得为空" value="">
                <br/><br/>
                密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input id="" validatorMessage="  *密码必须是6-15位数字或字母"
                                                                    required="true" requiredMessage="  *密码不得为空" value="">
                <br/><br/>

                <form id="form" action="user/information">
                    性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：
                    <input id="ugender" type="radio" name="ugender" value="男" ${c1} >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;男
                    <input id="ugender" type="radio" name="ugender" value="女" ${c2}>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;女
                
                </br>
                地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：<input id="uaddress" name="uaddress" validatorMessage=""
                                                                    required="true" requiredMessage="  *地址不得为空" value="${userInformation.uaddress}">
                </br></br>
                真实姓名：<input id="uname" name="uname" validatorMessage=""
                            required="true" requiredMessage="  *姓名不得为空" value="${userInformation.uname}">
                </br></br>
                邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<input id="uemail" name="uemail"  validatorMessage=""
                                                                    required="true" requiredMessage="  *邮箱不得为空" value="${userInformation.uemail}">
                </br></br>
                联系方式：                                            <input id="uphone"  name="uphone" validatorMessage="" placeholder="请输入11位手机号"
                                                                        maxlength="11" onkeyup="this.value = this.value.replace(/\D/g, '')"  value="${userInformation.uphone}"/>
                </br></br>
            
                <input  class="button"type="submit" value="保存" />
            </form>

        </div>

    </body>
</html>
