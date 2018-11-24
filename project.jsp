<%-- 
    Document   : project
    Created on : 2018-6-1, 14:33:22
    Author     : NIIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <base href="${pageContext.request.contextPath}/">
        <script src="resources/js/jquery-3.3.1.min.js"></script>    
    </head>
    <body>
         
        <div style="text-align: center;height: 450px;text-align: center;background: #c3dde0;border: 1px solid #003399">
            <h1 style="text-align: center; color: chocolate">创建项目</h1>
            </br></br>
        <form action="user/project">
           项目名称：<input id="pname" type="text" name="pname"  ><br/><br/>
            项目类型：<input id="ptype" type="text" name="ptype"><br/><br/>
            目标金额：<input id="targetamount" type="text" name="targetamount"><br/><br/>
            截止时间：<input style="width: 170px;text-align: center" id="deadline" type="date" name="date" ><br/><br/>
            项目说明：<input id="explain" type="text" name="explain"><br/><br/>
            项目进度：<input id="progress" type="text" name="progress"><br/><br/>
            <input class="button" id="pbtn" type="submit" value="提交">
        </form>
        
        </div>
    </body>
</html>
