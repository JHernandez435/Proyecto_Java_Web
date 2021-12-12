<%-- 
    Document   : blog
    Created on : 14/09/2020, 04:43:03 PM
    Author     : JFERNANDOHA
--%>

<%@page import="Modelo.Blog"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.BlogImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession ss = request.getSession();
    if (ss.getAttribute("user") != null) {
        if (ss.getAttribute("tiporol").equals("Doctor")) {
%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Pharma Company | Blog </title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/font-awesome.min.css" rel="stylesheet">
        <link href="../css/prettyPhoto.css" rel="stylesheet">
        <link href="../css/price-range.css" rel="stylesheet">
        <link href="../css/animate2.css" rel="stylesheet">
        <link href="../css/main3.css" rel="stylesheet">
        <link href="../css/responsive2.css" rel="stylesheet">
        <link href="../css/estilos2.css" rel="stylesheet" type="text/css"/>
        <link id="css-preset" href="../css/presets/preset3.css" rel="stylesheet">

        <link rel="shortcut icon" href="../images/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png">
        <link href="../css/estiloswm.css" rel="stylesheet" type="text/css"/>

        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
    </head>
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
                    <div class="collapse navbar-collapse">
                        <div class="header-middle"><!--header-middle-->
                            <div class="container">

                                <div class="col-sm-4">
                                    <div class="logo pull-left">
                                        <br>
                                        <a href="ventanaDoctor.jsp"><img src="../images/home/logo1.png" alt=""  width="250"  height="50"></a>                                          
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

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Patologías Prostáticas</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Colesterol y Triglicerios</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">En dolor e Inflamación
                                                de Cualquier etiología</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Dolores

                                                Músculo-Esqueléticos</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Tratamiento de Parásitos</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Deficiencia en el
                                                Sistema Inmunológico</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Tratamiento de la Tos</a></h4>
                                    </div>
                                </div>
                            </div><!--/category-products-->

                            <div class="brands_products"><!--brands_products-->

                                <div class="brands-name">
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="#"> <span class="pull-right">(50)</span>Circulación Periférica</a></li>
                                        <li><a href="#"> <span class="pull-right">(56)</span>Alergias Cutáneas y
                                                Afecciones Respiratorias</a></li>
                                        <li><a href="#"> <span class="pull-right">(27)</span>Alergias y Afecciones
                                                Respiratorias</a></li>
                                        <li><a href="#"> <span class="pull-right">(32)</span>Tratamiento de
                                                Patologías
                                                Acido-Pépticas</a></li>
                                        <li><a href="#"> <span class="pull-right">(5)</span>Patologías
                                                Gastrointestinales</a></li>
                                        <li><a href="#"> <span class="pull-right">(9)</span>Infecciones Virales
                                                y Bacterianas</a></li>
                                        <li><a href="#"> <span class="pull-right">(4)</span>Alteración en las
                                                Articulaciones</a></li>
                                    </ul>
                                </div>
                            </div><!--/brands_products-->
                            <div class="shipping text-center"><!--shipping-->
                                <img src="../images/home/shipping.jpg" alt="" />
                            </div><!--/shipping-->
                        </div>
                    </div>

                    <div class="col-sm-9">
                        <div class="blog-post-area">
                            <h2 class="title text-center">PUBLICACIONES</h2>
                            <%
                                BlogImplement z = new BlogImplement();
                                ArrayList<Blog> listadoBlog = new ArrayList<>();
                                listadoBlog = z.listarBlog();
                                for (Blog b : listadoBlog) {
                            %>
                            <div class="single-blog-post">
                                <div class="post-meta">
                                    <ul>
                                        <li><i class="fa fa-user"></i> Mac Doe</li>
                                        <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                        <li><i class="fa fa-calendar"></i> <%= b.getFechaB()%></li>
                                    </ul>
                                    <span>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </span>
                                </div>

                                <a href="">
                                    <img src="../<%= b.getImagenB()%> "/>
                                </a>
                                <p><%= b.getTexto()%></p>
                            </div>
                            <%
                                }
                            %>
                            </section>


                            <div class="category-tab"><!--category-tab-->
                                <div class="col-sm-12">
                                    <ul class="nav nav-tabs">

                                        <li><a href="#blazers" data-toggle="tab"></a></li>
                                        <li><a href="#sunglass" data-toggle="tab"></a></li>
                                        <li><a href="#kids" data-toggle="tab"></a></li>
                                        <li><a href="#poloshirt" data-toggle="tab"></a></li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="tshirt" >
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <iframe width="300" height="215" src="https://www.youtube.com/embed/YZlNgXYReTs"  allowfullscreen></iframe>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <iframe width="300" height="215" src="https://www.youtube.com/embed/QlJGTxTrHAY"  allowfullscreen></iframe>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <iframe width="300" height="215" src="https://www.youtube.com/embed/aNAu7i--vws"  allowfullscreen></iframe>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <iframe width="300" height="215" src="https://www.youtube.com/embed/7DLXwF99e1Q"  allowfullscreen></iframe>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div><!--/category-tab-->

                            <script src="../js/jquery.js"></script>
                            <script src="../js/price-range.js"></script>
                            <script src="../js/jquery.scrollUp.min.js"></script>
                            <script src="../js/bootstrap.min.js"></script>
                            <script src="../js/jquery.prettyPhoto.js"></script>
                            <script src="../js/main2.js"></script>
                            </body>
                            </html>
                            <%
                                    } else {
                                        response.sendRedirect("../error403_2.jsp");
                                    }
                                }
                            %>    