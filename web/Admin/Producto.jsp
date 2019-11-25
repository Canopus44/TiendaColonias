<%-- 
    Document   : Producto
    Created on : 6/10/2019, 01:21:11 PM
    Author     : canop
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>        
        <div class="d-flex">
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <form action="Controlador?menu=Producto" method="POST">
                            <div class="form-group">
                                <label>ID Producto : </label>
                                <input type="text" readonly="readonly" value="${producto.getId_Prod()}" name="txtID" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Marca</label>
                                <input type="text" value="${producto.getMarca()}" name="txtMarca" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nombre Producto</label>
                                <input type="text" value="${producto.getNombre_Prd()}" name="txtNomProducto" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Referencia</label>
                                <input type="text" value="${producto.getReferencia()}" name="txtReferencia" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Año Produccion</label>
                                <input type="text" value="${producto.getAno_Inic()}" name="txtAnoInic" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Unidades en Stock</label>
                                <input type="text" value="${producto.getStock()}" name="txtStock" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>FMLAOLFAT</label>
                                <input type="text" value="${producto.getFmlaolfat()}" name="txtFmlaolfat" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nota Salida</label>
                                <input type="text" value="${producto.getNota_Salida()}" name="txtNotaSalida" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nota Fondo</label>
                                <input type="text" value="${producto.getNota_Fondo()}" name="txtNotaFondo" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Categoria</label>
                                <input type="text" value="${producto.getCategoria()}" name="txtCategoria" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Oferta</label>
                                <input type="text" value="${producto.getOferta()}" name="txtOferta" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Genero</label>
                                <input type="text" value="${producto.getGenero()}" name="txtGenero" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Tipo</label>
                                <input type="text" value="${producto.getTipo()}" name="txtTipo" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Onzas</label>
                                <input type="text" value="${producto.getOnzas()}" name="txtOnzas" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Precio de Venta</label>
                                <input type="text" value="${producto.getPrecio_Venta()}" name="txtPrecioVenta" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Descuento</label>
                                <input type="text" value="${producto.getDescuento()}" name="txtDescuento" class="form-control">
                            </div>
                            <!--
                            <div class="form-group">
                                <label>Imagen</label>
                                <input type="file"  name="txtImagen" class="form-control input-group-btn btn-primary">
                            </div>
                            -->
                            <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                        </form>
                    </div>                         
                </div>
            </div>                     
            <div class="col-sm-8">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Marca</th>
                                    <th>Nombre</th>
                                    <th>Referencia</th>                                    
                                    <th>Año Produccion</th>
                                    <th>Stock</th>
                                    <th>Fmlaolfat</th>
                                    <th>Nota Salida</th>
                                    <th>Nota Fondo</th>
                                    <th>Categoria</th>
                                    <th>Oferta</th>
                                    <th>Genero</th>
                                    <th>Tipo</th>
                                    <th>Onzas</th>
                                    <th>Precio Venta</th>
                                    <th>Descuento</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody> 
                            <c:forEach var="prd" items="${productos}">
                                <tr>
                                    <td>${prd.getId_Prod()}</td>                                      
                                    <td>${prd.getMarca()}</td> 
                                    <td>${prd.getNombre_Prd()}</td> 
                                    <td>${prd.getReferencia()}</td> 
                                    <td>${prd.getAno_Inic()}</td>
                                    <td>${prd.getStock()}</td> 
                                    <td>${prd.getFmlaolfat()}</td> 
                                    <td>${prd.getNota_Salida()}</td> 
                                    <td>${prd.getNota_Fondo()}</td> 
                                    <td>${prd.getCategoria()}</td> 
                                    <td>${prd.getOferta()}</td> 
                                    <td>${prd.getGenero()}</td> 
                                    <td>${prd.getTipo()}</td> 
                                    <td>${prd.getOnzas()}</td> 
                                    <td>${prd.getPrecio_Venta()}</td> 
                                    <td>${prd.getDescuento()}</td> 
                                    <td>
                                        <a class="btn btn-warning my-3" href="Controlador?menu=Producto&accion=Editar&id=${prd.getId_Prod()}">Editar</a>
                                        <a class="btn btn-danger" href="Controlador?menu=Producto&accion=Eliminar&id=${prd.getId_Prod()}">Delete</a>
                                    </td>
                                </tr> 
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>      
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
