<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Carrito| THYRSUS</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="stylesheet" href="css/styler.css"">
</head><!--/head-->

<body>
    <header id="header"><!--header-->
	<div class="header_top"><!--header_top-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="contactinfo">
                            <ul class="nav nav-pills">
                                <li><a href=""><i class="fa fa-phone"></i> + 57 319 XXX XX XX</a></li>
                                <li><a href=""><i class="fa fa-envelope"></i> info@elpoli.edu.co</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="social-icons pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                                <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                                <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
	</div><!--/header_top-->
		
        <div class="header-middle"><!--header-middle-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="logo pull-left">
                            <a href="index.html"><img src="images/home/logo.png" alt="" /></a>
                        </div>
                        <div class="btn-group pull-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                    Colombia
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a href="">Canada</a></li>
                                    <li><a href="">USA</a></li>
                                </ul>
                            </div>
                            <div class="btn-group">
                                <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                    PESOL COL
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a href="">Canadian Dollar</a></li>
                                    <li><a href="">Dollar</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="shop-menu pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href=""><i class="fa fa-user"></i> Cuenta</a></li>
                                <li><a href=""><i class="fa fa-star"></i> Lista de deseos</a></li>
                                <li><a href="checkout.jsp"><i class="fa fa-crosshairs"></i> Salida</a></li>
                                <li><a href="Controlador?menu=ShopCart" class="active"><i class="fa fa-shopping-cart"></i> Carrito</a></li>
                                <li><a href="login.jsp"><i class="fa fa-lock"></i> Ingreso</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header-middle-->
	
        <div class="header-bottom"><!--header-bottom-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                </button>
                        </div>
                        <div class="mainmenu pull-left">
                            <ul class="nav navbar-nav collapse navbar-collapse">
                                <li><a href="index.html">Home</a></li>
                                <li class="dropdown"><a href="#">Tienda<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.jsp">Products</a></li>
                                        <li><a href="product-details.jsp">Detalle de productos</a></li> 
                                        <li><a href="checkout.jsp">Salida</a></li> 
                                        <li><a href="cart.jsp" class="active">Carrito</a></li> 
                                        <li><a href="login.jsp">Ingreso</a></li> 
                                    </ul>
                                </li> 
                                <li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="blog.html">Blog List</a></li>
                                                                                <li><a href="blog-single.html">Blog Single</a></li>
                                    </ul>
                                </li> 
                                <li><a href="404.html">404</a></li>
                                <li><a href="contact-us.html">Contacto</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="search_box pull-right">
                            <input type="text" placeholder="Búsqueda"/>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header-bottom-->
    </header><!--/header-->

    <section id="cart_items">
        <div class="container">
            <div class="breadcrumbs">
                <ol class="breadcrumb">
                  <li><a href="#">Home</a></li>
                  <li class="active">Carrito de compras</li>
                </ol>
            </div>
            <div class="row">
                <div class="col-sm-9">
                    <table class="table table-hover table-responsive">
                        <thead class="backhead">
                            <tr>
                                <th>Item</th>
                                <th>Producto</th>                                
                                <th>Precio</th>
                                <th>Eliminar</th>
                                <th></th>
                                
                                
                            </tr>
                        </thead>
                        <tbody> 
                            <%
                            double totalPagar=0;
                            %>
                            <c:forEach var="prod" items="${shoplist}">
                                <tr>
                                    <td >
                                        <img src="${prod.getbd_imgprod()}" alt="" width="130" height="135">
                                    </td>                                   
                                    <td >
                                        <h4>${prod.getbd_nombreprod()}</h4>
                                    </td>                                    
                                    <td >
                                        <p class="cart_total_price">${prod.getbd_precioprod()}</p>
                                    </td>
                                    <td class="">
                                        <a href="Controlador?menu=ShopCart&accion=Eliminar&id=${prod.getbd_idcarrito()}"><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>
                           
                            </c:forEach>
                        </tbody>
                    </table>
                    </div>
             
                <div class="col-sm-3">
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-hover table-responsive ">
                                <thead class="backhead">
                                    <tr>
                                        <th>Item</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>                                     
                                    <tr>
                                        <td >
                                            Costo de envío
                                        </td>
                                        <td >
                                            $59
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Total
                                        </td>
                                        <td >
                                            ${totalpagar}
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <a class="btn btn-default update" onclick="print()" href="">Pagar</a>
                            <a class="btn check_out" href="Controlador?menu=Catalogo">Ir al catalogo</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> <!--/#cart_items-->
    <br><br>
	

	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2><span>THYRSUS</span></h2>
							<p>Somos una compañía comprometida con la clase y la elegancia</p>
						</div>
					</div>
					<!--<div class="col-sm-7">
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe1.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Circle of Hands</p>
								<h2>24 DEC 2014</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe2.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Circle of Hands</p>
								<h2>24 DEC 2014</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe3.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Circle of Hands</p>
								<h2>24 DEC 2014</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe4.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Circle of Hands</p>
								<h2>24 DEC 2014</h2>
							</div>
						</div>
					</div>-->
					<div class="col-sm-3">
						<div class="address">
							<img src="images/home/map.png" alt="" />
							<p>Av. Las Vegas Poblado, Antioquia COL</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Servicios</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Ayuda online</a></li>
								<li><a href="">Contáctanos</a></li>
								<li><a href="">Estado de la orden</a></li>
								<li><a href="">Cambiar locación</a></li>
								
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Opciones</h2>
							<ul class="nav nav-pills nav-stacked">
								
								<li><a href="">Hombres</a></li>
								<li><a href="">Mujeres</a></li>
								<li><a href="">Tarjetas de regalo</a></li>
								<li><a href="">Lociones</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Políticas</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Términos y condiciones</a></li>
								<li><a href="">Política de privacidad</a></li>
								
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>¿Quiénes somos?</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Información de la compañía</a></li>
								<li><a href="">Carrera</a></li>
								<li><a href="">Ubicación</a></li>
								<li><a href="">Copyright</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>Sobre THYRSUS</h2>
							<form action="#" class="searchform">
								<input type="text" placeholder="Ingresa email" />
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
								<p>Obtén las mejores actualizaciones <br /></p>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2019 THYRSUS Inc. All rights reserved.</p>
					<p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	


    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>