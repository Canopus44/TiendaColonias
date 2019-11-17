<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="Model.DAO.CatalogoDAO"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Shop | Thyrsus</title>
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
</head><!--/head-->

<body>
    <header id="header"><!--header-->
        <div class="header_top"><!--header_top-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 ">
                        <div class="contactinfo">
                            <ul class="nav nav-pills">
                                    <li><a href=""><i class="fa fa-phone"></i> +57 319 XXX XX XX</a></li>
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
                                            COL
                                            <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                            <li><a href="">Canada</a></li>
                                            <li><a href="">USA</a></li>
                                    </ul>
                            </div>
                            <div class="btn-group">
                                <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                    PESO COL
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

        <!--Modal CatShop -->
       
        
        
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
                                <li><a href="Controlador?menu=Catalogo">Home</a></li>
                                <li class="dropdown"><a href="#" class="active">Tienda<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.jsp" class="active">Products</a></li>
                                        <li><a href="product-details.jsp">Detalle de productos</a></li> 
                                        <li><a href="checkout.jsp">Salida</a></li> 
                                        <li><a href="cart.jsp">Carrito</a></li> 
                                        <li><a href="login.jsp">Ingreso</a></li> 
                                    </ul>
                                </li> 
                                <li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="blog.jsp">Blog List</a></li>
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
                            <input type="text" placeholder="Search"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
	
    <section id="advertisement">
            <div class="container">
                    <img src="images/shop/advertisement.jpg" alt="" />
            </div>
    </section>
	
    <section>
        <div class="container">
            <div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Categoría</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#Hombres">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Hombres
										</a>
									</h4>
								</div>
								<div id="Hombres" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="">Paco Rabbane</a></li>
											<li><a href="">Calvin Klein </a></li>
											<li><a href="">Sweet Army </a></li>
											<li><a href="">Hugo Boss</a></li>
											<li><a href="">Lacoste </a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#Mujeres">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Mujeres
										</a>
									</h4>
								</div>
								<div id="Mujeres" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="">Victorias's Secret</a></li>
											<li><a href="">Paco Rabbane</a></li>
											<li><a href="">Valentino</a></li>
											<li><a href="">Dior</a></li>
											<li><a href="">Versace</a></li>
											<li><a href="">Armani</a></li>
											<li><a href="">Prada</a></li>
											<li><a href="">Dolce and Gabbana</a></li>
											<li><a href="">Chanel</a></li>
											<li><a href="">Gucci</a></li>
										</ul>
									</div>
								</div>
							</div>
							
							<!--<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#womens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Womens
										</a>
									</h4>
								</div>
								<div id="womens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="">Fendi</a></li>
											<li><a href="">Guess</a></li>
											<li><a href="">Valentino</a></li>
											<li><a href="">Dior</a></li>
											<li><a href="">Versace</a></li>
										</ul>
									</div>
								</div>
							</div>-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">OFertas</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Especiales</a></h4>
								</div>
							</div>
							<!--<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Households</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Interiors</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Clothing</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Bags</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Shoes</a></h4>
								</div>
							</div>-->
						</div><!--/category-productsr-->
					
						<div class="brands_products"><!--brands_products-->
							<h2>Brands</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
									<li><a href=""> <span class="pull-right">(50)</span>Acne</a></li>
									<li><a href=""> <span class="pull-right">(56)</span>GrÃ¼ne Erde</a></li>
									<li><a href=""> <span class="pull-right">(27)</span>Albiro</a></li>
									<li><a href=""> <span class="pull-right">(32)</span>Ronhill</a></li>
									<li><a href=""> <span class="pull-right">(5)</span>Oddmolly</a></li>
									<li><a href=""> <span class="pull-right">(9)</span>Boudestijn</a></li>
									<li><a href=""> <span class="pull-right">(4)</span>RÃ¶sch creative culture</a></li>
								</ul>
							</div>
						</div><!--/brands_products-->
						
						<div class="price-range"><!--price-range-->
							<h2>Rango de precio</h2>
							<div class="well">
								 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
								 <b>$ 0</b> <b class="pull-right">$ 600,000</b>
							</div>
						</div><!--/price-range-->
						
						<div class="shipping text-center"><!--shipping-->
							<img src="images/home/home.png" alt="" />
						</div><!--/shipping-->
						
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
                                    <div class="features_items"><!--features_items-->
                                        <h2 class="title text-center">Productos disponibles</h2>
                                        <!--Desde aca se muestran los elementos en pantalla , las lociones-->
                                       
                                           <%int count=0;  int count1=0;%>
                                           <c:forEach var="prd" items="${catalog}">
                                                <%if(count == 0){%>
                                                    <br>
                                                    <div class="row">
                                                         <div class="col-md-4 ml-md-auto">
                                                            <div class="card" style="width: 18rem;">
                                                                <img class="card-img-top" src="${prd.getimagen()}" alt="Card image cap" width="170">
                                                                <div class="card-body">
                                                                  <div style="color:#ffad41;"><h2 class="card-text">$${prd.getPrecio_Compra()}</h2></div>
                                                                    <h5 class="card-title prc">${prd.getNombre_Prd()}</h5>
                                                                    <a href="Controlador?menu=ShopCart" class="btn btn-primary">Comprar</a>
                                                                    <a href="Controlador?menu=Catalogo&accion=Agregar&id=${prd.getId_Prod()}" class="btn btn-primary">Agregar</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    
                                                <%}else{%>
                                                        <div class="col-md-4 ml-md-auto">
                                                            <div class="card" style="width: 18rem;">
                                                                <img class="card-img-top" src="${prd.getimagen()}" alt="Card image cap" width="170" height="145">
                                                                <div class="card-body">
                                                                    <div style="color:#ffad41;"><h2 class="card-text">$${prd.getPrecio_Compra()}</h2></div>
                                                                    <h5 class="card-title prc">${prd.getNombre_Prd()}</h5>
                                                                    <a href="Controlador?menu=ShopCart" class="btn btn-primary">Comprar</a>
                                                                    <a href="Controlador?menu=Catalogo&accion=Agregar&id=${prd.getId_Prod()}" class="btn btn-primary">Agregar</a>
                                                                 
                                                                </div>
                                                            </div>
                                                        </div>
                                                <%}count++; 
                                                    if(count==3){count=0;%>
                                                        </div>
                                                <% }%>
                                            </c:forEach>
                                     

                                        <br>
                                        <div class="row my-4">
                                            <div class="col-sm-12">
                                                <ul class="pagination">
                                                        <li class="active"><a href="">1</a></li>
                                                        <li><a href="">2</a></li>
                                                        <li><a href="">3</a></li>
                                                        <li><a href="">&raquo;</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div><!--features_items-->
				</div>
		</div>
        </div>
	</section>
	
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
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Sobre THYRSUS</h2>
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
								<input type="text" placeholder="Your email address" />
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
					<p class="pull-left">Copyright © 2019 THYRSUS. All rights reserved.</p>
					<p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	

  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>