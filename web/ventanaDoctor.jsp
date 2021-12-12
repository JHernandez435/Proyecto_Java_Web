<%-- 
    Document   : VentanaAdministrador
    Created on : 5/08/2020, 11:22:50 AM
    Author     : JFERNANDOHA
--%>

<%@page import="Modelo.Medicamento"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.MedicamentoImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession ss = request.getSession();
    if (ss.getAttribute("user") != null) {
        if (ss.getAttribute("tiporol").equals("Doctor")) {
%>
<html>
    <head>
        <meta name="viewport"  content="width=device-width,initial-scale=1.0"/>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Pharma Company | Tienda</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate2.css" rel="stylesheet">
        <link href="css/main3.css" rel="stylesheet">
        <link href="css/responsive2.css" rel="stylesheet">
        <link href="css/estilos2.css" rel="stylesheet" type="text/css"/>
        <link id="css-preset" href="css/presets/preset3.css" rel="stylesheet">

        <link rel="shortcut icon" href="images/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
        <link href="css/estiloswm.css" rel="stylesheet" type="text/css"/>

        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>

    </head>
    <body>
        <div class="container-redes">
            <a href="https://api.whatsapp.com/send?phone=573114952766&text=¿Qué servicios ofrecen?" target="_blank">
                <img src="images/icon/icon-whatsapp.png" title="Enviar mensaje de WhatsApp" alt="">
            </a>
            <a href="http://m.me/107142534424628" target="_blank">
                <img src="images/icon/icon-messenger.png" alt="" title="Enviar mensaje por Messenger">
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
                                        <a href="ventanaDoctor.jsp"><img src="images/home/logo1.png" alt=""  width="250"  height="50"></a>                                          
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="nav navbar-nav navbar-right pull-right">
                                        <ul class="nav navbar-nav">
                                            <li><a href="AdminPanel/perfilDoctor.jsp"><i class="fa fa-user"></i> Perfil</a></li>
                                            <li><a href="https://www.sandbox.paypal.com/webapps/shoppingcart?mfid=1599794794296_fce2dd3de406d&flowlogging_id=fce2dd3de406d#/checkout/shoppingCart"><i class="fa fa-shopping-cart"></i> Carrito</a></li>
                                            <li><a href="logout.jsp"><i class="fa fa-lock"></i> Cerrar Sesion</a></li>
                                            <li><a href="logout.jsp"><i class="fa fa-lock"></i></a></li>
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

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="col-sm-4">
                        <div class="btn-group pull-right">    
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="shop-menu pull-right">
                            <ul class="nav navbar-nav">

                            </ul>
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
                                    <li><a href="#" class="active">Inicio</a></li>
                                    <li><a href="https://drive.google.com/file/d/1RZ24UHRQf-BRTJEr1KfhjWDihR8S9DJi/view?usp=sharing">Portafolio</a></li> 
                                    <li><a href="AdminPanel/blogDoctor.jsp" class="active">Blog</a></li>
                                    <li><a href="contactoDoctor.jsp">Contacto</a></li>
                                </ul>                                
                            </div>                     
                        </div>
                    </div>
                </div>
            </div><!--/header-bottom-->
        </header><!--/header-->

        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#slider-carousel" data-slide-to="1"></li>
                            <li data-target="#slider-carousel" data-slide-to="2"></li>
                        </ol>						
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="col-sm-6">
                                    <h1><span>Tratamientos Confiables Por Una Vida Más Saludable</span></h1>																		
                                </div>
                                <div class="col-sm-6">
                                    <img src="images/slider/1.jpg" class="girl img-responsive" alt="" />
                                </div>
                            </div>
                            <div class="item">
                                <div class="col-sm-6">
                                    <h1><span>Nada Cambia Si No Cambiamos Nada</span></h1>									
                                    <p></p>
                                </div>
                                <div class="col-sm-6">
                                    <img src="images/slider/2.jpg" class="girl img-responsive" alt="" />
                                </div>
                            </div>							
                            <div class="item">
                                <div class="col-sm-6">
                                    <h1><span>Nunca Se Ha Hecho Nada Grande Sin Entusiasmo</span></h1>									
                                    <p></p>
                                </div>
                                <div class="col-sm-6">
                                    <img src="images/slider/3.jpg" class="girl img-responsive" alt="" />
                                </div>
                            </div>

                        </div>

                        <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>

                </div>
            </div>
        </div>

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
                                <img src="images/home/shipping.jpg" alt="" />
                            </div><!--/shipping-->
                        </div>
                    </div>
                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <%
                                MedicamentoImplement mi = new MedicamentoImplement();
                                ArrayList<Medicamento> listadoMedicamentoDoctor = new ArrayList<>();
                                listadoMedicamentoDoctor = mi.listarMedicamentoDoctor();
                                for (Medicamento md : listadoMedicamentoDoctor) {
                            %>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="<%= md.getImagenP()%>"  />
                                            <h2><%= md.getPrecio()%></h2>
                                            <p><%= md.getNombre()%></p>
                                        </div>
                                        <div class="product-overlay">
                                            <div class="overlay-content">
                                                <p>Fecha de Expedicion</p>
                                                <p><%= md.getFechaE()%></p>
                                                <br>
                                                <p>Fecha de Vencimiento</p>
                                                <p><%= md.getFechaV()%></p>                                                                                             
                                                <h2><%= md.getPrecio()%></h2>
                                                <p><%= md.getNombre()%></p>


                                                <form target="paypal" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
                                                    <input type="hidden" name="cmd" value="_s-xclick">
                                                    <input type="hidden" name="hosted_button_id" value="<%= md.getPaypal()%>">
                                                    <input type="image" src="https://www.sandbox.paypal.com/es_XC/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                                                    <img alt="" border="0" src="https://www.sandbox.paypal.com/es_XC/i/scr/pixel.gif" width="1" height="1">
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                    <ul class="nav nav-pills nav-justified">

                                        <div class="modal fade" id="<%= md.getCodigo()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">                                                                                                  
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <center><h2 class="modal-title" id="myModalLabel">¿Como usar el Medicameto <%= md.getNombre()%>?</h2></center>  
                                                <br>
                                                <br>
                                                <img src="<%= md.getImagenD()%>"  />                                                                  
                                            </div>
                                        </div>
                                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#<%= md.getCodigo()%>">
                                            Uso Adecuado
                                        </button>                                         
                                    </ul>
                                </div>
                            </div>                                                  
                            <%
                                }
                            %>
                        </div><!--features_items-->
                    </div>
                </div>
            </div>
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

        <script src="js/bootstrap2.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main2.js"></script>
    </body>
</html>
<%
        } else {
            response.sendRedirect("AdminPanel/error403_2.jsp");
        }
    }
%>