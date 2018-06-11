<%-- 
    Document   : index
    Created on : May 9, 2018, 9:08:51 PM
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .col-md-4{
                left: 200px;
            }
        </style>
        <title>Agenda Clinica</title>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

    </head>
    <body >
        <a href="${pageContext.request.contextPath}/"><button class="btn btn-lg btn-info">${sudo}</button></a>
       
        <h1>Lista do dia</h1>
        <div class="container">
            <div class="row">

                <div class="col-md-4">
                    <a id="busca" href="${pageContext.request.contextPath}/usuario/buscar" type="button" class="btn btn-info">Buscar Consulta &#128269;</a>
                </div>

                <div class="col-md-12">
                    <h1>Manhã</h1>
                    <div class="table-responsive">

                        <table id="mytable" class="table table-bordred table-striped">

                            <thead>
                            <th></th>
                            <th>Nome Completo</th>                       
                            <th>Numero</th>
                            <th>Convênio</th>
                            <th>Objetivo</th>
                            <th>Edit</th>
                            <th>Delete</th>
                            </thead>
                            <tbody>

                                <tr>
                                    <td><b>7:30</b></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>-----------</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"  ><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>7:45</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>8:00</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>8:15</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>8:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>8:45</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>9:00</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>9:15</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>

                                <tr>
                                    <td><b>9:45</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>


                                <tr>
                                    <td><b>10:00</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>



                                <tr>
                                    <td><b>10:15:</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalCastrar" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>


                                <tr>
                                    <td><b>10:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                            </tbody>

                        </table>
                    </div>

                </div>
            </div>
        </div>


        <div class="container">
            <div class="row">

                <h1>Tarde</h1>
                <div class="col-md-12">
                    <div class="table-responsive">

                        <table id="mytable" class="table table-bordred table-striped">

                            <thead>

                            <th></th>
                            <th>Nome Completo</th>                       
                            <th>Numero</th>
                            <th>Convênio</th>
                            <th>Objetivo</th>
                            <th>Edit</th>
                            <th>Delete</th>
                            </thead>
                            <tbody>

                                <tr>
                                    <td><b>7:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><a href="${pageContext.request.contextPath}/editar"><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance"  class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>

                                <tr>
                                    <td><b>7:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><a href="${pageContext.request.contextPath}/editar"><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance"  class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>


                                <tr>
                                    <td><b>7:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><a href="${pageContext.request.contextPath}/editar"><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance"  class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>



                                <tr>
                                    <td><b>7:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><a href="${pageContext.request.contextPath}/editar"><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>


                                <tr>
                                    <td><b>7:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><a href="${pageContext.request.contextPath}/editar"><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>7:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><a href="${pageContext.request.contextPath}/editar"><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>7:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><a href="${pageContext.request.contextPath}/editar"><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>7:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><a href="${pageContext.request.contextPath}/editar"><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>7:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><a href="${pageContext.request.contextPath}/editar"><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>7:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><a href="${pageContext.request.contextPath}/editar"><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>7:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><a href="${pageContext.request.contextPath}/editar"><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                                <tr>
                                    <td><b>7:30</b></td>
                                    <td>Mohsin</td>
                                    <td>+923335586757</td>
                                    <td>-----------</td>
                                    <td>-----------</td>
                                    <td><a href="${pageContext.request.contextPath}/editar"><p data-placement="top" data-toggle="tooltip" title="Editar"><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></a></td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Deletar"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                    <td><button data-target="#modalAttendance" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-plus"></span>Add. Paciente</button> </td>
                                </tr>
                            </tbody>

                        </table>
                    </div>

                </div>
            </div>
        </div>


        <!--MODAL PANEL-->
        <!-- Modal -->
        <div id="modalAttendance" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <form>
                        <div class="modal-header"> 
                            <h4 class="modal-title">Edita Paciente</h4>
                        </div>
                        <div class="modal-body">
                            <label><b>Nome:</b></label><input id="input-modal" >
                            <label><b>Numero:</b></label><input id="input-modal" ><br>
                            <label><b>Convênio:</b></label><input id="input-modal">
                            <label><b>Objetivo:</b></label><input id="id"
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-default" type="submit">Editar</button>
                            <button class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
        
        <div id="modalCastrar" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <form>
                        <div class="modal-header"> 
                            <h4 class="modal-title">Edita Paciente</h4>
                        </div>
                        <div class="modal-body">
                            <label><b>Nome:</b></label><input id="input-modal" >
                            <label><b>Numero:</b></label><input id="input-modal" ><br>
                            <label><b>Convênio:</b></label><input id="input-modal">
                            <label><b>Objetivo:</b></label><input id="id"
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-default" type="submit">Editar</button>
                            <button class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
        
    </body>
    <script>
        function validaExcluir(){
            var bool = console("Deseja Excluir ?");
        }
    </script>
</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>