<%-- 
    Document   : save
    Created on : 13/06/2018, 19:53:39
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
        <form action="${pageContext.request.contextPath}paciente/salva">
            <label><b>Nome:</b></label><input name="patient.name" >
            <label><b>Numero:</b></label><input  name="patient.phone" ><br>
            <label><b>Convênio:</b></label><input  name="patient.preference">
            <label><b>Objetivo:</b></label><input  name="patient.bioimpedancia">
            <button class="btn btn-default" type="submit">Salvar</button>
            <button class="btn btn-default" data-dismiss="modal">Cancelar</button>
        </form>   
    </body>
</html>
