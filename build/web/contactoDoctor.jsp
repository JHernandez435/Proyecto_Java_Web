<%
    HttpSession ss = request.getSession();
    if (ss.getAttribute("user") != null) {
        if (ss.getAttribute("tiporol").equals("Doctor")) {
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" type="text/css" href="css/materialize-icons.css">
        <link rel="stylesheet" type="text/css" href="css/materialize.min.css">
        <script type="text/javascript" src="js/jquery-1.12.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <style type="text/css">
            .block
            {
                height: 100px;
            }
        </style>
        <script>
            $(function () {
                $(".button-collapse").sideNav({
                    menuWidth: 800,
                    edge: 'right',
                    closeOnClick: true,
                    draggable: true,
                    onOpen: function (objeto)
                    {

                    },
                    onClose: function (objeto)
                    {

                    }
                });
            });
        </script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Pharma Company | Contacto</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate2.css" rel="stylesheet">
        <link href="css/main3.css" rel="stylesheet">
        <link href="css/responsive2.css" rel="stylesheet">
        <link href="css/estilos2.css" rel="stylesheet" type="text/css"/>
        <link id="css-preset" href="css/presets/preset3.css" rel="stylesheet">
        <link href="css/estiloswm.css" rel="stylesheet" type="text/css"/>

        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
     
        <link rel="shortcut icon" href="images/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->
    <body>
        <div class="container ">

        </div>
        <div class="container-redes">
            <a href="https://api.whatsapp.com/send?phone=573114952766&text=¿Qué servicios ofrecen?" target="_blank">
                <img src="images/icon/icon-whatsapp.png" title="Enviar mensaje de WhatsApp" alt="">
            </a>

            <a href="http://m.me/107142534424628" target="_blank">
                <img src="images/icon/icon-messenger.png" alt="" title="Enviar mensaje por Messenger">
            </a>
        </div>
        <div class="container ">
            <ul id="menu" class="side-nav">
                <iframe src="https://calendar.google.com/calendar/embed?height=700&amp;wkst=2&amp;bgcolor=%23039BE5&amp;ctz=America%2FBogota&amp;src=Z25jcjhjb29nZGdvZDk3Zms0ZGs3bjBocGNAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%23039BE5&amp;title=CALENDARIO%20PHARMA&amp;showPrint=0&amp;showTabs=0&amp;mode=WEEK&amp;showTz=0&amp;showNav=1&amp;showDate=1" style="border:solid 1px #777" width="800" height="700" frameborder="0" scrolling="no"></iframe>
            </ul>	
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
                                        <a href="index.html"><img src="images/home/logo1.png" alt=""  width="250"  height="50"></a>                                          
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="nav navbar-nav navbar-right pull-right">
                                        <ul class="nav navbar-nav">
                                            <li><a href="AdminPanel/perfilDoctor.jsp"><i class="fa fa-user"></i>Perfil</a></li>
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
                                    <li><a href="ventanaDoctor.jsp" class="active">Inicio</a></li>
                                    <li><a href="https://drive.google.com/file/d/1RZ24UHRQf-BRTJEr1KfhjWDihR8S9DJi/view?usp=sharing">Portafolio</a></li>
                                    <li><a href="AdminPanel/blogDoctor.jsp" class="active">Blog</a></li>
                                    <li><a href="contactoDoctor.jsp">Contacto</a></li>
                                    <a href="#" data-activates='menu' class="btn button-collapse">
                                        Calendario
                                    </a>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div><!--/header-bottom-->

        </header><!--/header-->

        <div id="contact-page" class="container">
            <div class="bg">

                <div class="row">  	
                    <div class="col-sm-8">
                        <div class="contact-form">
                            <h2 class="title text-center">PONERSE EN CONTACTO</h2>
                            <div class="status alert alert-success" style="display: none"></div>
                            <form action="resultadoDoctor.jsp" id="main-contact-form" class="contact-form row" method="post">
                                <div class="form-group col-md-12">
                                    <input class="form-control" type="text" name="asunto" placeholder="Asunto" required="required">
                                </div>
                                <div class="form-group col-md-12">
                                    <input class="form-control" type="text" name="correo" placeholder="Correo" required="required">
                                </div>
                                <div class="form-group col-md-13">
                                    <textarea class="form-control" id="mensaje"name="mensaje" cols="40" rows="10" placeholder="Peticion...Ingrese su correo" required="required" name="message" id="message" required="required" class="form-control"></textarea>
                                </div>                     
                                <div class="form-group col-md-12">
                                    <input type="submit" name="submit" class="btn btn-primary pull-right" value="Enviar">
                                </div>
                                <input type="hidden" value="pharmacompany28@gmail.com" name="de"/>
                                <input type="hidden" value="pharma1234" name="clave"/>
                                <input type="hidden" value="julian.apharma36@gmail.com"  name="para" />
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="contact-info">
                            <h2 class="title text-center">DATOS DE CONTACTO</h2>
                            <address>
                                <p>Pharma Company Inc.</p>
                                <p>935 W. Webster Ave New Streets Chicago, IL 60614, NY</p>
                                <p>Duitama, Sogamoso  Boyaca</p>
                                <p>Mobile: +57 310 240 3861</p>
                                <p>Fax: 1-714-252-0026</p>
                                <p>Email: pharmacompany@gmail.com</p>
                            </address>
                            <div class="social-networks">
                                <h2 class="title text-center">REDES SOCIALES</h2>
                                <ul>
                                    <li>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-youtube"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>    			
                </div>  
            </div>	
        </div><!--/#contact-page-->

        <div class="row">    		
            <div class="col-sm-12">    			   			
                <h2 class="title text-center">CONTÁCTENOS</h2>  
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
                                                <img class="img-responsive" src="images/team/1.jpg" alt="">
                                            </div>
                                            <div class="member-info">
                                                <h3>Marian Dixon</h3>
                                                <h4>CEO &amp; Founder</h4>
                                                <p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>
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
                                                <img class="img-responsive" src="images/team/2.jpg" alt="">
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
                                                <img class="img-responsive" src="images/team/3.jpg" alt="">
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
                                                <img class="img-responsive" src="images/team/4.jpg" alt="">
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
