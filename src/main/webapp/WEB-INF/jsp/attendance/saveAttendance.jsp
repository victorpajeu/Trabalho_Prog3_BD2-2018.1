<%-- 
    Document   : saveAttendance
    Created on : 13/06/2018, 19:54:55
    Author     : VICTOR PAJEÚ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/agendamentos/salva">
            <label><b>Nome:</b></label><input id="input-modal" >
            <label><b>Numero:</b></label><input id="input-modal" ><br>
            <label><b>Convênio:</b></label><input id="input-modal">
            <label><b>Objetivo:</b></label><input id="id"
                                                  <button class="btn btn-default" type="submit">Editar</button>
            <button class="btn btn-default" data-dismiss="modal">Cancelar</button>
        </form>
    </body>
</html>
