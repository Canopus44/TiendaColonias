<%-- 
    Document   : registrar
    Created on : 5/10/2019, 10:12:02 PM
    Author     : canop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/styler.css" rel="stylesheet">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <title>Thyrsus Shop</title>
    </head>
    <body>
        <div class="container mt-10 col-lg-10">
            <div class="card col-sm-12">
                <div class="card-body text-center">
                    <form class="form-sing" action="Registrar" method="POST">
                        <div class="form-group">
                            <h3>Registro</h3>
                            <img src="images/home/logo.png" alt="120" width="170"/>
                            <br>
                            <label>Bienvenido a la Tienda</label>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                 <div class="form-group">
                                    <label>Nombre : </label>
                                    <input type="text" name="txtnombre" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Documento : </label>
                                    <input type="text" name="txtdocumento" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Pais : </label>
                                    <input type="text" name="txtpais" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Provincia : </label>
                                    <input type="text" name="txtdepartamento" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Correo Electronico : </label>
                                    <input type="text" name="txtcorreo" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Apellido : </label>
                                    <input type="text" name="txtapellido" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Telefono : </label>
                                    <input type="text" name="txttelefono" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Ciudad : </label>
                                    <input type="text" name="txtciudad" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Direccion : </label>
                                    <input type="text" name="txtdireccion" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Contraseña: </label>
                                    <input type="password" name="txtpassword" class="form-control">
                                </div>   
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-2">
                                <div class="card-body d-flex justify-content-around"SS>
                                    <a type="submit" name="login" value="Regresar" class="btn sty_bottomreg" href="login.jsp">Regresar</a>
                                </div>
                            </div>
                            <div class="col-md-6 col-md-offset-2">
                                <div class="card-body d-flex justify-content-around">
                                    <input type="submit" name="registrar" value="Registrar" class="btn sty_bottomreg">
                                </div>
                            </div>
                        </div> 
                   </form>                    
                </div>
            </div>
        </div>       
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    </body>
</html>
