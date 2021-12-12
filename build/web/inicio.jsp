<%-- 
    Document   : index
    Created on : 5/08/2020, 03:50:12 PM
    Author     : JFERNANDOHA
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuario"%>
<%@page import="DAO.UsuarioImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pharma Company | Inicio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="css/select.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilos3.css" rel="stylesheet" type="text/css"/>
        <script src="js/md5.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet"> 
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/lightbox.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link id="css-preset" href="css/presets/preset1.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600|Open+Sans" rel="stylesheet"> 
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
         <![endif]-->

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
        <link rel="shortcut icon" href="images/favicon.ico">
    </head>
    <body>
        <!--.preloader-->
        <div class="preloader"> <i class="fa fa-circle-o-notch fa-spin"></i></div>
        <!--/.preloader-->
        <header id="home">
            <div id="home-slider" class="carousel slide carousel-fade" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active" style="background-image: url(images/slider/1.jpg)">
                        <div class="caption">
                            <h1 class="animated fadeInLeftBig">Bienvenidos a <span>PHARMA COMPANY</span></h1>
                            <p class="animated fadeInRightBig">Servicio - Meta - Vision - Inovación</p>
                            <a data-scroll class="btn btn-start animated fadeInUpBig" href="#services">Empezar ahora</a>
                        </div>
                    </div>
                    <div class="item" style="background-image: url(images/slider/2.jpg)">
                        <div class="caption">
                            <h1 class="animated fadeInLeftBig">DIGA HOLA A <span>PHARMA</span></h1>
                            <p class="animated fadeInRightBig">Servicio - Meta - Vision - Inovación</p>
                            <a data-scroll class="btn btn-start animated fadeInUpBig" href="#services">Empezar ahora</a>
                        </div>
                    </div>
                    <div class="item" style="background-image: url(images/slider/3.jpg)">
                        <div class="caption">
                            <h1 class="animated fadeInLeftBig">Somos <span>PHARMA</span></h1>
                            <p class="animated fadeInRightBig">Servicio - Meta - Vision - Inovación</p>
                            <a data-scroll class="btn btn-start animated fadeInUpBig" href="#services">Empezar ahora</a>
                        </div>
                    </div>
                </div>
                <a class="left-control" href="#home-slider" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                <a class="right-control" href="#home-slider" data-slide="next"><i class="fa fa-angle-right"></i></a>

                <a id="tohash" href="#services"><i class="fa fa-angle-down"></i></a>

            </div><!--/#home-slider-->
            <div class="main-nav">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Navegación de palanca</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="inicio.jsp">
                            <h1><img class="img-responsive" src="images/logo.png" alt="logo"></h1>
                        </a>                    
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">                 
                            <li class="scroll"><a href="#home">Inicio</a></li>
                            <li class="scroll"><a href="#services">Servicio</a></li> 
                            <li class="scroll"><a href="#about-us">Nosotros</a></li>                     
                            <li class="scroll"><a href="#portfolio">Portafolio</a></li>
                            <li class="scroll"><a href="#team">Equipo</a></li>
                            <li class="scroll"><a href="#blog">Blog</a></li>
                            <li class="scroll"><a href="#contact">Contacto</a></li>   
                            <li id="btn-abrir-popup" class="btn-abrir-popup scroll active"><a>Iniciar sesión</a></li>   
                        </ul>
                        <div class="conten">
                            <div class="over" id="overlay">
                                <div class="pop" id="popup">
                                    <a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fas fa-times"></i></a>
                                    <h3>INGRESAR</h3>
                                    <h4>ingrese sus datos</h4>
                                    <form action="LoginController" method="post">
                                        <div class="contenedor-inputs">
                                            <div>
                                                <input type="text" placeholder="Usuario" name="user" required="nombre">
                                            </div>
                                            <input type="password" placeholder="Contraseña" onkeyup="this.form.passworde.value = md5(this.form.password.value)"
                                                   name="password" required="password"> 
                                            <input type="hidden" name="passworde">
                                        </div>
                                        <div class="sidebar-box">
                                            <select class="styled-select" name="tiporol">
                                                <option>Selecciona una opción</option>
                                                <option value="Administrador">ADMINISTRADOR</option>
                                                <option value="Doctor">PROFESIONAL</option>
                                                <option value="Cliente">VISITANTE</option>
                                            </select></div>
                                        <center><input type="submit" name="accion" class="btn-submit" value="INGRESAR"></center>
                                        <li id="fle-abrir-popup" class="btn-abrir-popup scroll"><a>No tienes cuenta?</a></li>   
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="conten">
                            <div class="o" id="over">
                                <div class="p" id="pop">
                                    <a href="#" id="fle-cerrar-popup" class="fle-cerrar-popup"><i class="fas fa-times"></i></a>
                                    <h3>REGISTRAR</h3>
                                    <h4>ingrese sus datos</h4>
                                    <form action="RegistrarController" method="Post">
                                        <div class="contenedor-inputs">
                                            <input type="text" name="cedula" placeholder="Cedula" required>
                                            <input type="text" name="nombre" placeholder="Nombres" required>
                                            <input type="text" name="apellido" placeholder="Apellidos" required>
                                            <input type="text" name="telefono" placeholder="Teléfono" required>
                                            <input type="gmail" name="email" placeholder="Correo electronico" required>
                                            <input type="text" name="user" placeholder="Usuario" required>
                                            <input type="password" placeholder="Contraseña" onkeyup="this.form.passworde.value = md5(this.form.password.value)"
                                                   name="password" required="password"> 
                                            <input type="hidden" name="passworde">
                                            <div class="debar-box">
                                                <select class="styled-select" name="tiporol">
                                                    <option>Selecciona una opción</option>
                                                    <option value="Administrador">ADMINISTRADOR</option>
                                                    <option value="Doctor">PROFESIONAL</option>
                                                    <option value="Cliente">VISITANTE</option>
                                                </select></div>
                                            <center><input type="submit" name="accion" class="btn-submit" value="REGISTRAR"></center>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/#main-nav-->
        <div class="load-more wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
            <a href="panel.jsp" class="btn-loadmore"><i class="fa fa-bomb"></i> Pregunta para Encontrar ?</a>
        </div>   
    </header><!--/#home-->
    <section id="services">
        <div class="container">
            <div class="heading wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                <div class="row">
                    <div class="text-center col-sm-8 col-sm-offset-2">
                        <h2>Nuestros servicios</h2>
                        <p>Nuestro mayor interés es que nuestros clientes tengan una experiencia gratificante por eso brindamos servicios como chat o videollamadas para obtener asesoría sobre el producto que desea adquirir y su correcto uso para la protección de su salud</p>
                    </div>
                </div> 
            </div>
            <div class="text-center our-services">
                <div class="row">
                    <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                        <div class="service-icon">
                            <i class="fa fa-flask"></i>
                        </div>
                        <div class="service-info">
                            <h3>Identidad de la marca</h3>
                            <p>Esta marca se ha caracterizado por el profesionalismo y la ética laboral al brindar productos confiables que cuiden de tu salud</p>
                        </div>
                    </div>
                    <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="450ms">
                        <div class="service-icon">
                            <i class="fa fa-umbrella"></i>
                        </div>
                        <div class="service-info">
                            <h3>Idea creativa</h3>
                            <p>La idea de surgió para brindar tratamientos confiables mediante medicamentos homeopáticos los cuales permitan tratar la salud de nuestros clientes para así poder vender un producto confiable y efectivo</p>
                        </div>
                    </div>
                    <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="550ms">
                        <div class="service-icon">
                            <i class="fa fa-cloud"></i>
                        </div>
                        <div class="service-info">
                            <h3>Soporte impresionante</h3>
                            <p>Esta página web cuenta con un soporte que se ofrece en nuestra página web cuidada, actualizada y en pleno funcionamiento. Es un medio de interacción con los usuarios, pero no se resta importancia de tener alguien que se encargue de vigilarla y mantenerla</p>
                        </div>
                    </div>
                    <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="650ms">
                        <div class="service-icon">
                            <i class="fa fa-coffee"></i>
                        </div>
                        <div class="service-info">
                            <h3>Atención profesional</h3>
                            <p>La atencion web implica trabajo relacionado con la interacción y diseño de páginas online, así como la producción de contenido, aunque generalmente se aplica la venta precencial</p>
                        </div>
                    </div>
                    <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="750ms">
                        <div class="service-icon">
                            <i class="fa fa-adjust"></i>
                        </div>
                        <div class="service-info">
                            <h3>Desarrollo de productos</h3>
                            <p>El desarrollo de productos homeopaticos se genera por conjunto de procesos y procedimientos involucrados en la realización de producto de calidad</p>
                        </div>
                    </div>
                    <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="850ms">
                        <div class="service-icon">
                            <i class="fa fa-gift"></i>
                        </div>
                        <div class="service-info">
                            <h3>Producto limpio</h3>
                            <p>Producto limpio es una filosofía de la empresa que consiste en aplicar productos que mejoren la salud y la economia de los clientes</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!--/#services-->
    <section id="about-us" class="parallax">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="about-info wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                        <h2>Sobre nosotros</h2>
                        <p>Nuestro mayor interés el cuidado se salud por eso nos esforzamos por brindarle un producto confiable, natural que ayude a la mejoría de su salud y la de su familia. </p>
                        <p>Por eso asesoramos a nuestros clientes para obtener el medicamento homeopático correcto para su condición de esta forma nos interesamos en su bienestar y que tenga una satisfacción reflejada en su salud. Nos esforzamos por tener los mayores estándares de calidad de los productos que ofrecemos.</p>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="our-skills wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                        <div class="single-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <p class="lead">Experiencias de usuario</p>
                            <div class="progress">
                                <div class="progress-bar progress-bar-primary six-sec-ease-in-out" role="progressbar"  aria-valuetransitiongoal="85">85%</div>
                            </div>
                        </div>
                        <div class="single-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="400ms">
                            <p class="lead">Clientes Felices</p>
                            <div class="progress">
                                <div class="progress-bar progress-bar-primary six-sec-ease-in-out" role="progressbar"  aria-valuetransitiongoal="75">75%</div>
                            </div>
                        </div>
                        <div class="single-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <p class="lead">Usos Estipulos</p>
                            <div class="progress">
                                <div class="progress-bar progress-bar-primary six-sec-ease-in-out" role="progressbar"  aria-valuetransitiongoal="60">60%</div>
                            </div>
                        </div>
                        <div class="single-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                            <p class="lead">Meta</p>
                            <div class="progress">
                                <div class="progress-bar progress-bar-primary six-sec-ease-in-out" role="progressbar"  aria-valuetransitiongoal="85">85%</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!--/#about-us-->

    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                    <h2>Tù Portafolio</h2>
                    <p>Aqui podras ver algunos de nuestros productos mas frecuentados de buena calidad para alcanzar tus expectactivas.</p>
                </div>
            </div> 
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3">
                    <div class="folio-item wow fadeInRightBig" data-wow-duration="1000ms" data-wow-delay="300ms">
                        <div class="folio-image">
                            <img class="img-responsive" src="images/portfolio/a.jpg" width="350" height="280" alt="">
                        </div>
                        <div class="overlay">
                            <div class="overlay-content">
                                <div class="overlay-text">
                                    <div class="folio-info">
                                        <h3>Descripción</h3>
                                        <p>Diseño, Imagen</p>
                                    </div>
                                    <div class="folio-overview">
                                        <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                                        <span class="folio-expand"><a href="images/portfolio/1.jpg" data-lightbox="portfolio"><i class="fa fa-search-plus"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="folio-item wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="400ms">
                        <div class="folio-image">
                            <img class="img-responsive" src="images/portfolio/b.jpg" width="350" height="280" alt="">
                        </div>
                        <div class="overlay">
                            <div class="overlay-content">
                                <div class="overlay-text">
                                    <div class="folio-info">
                                        <h3>Descripción</h3>
                                        <p>Diseño, Imagen</p>
                                    </div>
                                    <div class="folio-overview">
                                        <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                                        <span class="folio-expand"><a href="images/portfolio/2.jpg" data-lightbox="portfolio"><i class="fa fa-search-plus"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="folio-item wow fadeInRightBig" data-wow-duration="1000ms" data-wow-delay="500ms">
                        <div class="folio-image">
                            <img class="img-responsive" src="images/portfolio/c.jpg" width="350" height="280" alt="">
                        </div>
                        <div class="overlay">
                            <div class="overlay-content">
                                <div class="overlay-text">
                                    <div class="folio-info">
                                        <h3>Descripción</h3>
                                        <p>Diseño, Imagen</p>
                                    </div>
                                    <div class="folio-overview">
                                        <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                                        <span class="folio-expand"><a href="images/portfolio/3.jpg" data-lightbox="portfolio"><i class="fa fa-search-plus"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="folio-item wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="folio-image">
                            <img class="img-responsive" src="images/portfolio/d.jpg" width="350" height="280" alt="">
                        </div>
                        <div class="overlay">
                            <div class="overlay-content">
                                <div class="overlay-text">
                                    <div class="folio-info">
                                        <h3>Descripción</h3>
                                        <p>Diseño, Imagen</p>
                                    </div>
                                    <div class="folio-overview">
                                        <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                                        <span class="folio-expand"><a href="images/portfolio/4.jpg" data-lightbox="portfolio"><i class="fa fa-search-plus"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="folio-item wow fadeInRightBig" data-wow-duration="1000ms" data-wow-delay="700ms">
                        <div class="folio-image">
                            <img class="img-responsive" src="images/portfolio/e.jpg" width="350" height="280" alt="">
                        </div>
                        <div class="overlay">
                            <div class="overlay-content">
                                <div class="overlay-text">
                                    <div class="folio-info">
                                        <h3>Descripción</h3>
                                        <p>Diseño, Imagen</p>
                                    </div>
                                    <div class="folio-overview">
                                        <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                                        <span class="folio-expand"><a href="images/portfolio/5.jpg" data-lightbox="portfolio"><i class="fa fa-search-plus"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="folio-item wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="800ms">
                        <div class="folio-image">
                            <img class="img-responsive" src="images/portfolio/f.jpg" width="350" height="280" alt="">
                        </div>
                        <div class="overlay">
                            <div class="overlay-content">
                                <div class="overlay-text">
                                    <div class="folio-info">
                                        <h3>Descripción</h3>
                                        <p>Diseño, Imagen</p>
                                    </div>
                                    <div class="folio-overview">
                                        <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                                        <span class="folio-expand"><a href="images/portfolio/6.jpg" data-lightbox="portfolio"><i class="fa fa-search-plus"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="folio-item wow fadeInRightBig" data-wow-duration="1000ms" data-wow-delay="900ms">
                        <div class="folio-image">
                            <img class="img-responsive" src="images/portfolio/g.jpg" width="350" height="280" alt="">
                        </div>
                        <div class="overlay">
                            <div class="overlay-content">
                                <div class="overlay-text">
                                    <div class="folio-info">
                                        <h3>Descripción</h3>
                                        <p>Diseño, Imagen</p>
                                    </div>
                                    <div class="folio-overview">
                                        <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                                        <span class="folio-expand"><a href="images/portfolio/7.jpg" data-lightbox="portfolio"><i class="fa fa-search-plus"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="folio-item wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="1000ms">
                        <div class="folio-image">
                            <img class="img-responsive" src="images/portfolio/h.jpg" width="350" height="280"alt="">
                        </div>
                        <div class="overlay">
                            <div class="overlay-content">
                                <div class="overlay-text">
                                    <div class="folio-info">
                                        <h3>Descripción</h3>
                                        <p>Diseño, Imagen</p>
                                    </div>
                                    <div class="folio-overview">
                                        <span class="folio-link"><a class="folio-read-more" href="#" data-single_url="portfolio-single.html" ><i class="fa fa-link"></i></a></span>
                                        <span class="folio-expand"><a href="images/portfolio/8.jpg" data-lightbox="portfolio"><i class="fa fa-search-plus"></i></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="portfolio-single-wrap">
            <div id="portfolio-single">
            </div>
        </div><!-- /#portfolio-single-wrap -->
    </section><!--/#portfolio-->

    <section id="team">
        <div class="container">
            <div class="row">
                <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1200ms" data-wow-delay="300ms">
                    <h2>El Equipo</h2>
                    <p>Somos personas entregadas que nos esforzamos por ser el mejor equipo para entregarle un servicio de calidad el cual satisfaga sus expectativas</p>
                </div>
            </div>
            <div class="team-members">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="member-image">
                                <img class="img-responsive" src="images/team/1.jpg" alt="">
                            </div>
                            <div class="member-info">
                                <h3>Marian Dixon</h3>
                                <h4>CEO &amp; Fundadora</h4>
                                <p>Trabajamos por un mejor futuro para la empresa, cumplir la espectativas y visiones propuestas</p>
                            </div>
                            <div class="social-icons">
                                <ul>
                                    <li><a class="facebook" href="#"><i class="fa fa-rss"></i></a></li>
                                    <li><a class="twitter" href="#"><i class="fa fa-envelope"></i></a></li>
                                    <li><a class="linkedin" href="#"><i class="fa fa-rss"></i></a></li>
                                    <li><a class="dribbble" href="#"><i class="fa fa-envelope"></i></a></li>
                                    <li><a class="rss" href="#"><i class="fa fa-rss"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <div class="member-image">
                                <img class="img-responsive" src="images/team/2.jpg" alt="">
                            </div>
                            <div class="member-info">
                                <h3>Lawrence Lane</h3>
                                <h4>UI/UX Diseñador</h4>
                                <p>Trabajamos por un mejor futuro para la empresa, cumplir la espectativas y visiones propuestas</p>
                            </div>
                            <div class="social-icons">
                                <ul>
                                    <li><a class="facebook" href="#"><i class="fa fa-rss"></i></a></li>
                                    <li><a class="twitter" href="#"><i class="fa fa-envelope"></i></a></li>
                                    <li><a class="linkedin" href="#"><i class="fa fa-rss"></i></a></li>
                                    <li><a class="dribbble" href="#"><i class="fa fa-envelope"></i></a></li>
                                    <li><a class="rss" href="#"><i class="fa fa-rss"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="800ms">
                            <div class="member-image">
                                <img class="img-responsive" src="images/team/3.jpg" alt="">
                            </div>
                            <div class="member-info">
                                <h3>Chris Kyle</h3>
                                <h4>Desarrollador</h4>
                                <p>Trabajamos por un mejor futuro para la empresa, cumplir la espectativas y visiones propuestas</p>
                            </div>
                            <div class="social-icons">
                                <ul>
                                    <li><a class="facebook" href="#"><i class="fa fa-rss"></i></a></li>
                                    <li><a class="twitter" href="#"><i class="fa fa-envelope"></i></a></li>
                                    <li><a class="linkedin" href="#"><i class="fa fa-rss"></i></a></li>
                                    <li><a class="dribbble" href="#"><i class="fa fa-envelope"></i></a></li>
                                    <li><a class="rss" href="#"><i class="fa fa-rss"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="1100ms">
                            <div class="member-image">
                                <img class="img-responsive" src="images/team/4.jpg" alt="">
                            </div>
                            <div class="member-info">
                                <h3>Evan Peters</h3>
                                <h4>Gerente de Soporte</h4>
                                <p>Reembolsos de Minneapolis, pero ocasionalmente atraen tiempo y vitalidad</p>
                            </div>
                            <div class="social-icons">
                                <ul>
                                    <li><a class="facebook" href="#"><i class="fa fa-rss"></i></a></li>
                                    <li><a class="twitter" href="#"><i class="fa fa-envelope"></i></a></li>
                                    <li><a class="linkedin" href="#"><i class="fa fa-rss"></i></a></li>
                                    <li><a class="dribbble" href="#"><i class="fa fa-envelope"></i></a></li>
                                    <li><a class="rss" href="#"><i class="fa fa-rss"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
    </section><!--/#team-->

    <section id="features" class="parallax">
        <div class="container">
            <div class="row count">
                <div class="col-sm-3 col-xs-6 wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="300ms">
                    <i class="fa fa-user"></i>
                    <h3 class="timer">4000</h3>
                    <p>Clientes felices</p>
                </div>
                <div class="col-sm-3 col-xs-6 wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                    <i class="fa fa-desktop"></i>
                    <h3 class="timer">50</h3>                    
                    <p>Sitios Locales</p>
                </div> 
                <div class="col-sm-3 col-xs-6 wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="700ms">
                    <i class="fa fa-trophy"></i>
                    <h3 class="timer">10</h3>                    
                    <p>Logros</p>
                </div> 
                <div class="col-sm-3 col-xs-6 wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="900ms">
                    <i class="fa fa-comment-o"></i>                    
                    <h3>24/7</h3>
                    <p>Soporte rápido</p>
                </div>                 
            </div>
        </div>
    </section><!--/#features-->

    <section id="pricing">
        <div class="container">
            <div class="row">
                <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1200ms" data-wow-delay="300ms">
                    <h2>Tabla de precios</h2>
                    <p>Esta sección principalmente tiene el objetivo de mostrarle algunos de nuestros precios.</p>
                </div>
            </div>
            <div class="pricing-table">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="single-table wow flipInY" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <h3>PATOLOGÍAS PROSTÁTICAS</h3>
                            <div class="price">
                                $2000<span></span>                          
                            </div>
                            <ul>
                                <li>Traumatismos de cualquier</li>
                                <li>origen con dolor inflamación</li>
                                <li>muscular; Artitis reumatoidea,</li>
                                <li>artrosis, dolor lumbar.</li>
                            </ul>
                            <a href="#" class="btn btn-lg btn-primary">Regístrate</a>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="single-table wow flipInY" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <h3>COLESTEROL Y TRIGLICERIOS</h3>
                            <div class="price">
                                $3000<span></span>                                
                            </div>
                            <ul>
                                <li> Definiciencia de calcio,osteitis, </li>
                                <li> asteo artristis, fracturas, dolores </li>
                                <li> aseos,post-confusiones, ateoporosis, </li>
                                <li> trastornos del crecimiento, consolidación</li>
                            </ul>
                            <a href="#" class="btn btn-lg btn-primary">Regístrate</a>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="single-table featured wow flipInY" data-wow-duration="1000ms" data-wow-delay="800ms">
                            <h3>EN DOLOR E INFLAMACIÓN DE CUALQUIER ETIOLOGÍA</h3>
                            <div class="price">
                                $2900<span></span>                                
                            </div>
                            <ul>
                                <li>Enfermedades que cursen con</li>
                                <li>alteraciones del cartilago</li>
                                <li>articular, astrosis degenerativo o</li>
                                <li>causada por sobrepeso y micro trauma articular</li>
                            </ul>
                            <a href="#" class="btn btn-lg btn-primary">Regístrate</a>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="single-table wow flipInY" data-wow-duration="1000ms" data-wow-delay="1100ms">
                            <h3>DOLORES MÚSCULO-ESQUELÉTICOS</h3>
                            <div class="price">
                                $4900<span></span>                    
                            </div>
                            <ul>
                                <li>Enfermedades que cursen con</li>
                                <li>alteraciones del cartilago</li>
                                <li>causada por sobrepeso y micro</li>
                                <li>trauma articular</li>
                            </ul>
                            <a href="#" class="btn btn-lg btn-primary">Regístrate</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!--/#pricing-->

    <section id="twitter" class="parallax">
        <div>
            <a class="twitter-left-control" href="#twitter-carousel" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
            <a class="twitter-right-control" href="#twitter-carousel" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                        <div class="twitter-icon text-center">
                            <i class="fa fa-twitter"></i>
                            <h4 Style="color:black">Confia</h4>
                        </div>
                        <div id="twitter-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item active wow fadeIn" data-wow-duration="1000ms" data-wow-delay="300ms">
                                    <p Style="color:black">Presentamos la empresa generadora de <a href="#"><span>medicamentos profesionales y buena calidad</span> http://bit.ly/1qlgwav</a></p>
                                </div>
                                <div class="item">
                                    <p Style="color:black">Presentamos la empresa generadora de <a href="#"><span>medicamentos profesionales y buena calidad</span> http://bit.ly/1qlgwav</a></p>
                                </div>
                                <div class="item">                                
                                    <p Style="color:black">Presentamos la empresa generadora de <a href="#"><span>medicamentos profesionales y buena calidad</span> http://bit.ly/1qlgwav</a></p>
                                </div>
                            </div>                        
                        </div>                    
                    </div>
                </div>
            </div>
        </div>
    </section><!--/#twitter-->

    <section id="blog">
        <div class="container">
            <div class="row">
                <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1200ms" data-wow-delay="300ms">
                    <h2>Publicaciones del blog</h2>
                    <p>Esta columna principal es la que contiene los posts, llamados también publicaciones o artículos, que están ordenados cronológicamente y que se componen de: Fecha de publicación.</p>
                </div>
            </div>
            <div class="blog-posts">
                <div class="row">
                    <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="400ms">
                        <div class="post-thumb">
                            <a href="#"><img class="img-responsive" src="images/blog/1.jpg" alt=""></a> 
                            <div class="post-meta">
                                <span><i class="fa fa-comments-o"></i> 3 comentarios</span>
                                <span><i class="fa fa-heart"></i> 0 me gusta</span> 
                            </div>
                            <div class="post-icon">
                                <i class="fa fa-image"></i>
                            </div>
                        </div>
                        <div class="entry-header">
                            <h3><a href="#">Rebajas mejoradas</a></h3>
                            <span class="date">June 26, 2020</span>
                            <span class="cetagory">en <strong>Fotografía</strong></span>
                        </div>
                        <div class="entry-content">
                            <p>Existe un escudo protector que nos ayuda a proteger nuestro organismo de forma natural, en momentos o etapas de nuestra vida en las que necesitamos una ayuda extra. En invierno, en épocas de estrés o cuando nos enfrentamos a una enfermedad, contamos con una aliada magnífica que estimula nuestro sistema inmunitario: la lactoferrina. Una proteína con acción antimicrobiana, antioxidante, antiinflamatoria y con capacidad para estimular el sistema inmune.</p>
                        </div>
                    </div>
                    <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="post-thumb">
                            <div id="post-carousel"  class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#post-carousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#post-carousel" data-slide-to="1"></li>
                                    <li data-target="#post-carousel" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <a href="#"><img class="img-responsive" src="images/blog/2.jpg" alt=""></a>
                                    </div>
                                    <div class="item">
                                        <a href="#"><img class="img-responsive" src="images/blog/1.jpg" alt=""></a>
                                    </div>
                                    <div class="item">
                                        <a href="#"><img class="img-responsive" src="images/blog/3.jpg" alt=""></a>
                                    </div>
                                </div>                               
                                <a class="blog-left-control" href="#post-carousel" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                                <a class="blog-right-control" href="#post-carousel" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
                            </div>                            
                            <div class="post-meta">
                                <span><i class="fa fa-comments-o"></i> 3 comentarios</span>
                                <span><i class="fa fa-heart"></i> 0 me gusta</span> 
                            </div>
                            <div class="post-icon">
                                <i class="fa fa-picture-o"></i>
                            </div>
                        </div>
                        <div class="entry-header">
                            <h3><a href="#">Rebajas mejoradas</a></h3>
                            <span class="date">26 de junio de 2020</span>
                            <span class="cetagory">en <strong> Fotografía</strong></span>
                        </div>
                        <div class="entry-content">
                            <p>Todos los organismos son diferentes y, por tanto, todo organismo reacciona de distinta manera a los medicamentos. Algunas personas pueden desarrollar reacciones adversas a estos, mientras que otras no. Los antibióticos son unos de los que presentan reacciones alérgicas.</p>
                        </div>
                    </div>
                    <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="800ms">
                        <div class="post-thumb">
                            <a href="#"><img class="img-responsive" src="images/blog/3.jpg" alt=""></a>
                            <div class="post-meta">
                                <span><i class="fa fa-comments-o"></i> 3 comentarios</span>
                                <span><i class="fa fa-heart"></i> 0 me gusta</span> 
                            </div>
                            <div class="post-icon">
                                <i class="fa fa-video-camera"></i>
                            </div>
                        </div>
                        <div class="entry-header">
                            <h3><a href="#">Rebajas mejoradas</a></h3>
                            <span class="date">26 de junio de 2020</span>
                            <span class="cetagory">en <strong> Fotografía</strong></span>
                        </div>
                        <div class="entry-content">
                            <p>Hemos escuchado muchas veces el concepto de que la neumonía es una gripe “mal cuidada”, pero la realidad es que no es que la gripe se convierta en neumonía, sino que algunas personas que contraen la gripe pueden desarrollar complicaciones, como la entrada de una bacteria que deriva en una neumonía, las cuales pueden llegar a ser graves o incluso potencialmente mortales.</p>
                        </div>
                    </div>                    
                </div>
                <div class="load-more wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                    <a href="#" class="btn-loadmore"><i class="fa fa-repeat"></i> Carga más</a>
                </div>                
            </div>
        </div>
    </section><!--/#blog-->

    <section id="contact">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3969.9568961652753!2d-72.93747563565412!3d5.7193488754310025!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e6a45d7adb768b7%3A0x8d046bc5183ec0d4!2sSmarTket!5e0!3m2!1ses!2sco!4v1598455251782!5m2!1ses!2sco" width="1348" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        <div id="contact-us" class="parallax">
            <div class="container">
                <div class="row">
                    <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                        <h2>Contacta con nosotros</h2>
                        <p>Estamos para ayudarle en lo que necesite por eso si tiene alguna duda o inquietud comuníquese con nosotros y le brindaremos la asesoría para elegir lo que necesite su salud</p>
                    </div>
                </div>
                <div class="contact-form wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
                    <div class="row">
                        <div class="col-sm-6">
                            <form action="resultadoInicio.jsp" method="post" >
                                <div class="form-group">
                                    <input class="form-control" type="text" name="asunto" placeholder="Asunto" required="required"/>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="text" name="correo" placeholder="Correo" required="required"/>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" id="mensaje"name="mensaje" cols="40" rows="10" placeholder="Peticion...Ingrese su correo" required="required"></textarea>
                                </div>                        
                                <div class="form-group">
                                    <input type="submit" value="ENVIAR CORREO ELECTRONICO" class="btn-submit"/>
                                </div>
                                <div class="row  wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="hidden" value="pharmacompany28@gmail.com" name="de"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="hidden" value="pharma1234" name="clave"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="hidden" value="julian.apharma36@gmail.com"  name="para" />
                                        </div>
                                    </div>
                                </div>
                            </form> 
                        </div>
                        <div class="col-sm-6">
                            <div class="contact-info wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <p>Pharma es una empresa comprometida en la satisfacción del cliente por eso encontrara la dirección de nuestra empresa también algunos datos de contacto para que pueda escoger el mejor tratamiento para su salud.</p>
                                <ul class="address">
                                    <li><i class="fa fa-map-marker"></i> <span> Dirección:</span> Calle 21 #11 - 65 </li>
                                    <li><i class="fa fa-phone"></i> <span> Telefono:</span> +57311 281 9600  </li>
                                    <li><i class="fa fa-envelope"></i> <span> Correo electronico:</span><a href="mailto:someone@yoursite.com"> medicapharmacolombia@yahoo.es</a></li>
                                    <li><i class="fa fa-globe"></i> <span> Sitio web:</span> <a href="#">www.sitename.com</a></li>
                                </ul>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </section><!--/#contact-->
    <footer id="footer">
        <div class="footer-top wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            <div class="container text-center">
                <div class="footer-logo">
                    <a href="inicio.jsp"><img class="img-responsive" src="images/logo.png" alt=""></a>
                </div>
                <div class="social-icons">
                    <ul>
                        <li><a class="envelope" href="#"><i class="fa fa-envelope"></i></a></li>
                        <li><a class="twitter" href="#"><i class="fa fa-rss"></i></a></li> 
                        <li><a class="dribbble" href="#"><i class="fa fa-envelope"></i></a></li>
                        <li><a class="facebook" href="#"><i class="fa fa-rss"></i></a></li>
                        <li><a class="linkedin" href="#"><i class="fa fa-envelope"></i></a></li>
                        <li><a class="tumblr" href="#"><i class="fa fa-rss"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <p>&copy; 2020 Pharma Company.</p>
                    </div>
                    <div class="col-sm-6">
                        <p class="pull-right">Creado por ADSI 1963923</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="js/jquery.inview.min.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <script type="text/javascript" src="js/mousescroll.js"></script>
    <script type="text/javascript" src="js/smoothscroll.js"></script>
    <script type="text/javascript" src="js/jquery.countTo.js"></script>
    <script type="text/javascript" src="js/lightbox.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script src="js/popup.js" type="text/javascript"></script>
    <script src="js/popup2.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
