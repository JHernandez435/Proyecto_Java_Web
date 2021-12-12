<%-- 
    Document   : actualizarCliente
    Created on : 26/08/2020, 01:35:32 PM
    Author     : JFERNANDOHA
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuario"%>
<%@page import="DAO.UsuarioImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession ss = request.getSession();
    if (ss.getAttribute("user") != null) {
        if (ss.getAttribute("tiporol").equals("Doctor")) {
%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Pharma Company | Perfil</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/font-awesome.min.css" rel="stylesheet">
        <link href="../css/prettyPhoto.css" rel="stylesheet">
        <link href="../css/price-range.css" rel="stylesheet">
        <link href="../css/animate2.css" rel="stylesheet">
        <link href="../css/main3.css" rel="stylesheet">
        <link href="../css/responsive2.css" rel="stylesheet">
        <link href="../css/estilos2.css" rel="stylesheet" type="text/css"/>

        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/animate.min.css" rel="stylesheet"> 
        <link href="../css/font-awesome.min.css" rel="stylesheet">
        <link href="../css/lightbox.css" rel="stylesheet">
        <link href="../css/main.css" rel="stylesheet">
        <link id="../css-preset" href="../css/presets/preset3.css" rel="stylesheet">
        <link href="../css/responsive.css" rel="stylesheet">
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="../css/estiloswm.css" rel="stylesheet" type="text/css"/>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&display=swap" rel="stylesheet"> 
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="../images/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->
    <body>
        <div class="container-redes">
            <a href="https://api.whatsapp.com/send?phone=573114952766&text=¿Qué servicios ofrecen?" target="_blank">
                <img src="../images/icon/icon-whatsapp.png" title="Enviar mensaje de WhatsApp" alt="">
            </a>

            <a href="http://m.me/107142534424628" target="_blank">
                <img src="../images/icon/icon-messenger.png" alt="" title="Enviar mensaje por Messenger">
            </a>
        </div>
        <header id="header"><!--header-->
            <div class="main-nav">
                <div class="container">
                    <div class="navbar-header">
                    </div>
                    <div class="collapse navbar-collapse">
                        <div class="header-middle"><!--header-middle-->
                            <div class="container">
                                <div class="col-sm-4">
                                    <div class="logo pull-left">
                                        <br>
                                        <a href="ventanaCliente.jsp"><img src="../images/home/logo1.png" alt=""  width="250"  height="50"></a>                                          
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="nav navbar-nav navbar-right pull-right">
                                        <ul class="nav navbar-nav">
                                            <li><a href="perfilDoctor.jsp"><i class="fa fa-user"></i> Perfil</a></li>
                                            <li><a href="https://www.sandbox.paypal.com/webapps/shoppingcart?mfid=1599794794296_fce2dd3de406d&flowlogging_id=fce2dd3de406d#/checkout/shoppingCart"><i class="fa fa-shopping-cart"></i> Carrito</a></li>
                                            <li><a href="../logout.jsp"><i class="fa fa-lock"></i> Cerrar Sesion</a></li>
                                            <li><a href="../logout.jsp"><i class="fa fa-lock"></i></a></li>
                                            <li><div class="col-sm-3">
                                                    <div class="search_box pull-right">
                                                        <br>
                                                        <button class="switch" id="switch">
                                                            <span><i class="fas fa-sun"></i></span>
                                                            <span><i class="fas fa-moon"></i></span>
                                                        </button>
                                                    </div>
                                                </div></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div><!--/header-middle-->
                    </div>
                </div>
            </div><!--/#main-nav-->
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
                                    <li><a href="../ventanaDoctor.jsp" class="active">Inicio</a></li>
                                    <li><a href="https://drive.google.com/file/d/1RZ24UHRQf-BRTJEr1KfhjWDihR8S9DJi/view?usp=sharing">Portafolio</a></li>
                                    <li><a href="blogDoctor.jsp" class="active">Blog</a></li>
                                    <li><a href="../contactoDoctor.jsp">Contacto</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-bottom-->
        </header><!--/header-->
        <%
            if (ss.getAttribute("user") != null) {
                String valor = String.valueOf(ss.getAttribute("user"));
        %>
        <div id="contact-page" class="container">
            <div class="bg">
                <div class="row">  	
                    <div class="col-sm-8">
                        <div class="contact-form">
                            <h2 class="title text-center">Datos Personales</h2>
                            <div class="status alert alert-success" style="display: none"></div>
                            <%
                                UsuarioImplement ui = new UsuarioImplement();
                                ArrayList<Usuario> listadoClientes = new ArrayList<>();
                                listadoClientes = ui.buscarUsuarioPorUser(valor);
                                for (Usuario u : listadoClientes) {
                            %>
                            <form action="../ActualizarDoctorController" id="main-contact-form" class="contact-form row" method="post">
                                <input type="hidden" value="<%= u.getIdusuario()%>" name="id">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Company (Rol)</label>
                                        <input type="text" id="nombre" class="form-control" value="<%= u.getTiporol()%>" name="tiporol" required>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Cedula</label>
                                        <input type="text" id="nombre" class="form-control" value="<%= u.getCedula()%>" name="cedula" required>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Usuario</label>
                                        <input type="text" id="nombre" class="form-control" value="<%= u.getUser()%>" name="user" required>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Contraseña</label>
                                        <input type="password" id="nombre" class="form-control" value="<%= u.getPassword()%>" name="password" required>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Correo Electronico</label>
                                        <input type="text" id="nombre" class="form-control" value="<%= u.getEmail()%>" name="email" required>
                                    </div>
                                </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Nombres</label>
                                    <input type="text" id="nombre" class="form-control" value="<%= u.getNombre()%>" name="nombre" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Apellidos</label>
                                    <input type="text" id="nombre" class="form-control" value="<%= u.getApellido()%>" name="apellido" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="bmd-label-floating">Telefono</label>
                                    <input type="text" id="nombre" class="form-control" value="<%= u.getTelefono()%>" name="telefono" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <input type="submit" name="submit" class="btn btn-primary pull-right" value="Enviar">
                        </div>
                        </form>
                        <%
                            }
                        %>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>  
        </div>	
    </div><!--/#contact-page-->

    <div class="row">    		
        <div class="col-sm-12">    			   			
            <h2 class="title text-center">CONTACTANOS</h2>  
            <div class="contact-form">                
                <section id="team">
                    <div class="container">
                        <div class="row">
                            <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1200ms" data-wow-delay="300ms">

                            </div>
                        </div>
                        <div class="team-members">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="300ms">
                                        <div class="member-image">
                                            <img class="img-responsive" src="../images/team/1.jpg" alt="">
                                        </div>
                                        <div class="member-info">
                                            <h3>Marian Dixon</h3>
                                            <h4>CEO &amp; Founder</h4>
                                            <p>Trabajamos por un mejor futuro para la empresa, cumplir la espectativas y visiones propuestas</p>
                                        </div>
                                        <div class="social-icons">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                                                <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                                                <li><a class="rss" href="#"><i class="fa fa-rss"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="500ms">
                                        <div class="member-image">
                                            <img class="img-responsive" src="../images/team/2.jpg" alt="">
                                        </div>
                                        <div class="member-info">
                                            <h3>Lawrence Lane</h3>
                                            <h4>UI/UX Designer</h4>
                                            <p>Trabajamos por un mejor futuro para la empresa, cumplir la espectativas y visiones propuestas</p>
                                        </div>
                                        <div class="social-icons">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                                                <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                                                <li><a class="rss" href="#"><i class="fa fa-rss"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="800ms">
                                        <div class="member-image">
                                            <img class="img-responsive" src="../images/team/3.jpg" alt="">
                                        </div>
                                        <div class="member-info">
                                            <h3>Lois Clark</h3>
                                            <h4>Developer</h4>
                                            <p>Trabajamos por un mejor futuro para la empresa, cumplir la espectativas y visiones propuestas</p>
                                        </div>
                                        <div class="social-icons">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                                                <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                                                <li><a class="rss" href="#"><i class="fa fa-rss"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="team-member wow flipInY" data-wow-duration="1000ms" data-wow-delay="1100ms">
                                        <div class="member-image">
                                            <img class="img-responsive" src="../images/team/4.jpg" alt="">
                                        </div>
                                        <div class="member-info">
                                            <h3>Marian Dixon</h3>
                                            <h4>Support Manager</h4>
                                            <p>Trabajamos por un mejor futuro para la empresa, cumplir la espectativas y visiones propuestas</p>
                                        </div>
                                        <div class="social-icons">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                                                <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                                                <li><a class="rss" href="#"><i class="fa fa-rss"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>            
                    </div>
                </section><!--/#team-->
            </div>			 		
        </div>
    </div>
    <script src="../js/jquery2.js"></script>
    <script src="../js/bootstrap2.min.js"></script>
    <script src="../js/jquery.scrollUp.min.js"></script>
    <script src="../js/price-range.js"></script>
    <script src="../js/jquery.prettyPhoto.js"></script>
    <script src="../js/main2.js" type="text/javascript"></script>
</body>
</html>
<%
        } else {
            response.sendRedirect("../error403_2.jsp");
        }
    }
%>    