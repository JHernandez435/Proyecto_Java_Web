<%-- 
    Document   : panelLateral
    Created on : 19/08/2020, 05:55:39 PM
    Author     : JFERNANDOHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/chatbot.js" type="text/javascript"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/prueba.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet"> 
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/lightbox.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link id="css-preset" href="css/presets/preset1.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600|Open+Sans" rel="stylesheet"> 
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
        <title>Pharma Company | Panel</title>
        <link rel="shortcut icon" href="images/favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/materialize-icons.css">
        <link rel="stylesheet" type="text/css" href="css/materialize.min.css">
        <script type="text/javascript" src="js/jquery-1.12.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport"  content="width=device-width,initial-scale=1.0"/>
        <meta charset="utf-8">
        <style type="text/css">
            .block
            {
                height: 100px;
            }
        </style>
        <script>
            $(function () {
                $(".button-collapse").sideNav({
                    menuWidth: 350,
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
    </head>
    <body>
        <header id="home">
            <div class="main-nav">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
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
                            <li class="scroll"><a href="inicio.jsp#home">Inicio</a></li>
                            <li class="scroll"><a href="inicio.jsp#services">Servicios</a></li> 
                            <li class="scroll"><a href="inicio.jsp#about-us">Nosotros</a></li>                     
                            <li class="scroll"><a href="inicio.jsp#portfolio">Portafolio</a></li>
                            <li class="scroll"><a href="inicio.jsp#team">Equipo</a></li>
                            <li id="pua-abrir-popup" class="btn-abrir-popup scroll active"><a href="inicio.jsp">Iniciar sesión</a></li>   
                        </ul>
                    </div>
                </div>
            </div><!--/#main-nav-->
        </header><!--/#home-->

        <div id="contact-us" class="parallax">
            <div class="container">
                <ul id="menu" class="side-nav">
                    <center>
                        <div class="menu">
                            <div class="back"><i class="fa fa-chevron-left"><a href="panel.jsp">A</a></i> <img src="https://i.imgur.com/DY6gND0.png" draggable="false"/></div>
                            <div class="name" face="impact">PHARMA</div>
                            <div class="last">18:09</div>
                        </div>
                        <ol class="chat">
                            <div class="day">Hoy</div>
                            <li class="other">
                                <div class="avatar"><img src="https://i.imgur.com/DY6gND0.png" draggable="false"/></div>
                                <br>
                                <div class="msg">
                                    <textarea style="color:black"id="chatArea" rows="10" cols="30"></textarea>
                                    <time>20:17</time>
                                </div>    
                                </br>
                            </li>
                            <li class="self">
                                <div class="avatar"><img src="https://i.imgur.com/HYcn9xO.png" draggable="false"/></div>
                                <br>
                                <div class="msg">
                                    <textarea style="color:black"id="areaChat" rows="10" cols="30"></textarea>
                                    <time>20:18</time>
                                </div>
                                </br>
                            </li>
                            <p id="resultado1">
                            </p>
                            <p id="resultado2">
                            </p>
                            <p id="respuesta">
                            </p>
                        </ol>
                        <input style="color:black" type="text" name="name" value="" id="txtPregunta" size="50"> 
                        <center>
                            <li class="waves-effect waves-light btn-large" name="name" value="Submit"onclick="evaluarExpresion()"><i class="material-icons right">send</i>ENVIAR
                        </center>
                </ul>	
                </center>

                <div class="load-more wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                    <a href="#" data-activates='menu' class="btn button-collapse waves-effect waves-light btn-large" ><i class="material-icons right">cloud</i>
                        PREGUNTANOS
                    </a>	
                </div> 
                <div class="row">
                    <div class="row">
                        <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <h2>Contacta con nosotros</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod y vitalidad, de modo que en algunos puntos, como los años, vendrá todo el trabajo de un gran, y el dolor:</p>
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
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                                    <ul class="address">
                                        <li><i class="fa fa-map-marker"></i> <span> Habla a:</span> 2400 South Avenue A </li>
                                        <li><i class="fa fa-phone"></i> <span> Telefono:</span> +928 336 2000  </li>
                                        <li><i class="fa fa-envelope"></i> <span> Email:</span><a href="mailto:someone@yoursite.com"> support@oxygen.com</a></li>
                                        <li><i class="fa fa-globe"></i> <span> Sitio web:</span> <a href="#">www.sitename.com</a></li>
                                    </ul>
                                </div>                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>        
    </body>
</html>
