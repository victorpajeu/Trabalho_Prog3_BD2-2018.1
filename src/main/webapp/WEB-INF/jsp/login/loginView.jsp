<%-- 
    Document   : getLoginView
    Created on : May 17, 2018, 6:54:49 PM
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <head>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
    </head>
    <!------ Include the above in your HEAD tag ---------->
    <body>
        <div class="container">    
            <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Entrar na Agenda</div>
                    </div>     
                    <div style="padding-top:30px" class="panel-body" >
                        <form id="loginform" action="${pageContext.request.contextPath}/autenticar" method="post">
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="login-username" type="text" class="form-control" name="user" value="" placeholder="usuário">                                        
                            </div>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="login-password" type="password" class="form-control" name="password" placeholder="senha">
                            </div>
                            <div style="margin-top:10px" class="form-group">
                                <div class="col-sm-12 controls">
                                    <p>${msgLoginError}</p>
                                    <button id="btn-login"  class="btn btn-success" type="submit">Entrar</button> 
                                </div>
                            </div>
                        </form>        
                    </div>                     
                </div>  
            </div>
        </div>
        <script scr="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script scr="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js" ></script>
    </body>

</html>
