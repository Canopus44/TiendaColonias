<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/styler.css" rel="stylesheet">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <title>Thyrsus Shop</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10">
                <div class="card-body text-center">
                    <form class="form-sing" action="Validar" method="POST">
                        <div class="form-group">
                            <h3>Inicio de Sesión</h3>
                            <img src="images/home/logo.png" alt="120" width="170"/>
                            <br>
                            <label>Bienvenido a la Tienda</label>
                        </div>
                        <div class="form-group">
                            <label>Correo Electronico : </label>
                            <input type="text" name="txtcorreo" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Contraseña: </label>
                            <input type="password" name="txtpassword" class="form-control">
                        </div>
                         <div class="row">
                            <div class="col-md-12 col-md-offset-2">
                                <div class="card-body d-flex justify-content-center">
                                    <input type="submit" name="login" value="Ingresar" class="btn sty_bottomlog btn btn-block">
                                </div>                                
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-md-12 col-md-offset-2">
                                <div class="card-body d-flex justify-content-center">
                                     <a type="submit" name="registro" value="Registrar" class="btn sty_bottomlog btn btn-block" href="registrar.jsp">Registrar</a>
                                </div>
                            </div>
                        </div>
                        <div><a href="recordarContrasena.jsp">Recordar Contraseña</a></div>
                    </form>
                </div>
            </div>
        </div>       
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    </body>
</html>