<%-- 
    Document   : touzi
    Created on : 2018-6-20, 22:53:12
    Author     : liuxixin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
                       .button{
            text-decoration: none;
            background-color: #003399;
            border-radius: 5px;
            outline: none;
            border: none;
            padding: 5px 10px;
            color: white;
            position: relative;
}

.button:hover{
    background-color: #003366;
    cursor:pointer;
}
        </style>
         <base href="${pageContext.request.contextPath}/">
        <script type="text/javascript"  src="resources/js/jquery-3.2.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <form action="financing">
            <input id="financingMoney" type="number" name="financingMoney"><br>
            <input id="pid" type="number" value="${pid}" hidden><br>
            <input class="button" id="btn" type="button" value="提交">
            <h5 id="h5"></h5>
            <a href="user/getprojectbypid?pid=${pid}">返回</a>
        </form>
        
                                <script>
            $(document).ready(function(){

                $("#btn").click(function(){

                    $.ajax({
                        url: "user/financing",
                        data: {"pid": $("#pid").val(),"financingMoney": $("#financingMoney").val()},
                        success: function (msg) { 
                            $("#h5").html(msg);
                        },
                        error: function(){ 
                            alert("请求失败");
                        }
                    });
                }); 
            });
            
        </script>
    </body>
</html>
