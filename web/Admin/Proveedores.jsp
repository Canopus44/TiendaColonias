<%-- 
    Document   : Cliente
    Created on : 6/10/2019, 01:22:00 PM
    Author     : canop
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/styler.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="content">
           <div class="d-flex">
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <form action="Controlador?menu=Proveedor" method="POST">
                            <div class="form-group">
                                <label>ID Proveedor : </label>
                                <input type="text" readonly="readonly" value="${provedor.getId_Proveedor()}" name="txtID" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nombre: </label>
                                <input type="text" value="${provedor.getNombre_Proveedor()}" name="txtNombreProveedor" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Ciudad : </label>
                                <input type="text" value="${provedor.getCiudad()}" name="txtCiudad" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Departamento : </label>
                                <input type="text" value="${provedor.getDepartamento()}" name="txtDepartamento" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Codigo Postal : </label>
                                <input type="text" value="${provedor.getCod_Postal()}" name="txtCodPostal" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Provincia : </label>
                                <input type="text" value="${provedor.getProvincia()}" name="txtProvincia" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Pais : </label>
                                <input type="text" value="${provedor.getPais()}" name="txtPais" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Codigo Postal : </label>
                                <input type="text" value="${provedor.getNum_telefono()}"name="txtCodPostal" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Numero Fax : </label>
                                <input type="text" value="${provedor.getNum_fax()}" name="txtNumFax" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Email : </label>
                                <input type="text" value="${provedor.getEmail()}"name="txtEmail" class="form-control">
                            </div>                          
                            <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                        </form>
                    </div> 
                </div>
            </div>                     
            <div class="col-sm-8">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-hover table-responsive">
                            <thead>
                                 <tr>
                                    <th>ID</th>
                                    <th>NOMBRE</th>
                                    <th>CIUDAD</th>
                                    <th>DEPARTAMENTO</th>
                                    <th>COD POSTAL</th>
                                    <th>PROVINCIA</th>
                                    <th>PAIS</th>
                                    <th>NUM TELEFONO</th>
                                    <th>NUM FAX</th>
                                    <th>EMAIL</th>                                                                      
                                    <th>ACCIONES</th>
                                 </tr>  
                                
                                
                            </thead>
                            <tbody> 
                                <c:forEach var="pr" items="${proveedor}">
                                    <tr>
                                        <td>${pr.getId_Proveedor()}</td>
                                        <td>${pr.getNombre_Proveedor()}</td>
                                        <td>${pr.getCiudad()}</td>
                                        <td>${pr.getDepartamento()}</td>
                                        <td>${pr.getCod_Postal()}</td>
                                        <td>${pr.getProvincia()}</td>
                                        <td>${pr.getPais()}</td>
                                        <td>${pr.getNum_telefono()}</td>
                                        <td>${pr.getNum_fax()}</td>
                                        <td>${pr.getEmail()}</td>                                        
                                        <td>
                                            <a class="btn btn-warning my-3" href="Controlador?menu=Proveedor&accion=Editar&id=${pr.getId_Proveedor()}" aria-labelledby="exampleModalCenterTitle">Editar</a>
                                            <a class="btn btn-danger" href="Controlador?menu=Proveedor&accion=Eliminar&id=${pr.getId_Proveedor()}">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>