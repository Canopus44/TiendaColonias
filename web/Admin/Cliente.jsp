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
            <div class="row">
                <div class="col-sm-2 my-3 d-flex justify-content-end">
                    <input type="button" class="btn sty_bottomlog" data-toggle="modal" data-target="#editmodal" value="Nuevo">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <table class="table table-hover table-responsive">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>DOCUMENTO</th>
                                <th>NOMBRE</th>
                                <th>APELLIDO</th>
                                <th>EMAIL</th>
                                <th>TELEFONO</th>
                                <th>DIRECCION</th>
                                <th>COD POSTAL</th>
                                <th>CIUDAD</th>
                                <th>DEPARTAMENTO</th>
                                <th>PAIS</th>   
                                <th>ROL</th>                                   
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody> 
                            <c:forEach var="cl" items="${clientes}">
                                <tr>
                                    <td>${cl.getId_Cl()}</td>
                                    <td>${cl.getNro_Doc()}</td>
                                    <td>${cl.getNombre()}</td>
                                    <td>${cl.getApellido()}</td>
                                    <td>${cl.getEmail()}</td>
                                    <td>${cl.getTelefono()}</td>
                                    <td>${cl.getDirecc()}</td>
                                    <td>${cl.getCod_Postal()}</td>
                                    <td>${cl.getCiudad()}</td>
                                    <td>${cl.getDepto()}</td>
                                    <td>${cl.getPais()}</td>
                                    <td>${cl.getRol()}</td>
                                    
                                    <td>
                                        <a class="btn btn-warning my-3" href="Controlador?menu=Cliente&accion=Editar&id=${cl.getId_Cl()}" aria-labelledby="exampleModalCenterTitle">Editar</a>
                                        <a class="btn btn-danger" href="Controlador?menu=Cliente&accion=Eliminar&id=${cl.getId_Cl()}">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>                    
           
            <!-- Modal -->
            <div class="modal fade bd-example-modal-lg" id="editmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">CLIENTES</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="Controlador?menu=Cliente" method="POST">
                                <div class="d-flex">
                                    <div class="col-sm-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="row">
                                                     <div class="col-sm-12">
                                                         <div class="row">
                                                             <div class="col-sm-4">
                                                                 <div class="form-group">
                                                                     <label>Nombre : </label>
                                                                     <input type="text"value="${cliente.getNombre()}" name="txtnombre" class="form-control">
                                                                 </div>
                                                             </div>
                                                             <div class="col-sm-4">
                                                                 <div class="form-group">
                                                                     <label>Apellido : </label>
                                                                     <input type="text"value="${cliente.getApellido()}" name="txtapellido" class="form-control">
                                                                 </div>
                                                             </div>
                                                             <div class="col-sm-4">
                                                                 <div class="form-group">
                                                                     <label>Documento : </label>
                                                                     <input type="text" value="${cliente.getNro_Doc()}" name="txtdocumento" class="form-control">
                                                                 </div>

                                                             </div>
                                                         </div>
                                                     </div>
                                                     <div class="col-sm-12">
                                                         <div class="row">
                                                             <div class="col-sm-4">
                                                                  <div class="form-group">
                                                                     <label>Pais : </label>
                                                                     <input type="text" value="${cliente.getPais()}"name="txtpais" class="form-control">
                                                                 </div>
                                                             </div>
                                                             <div class="col-sm-4">
                                                                 <div class="form-group">
                                                                     <label>Ciudad : </label>
                                                                     <input type="text"value="${cliente.getCiudad()}" name="txtciudad" class="form-control">
                                                                 </div>
                                                             </div>
                                                             <div class="col-sm-4">
                                                                 <div class="form-group">
                                                                     <label>Provincia : </label>
                                                                     <input type="text" value="${cliente.getDepto()}"name="txtdepartamento" class="form-control">
                                                                 </div>
                                                             </div>
                                                         </div>
                                                     </div>
                                                     <div class="col-sm-12">
                                                         <div class="row">
                                                             <div class="col-sm-4">         
                                                                  <div class="form-group">
                                                                     <label>Direccion : </label>
                                                                     <input type="text"value="${cliente.getDirecc()}" name="txtdireccion" class="form-control">
                                                                 </div>
                                                             </div>
                                                             <div class="col-sm-4">
                                                                 <div class="form-group">
                                                                     <label>Codigo Postal : </label>
                                                                     <input type="text" value="${cliente.getCod_Postal()}"name="txtcodpostal" class="form-control">
                                                                 </div>
                                                             </div>
                                                             <div class="col-sm-4">
                                                                 <div class="form-group">
                                                                     <label>Telefono : </label>
                                                                     <input type="text"value="${cliente.getTelefono()}" name="txttelefono" class="form-control">
                                                                 </div>
                                                             </div>
                                                         </div>
                                                     </div>
                                                     <div class="col-sm-12">
                                                         <div class="row">
                                                             <div class="col-sm-4">      
                                                                 <div class="form-group">
                                                                     <label>Correo Electronico : </label>
                                                                     <input type="text"value="${cliente.getEmail()}" name="txtcorreo" class="form-control">
                                                                 </div>
                                                             </div>
                                                             <div class="col-sm-4">     
                                                                 <div class="form-group">
                                                                     <label>Contraseña: </label>
                                                                     <input type="password" name="txtpassword" class="form-control">
                                                                 </div>
                                                             </div>
                                                         </div>
                                                     </div>
                                                </div>                         
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>