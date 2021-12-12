<%-- 
    Document   : crearPrueba
    Created on : 10/08/2020, 10:09:56 AM
    Author     : JFERNANDOHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession ss = request.getSession();
    if (ss.getAttribute("user") != null) {
        if (ss.getAttribute("tiporol").equals("Administrador")) {
%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/materialize-icons.css">
        <link rel="stylesheet" type="text/css" href="css/materialize.min.css">
        <link href="css/materialize-icons.css" rel="stylesheet" type="text/css"/>

        <link href="css/estilos2.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="js/jquery-1.12.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <link href="css/estilos2.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            Pharma Company | Administrador
        </title>
        <link rel="shortcut icon" href="images/favicon.ico">
        <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
        <link href="css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
        <link href="demo/demo.css" rel="stylesheet" />
        <link href="css/material-dashboard.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="wrapper ">
            <div class="sidebar" data-color="danger" data-background-color="black" data-image="images/sidebar-1.jpg">
                <!--
                  Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
          
                  Tip 2: you can also add an image using data-image tag
                -->
                <div class="logo"><a href="http://www.creative-tim.com" class="simple-text logo-normal">
                        <img src="images/logo.png" width="150" height="35" alt=""/>
                    </a></div>
                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <li class="nav-item  ">
                            <a class="nav-link" href="#">
                                <i class="material-icons">dashboard</i>
                                <p>Funciones</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ventanaAdministrador.jsp">
                                <i class="material-icons">person</i>
                                <p>Registrar Usuario</p>
                            </a>
                        </li>
                        <li class="nav-item active ">
                            <a class="nav-link" href="crearMedicamento.jsp">
                                <i class="material-icons">person</i>
                                <p>Registrar Medicamento</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="AdminPanel/listadoUsuario.jsp">
                                <i class="material-icons">content_paste</i>
                                <p>Lista de Usuarios</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="AdminPanel/listadoMedicamento.jsp">
                                <i class="material-icons">content_paste</i>
                                <p>Lista de Medicamentos</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="AdminPanel/listadoBlog.jsp">
                                <i class="material-icons">content_paste</i>
                                <p>Blog</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="main-panel">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
                    <div class="container-fluid">
                        <div class="navbar-wrapper">
                            <a class="navbar-brand" href="javascript:;">PHARMA COMPANY</a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end">
                            <ul class="navbar-nav">
                                <li class="nav-item dropdown">
                                    <div class="search_box pull-right">

                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:;">
                                        <i class="material-icons">dashboard</i>
                                        <p class="d-lg-none d-md-block">
                                            Stats
                                        </p>
                                    </a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">notifications</i>
                                        <span class="notification">5</span>
                                        <p class="d-lg-none d-md-block">
                                            Some Actions
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link" href="javascript:;" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">person</i>
                                        <p class="d-lg-none d-md-block">
                                            Account
                                        </p>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                                        <a class="dropdown-item" href="AdminPanel/perfilAdministrador.jsp">Perfil</a>
                                        <a class="dropdown-item" href="#">Ajustes</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="logout.jsp">Cerrar Sesion</a>
                                    </div>
                                </li>
                                <button class="switch" id="switch">
                                    <span><i class="fas fa-sun"></i></span>
                                    <span><i class="fas fa-moon"></i></span>
                                </button>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->

                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="card">
                                    <div class="card-header card-header-danger">
                                        <h4 class="card-title">Registrar Nuevo Medicamento </h4>
                                        <p class="card-category"></p>
                                    </div>
                                    <div class="card-body">
                                        <form name="a" action="MedicamentoController" method="Post">
                                            <div class="row">
                                                <div class="col-md-5">
                                                    <div class="file-field input-field">
                                                        <div class="btn">
                                                            <span>Inserte La Imagen Del Producto</span>
                                                            <br><input type="file" name="imagenP"></br>
                                                        </div>
                                                        <div class="file-path-wrapper">
                                                            <input class="file-path validate" type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="file-field input-field">
                                                        <div class="btn">
                                                            <span>Inserte El Detalle Del Producto</span>
                                                            <br><input type="file" name="imagenD"></br>
                                                        </div>
                                                        <div class="file-path-wrapper">
                                                            <input class="file-path validate" type="text">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Codigo</label>
                                                        <input type="text" name="codigo" class="form-control" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Nombre</label>
                                                        <input type="text" name="nombre" class="form-control" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label name="">Fecha Expediccion</label>
                                                        <input type="date" name="fechaE" class="form-control" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label name="">Fecha Vencimineto</label>
                                                        <input type="date" name="fechaV" class="form-control" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Precio</label>
                                                        <input type="text" name="precio" class="form-control" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Categoria</label>
                                                        <input type="text" name="categoria" class="form-control" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Paypal</label>
                                                        <input type="text" name="paypal" class="form-control" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <ul class="nav nav-pills nav-justified">

                                                <div class="modal fade" id="1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                    <center><img src="images/alerta.png" width="800" height="400"alt=""/></center>
                                                    <a href="crearMedicamento.jsp#a"></a>
                                                    <div class="modal-dialog" role="document">                                                                                                  
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <center>
                                                        <button type="button" class="btn btn-danger btn-round" data-dismiss="modal" aria-label="Close">
                                                            Cancelar
                                                            <span aria-hidden="true"></span>
                                                        </button>
                                                        <button class="btn btn-success btn-round" type="submit">GUARDAR</button>
                                                        <div class="clearfix"></div>
                                                    </center>
                                                </div>
                                                <button type="button" class="btn btn-danger btn-round" data-toggle="modal" data-target="#1">
                                                    Guardar
                                                </button>                                         
                                            </ul>

                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card card-profile">
                                    <div class="card-avatar">
                                        <a href="javascript:;">
                                            <img class="img" src="images/faces/marca.png" data-toggle="modal" data-target="#in"/>
                                        </a>
                                        <div class="modal fade" id="in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-header">
                                                </div>
                                                <div class="modal-body">
                                                </div>
                                            </div>
                                            <img src="images/portfolio/consejos.png" alt=""/>
                                            <button type="button" class="btn btn-danger btn-round" data-dismiss="modal" aria-label="Close">
                                                ¡Entendido!
                                                <span aria-hidden="true"></span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <h6 class="card-category text-gray">PHARMA COMPANY</h6>
                                        <h4 class="card-title">¿COMO GENERAR BOTON DE PAYPAL?</h4>
                                        <p class="card-description">
                                        </p>
                                        <a href="https://www.sandbox.paypal.com/mep/dashboard" TARGET="_BLANK" class="btn btn-danger btn-round">Crear Boton Paypal</a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <footer class="footer">
                    <div class="container-fluid">
                        <nav class="float-left">
                            <ul>
                                <li>
                                    <a href="#">
                                        Idea Creativa
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        Sobre nosotros
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        Blog
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        Licencia
                                    </a>
                                </li>
                            </ul>
                        </nav>
                        <div class="copyright float-right">
                            &copy;
                            <script>
                                document.write(new Date().getFullYear())
                            </script>, hecho con <i class="material-icons">favorite</i> por
                            <a href="https://www.creative-tim.com" target="_blank">ADSI 1963923</a> para una mejor progreso.
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        
        
        <div class="fixed-plugin">
            <div class="dropdown show-dropdown">
                <a href="#" data-toggle="dropdown">
                    <i class="fa fa-cog fa-2x"> </i>
                </a>
                <ul class="dropdown-menu">
                    <li class="header-title"> Sidebar Filters</li>
                    <li class="adjustments-line">
                        <a href="javascript:void(0)" class="switch-trigger active-color">
                            <div class="badge-colors ml-auto mr-auto">
                                <span class="badge filter badge-purple" data-color="purple"></span>
                                <span class="badge filter badge-azure" data-color="azure"></span>
                                <span class="badge filter badge-green" data-color="green"></span>
                                <span class="badge filter badge-warning" data-color="orange"></span>
                                <span class="badge filter badge-danger" data-color="danger"></span>
                                <span class="badge filter badge-rose active" data-color="rose"></span>
                            </div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li class="header-title">Images</li>
                    <li class="active">
                        <a class="img-holder switch-trigger" href="javascript:void(0)">
                            <img src="images/sidebar-1.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a class="img-holder switch-trigger" href="javascript:void(0)">
                            <img src="images/sidebar-2.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a class="img-holder switch-trigger" href="javascript:void(0)">
                            <img src="images/sidebar-3.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a class="img-holder switch-trigger" href="javascript:void(0)">
                            <img src="images/sidebar-4.jpg" alt="">
                        </a>
                    </li>
                    <li class="button-container">
                        <a href="https://www.creative-tim.com/product/material-dashboard" target="_blank" class="btn btn-primary btn-block">Free Download</a>
                    </li>
                    <!-- <li class="header-title">Want more components?</li>
                        <li class="button-container">
                            <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                              Get the pro version
                            </a>
                        </li> -->
                    <li class="header-title">Pagina en Facebook!</li>
                    <li class="button-container text-center">
                        <button id="twitter" class="btn btn-round btn-twitter"><i class="fa fa-twitter"></i> &middot; 45</button>
                        <button id="facebook" class="btn btn-round btn-facebook"><i class="fa fa-facebook-f"></i> &middot; 50</button>
                        <br>
                        <br>
                    </li>
                </ul>
            </div>
        </div>
        <!--   Core JS Files   -->
        <script src="js/materialize.js" type="text/javascript"></script>
        <script src="js/materialize.min.js" type="text/javascript"></script>
        <script src="js/main2.js" type="text/javascript"></script>
        <script src="js/core/jquery.min.js"></script>
        <script src="js/core/popper.min.js"></script>
        <script src="js/core/bootstrap-material-design.min.js"></script>
        <script src="js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <!-- Plugin for the momentJs  -->
        <script src="js/plugins/moment.min.js"></script>
        <!--  Plugin for Sweet Alert -->
        <script src="js/plugins/sweetalert2.js"></script>
        <!-- Forms Validations Plugin -->
        <script src="js/plugins/jquery.validate.min.js"></script>
        <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
        <script src="js/plugins/jquery.bootstrap-wizard.js"></script>
        <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
        <script src="js/plugins/bootstrap-selectpicker.js"></script>
        <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
        <script src="js/plugins/bootstrap-datetimepicker.min.js"></script>
        <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
        <script src="js/plugins/jquery.dataTables.min.js"></script>
        <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
        <script src="js/plugins/bootstrap-tagsinput.js"></script>
        <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
        <script src="js/plugins/jasny-bootstrap.min.js"></script>
        <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
        <script src="js/plugins/fullcalendar.min.js"></script>
        <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
        <script src="js/plugins/jquery-jvectormap.js"></script>
        <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
        <script src="js/plugins/nouislider.min.js"></script>
        <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
        <!-- Library for adding dinamically elements -->
        <script src="js/plugins/arrive.min.js"></script>
        <!--  Google Maps Plugin    -->
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
        <!-- Chartist JS -->
        <script src="js/plugins/chartist.min.js"></script>
        <!--  Notifications Plugin    -->
        <script src="js/plugins/bootstrap-notify.js"></script>
        <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="js/material-dashboard.js?v=2.1.2" type="text/javascript"></script>
        <!-- Material Dashboard DEMO methods, don't include it in your project! -->
        <script src="demo/demo.js"></script>
        <script>
                                $(document).ready(function () {
                                    $().ready(function () {
                                        $sidebar = $('.sidebar');

                                        $sidebar_img_container = $sidebar.find('.sidebar-background');

                                        $full_page = $('.full-page');

                                        $sidebar_responsive = $('body > .navbar-collapse');

                                        window_width = $(window).width();

                                        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

                                        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
                                            if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
                                                $('.fixed-plugin .dropdown').addClass('open');
                                            }

                                        }

                                        $('.fixed-plugin a').click(function (event) {
                                            // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
                                            if ($(this).hasClass('switch-trigger')) {
                                                if (event.stopPropagation) {
                                                    event.stopPropagation();
                                                } else if (window.event) {
                                                    window.event.cancelBubble = true;
                                                }
                                            }
                                        });

                                        $('.fixed-plugin .active-color span').click(function () {
                                            $full_page_background = $('.full-page-background');

                                            $(this).siblings().removeClass('active');
                                            $(this).addClass('active');

                                            var new_color = $(this).data('color');

                                            if ($sidebar.length != 0) {
                                                $sidebar.attr('data-color', new_color);
                                            }

                                            if ($full_page.length != 0) {
                                                $full_page.attr('filter-color', new_color);
                                            }

                                            if ($sidebar_responsive.length != 0) {
                                                $sidebar_responsive.attr('data-color', new_color);
                                            }
                                        });

                                        $('.fixed-plugin .background-color .badge').click(function () {
                                            $(this).siblings().removeClass('active');
                                            $(this).addClass('active');

                                            var new_color = $(this).data('background-color');

                                            if ($sidebar.length != 0) {
                                                $sidebar.attr('data-background-color', new_color);
                                            }
                                        });

                                        $('.fixed-plugin .img-holder').click(function () {
                                            $full_page_background = $('.full-page-background');

                                            $(this).parent('li').siblings().removeClass('active');
                                            $(this).parent('li').addClass('active');


                                            var new_image = $(this).find("img").attr('src');

                                            if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                                                $sidebar_img_container.fadeOut('fast', function () {
                                                    $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                                                    $sidebar_img_container.fadeIn('fast');
                                                });
                                            }

                                            if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                                                var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                                                $full_page_background.fadeOut('fast', function () {
                                                    $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                                                    $full_page_background.fadeIn('fast');
                                                });
                                            }

                                            if ($('.switch-sidebar-image input:checked').length == 0) {
                                                var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                                                var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                                                $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                                                $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                                            }

                                            if ($sidebar_responsive.length != 0) {
                                                $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
                                            }
                                        });

                                        $('.switch-sidebar-image input').change(function () {
                                            $full_page_background = $('.full-page-background');

                                            $input = $(this);

                                            if ($input.is(':checked')) {
                                                if ($sidebar_img_container.length != 0) {
                                                    $sidebar_img_container.fadeIn('fast');
                                                    $sidebar.attr('data-image', '#');
                                                }

                                                if ($full_page_background.length != 0) {
                                                    $full_page_background.fadeIn('fast');
                                                    $full_page.attr('data-image', '#');
                                                }

                                                background_image = true;
                                            } else {
                                                if ($sidebar_img_container.length != 0) {
                                                    $sidebar.removeAttr('data-image');
                                                    $sidebar_img_container.fadeOut('fast');
                                                }

                                                if ($full_page_background.length != 0) {
                                                    $full_page.removeAttr('data-image', '#');
                                                    $full_page_background.fadeOut('fast');
                                                }

                                                background_image = false;
                                            }
                                        });

                                        $('.switch-sidebar-mini input').change(function () {
                                            $body = $('body');

                                            $input = $(this);

                                            if (md.misc.sidebar_mini_active == true) {
                                                $('body').removeClass('sidebar-mini');
                                                md.misc.sidebar_mini_active = false;

                                                $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

                                            } else {

                                                $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                                                setTimeout(function () {
                                                    $('body').addClass('sidebar-mini');

                                                    md.misc.sidebar_mini_active = true;
                                                }, 300);
                                            }

                                            // we simulate the window Resize so the charts will get updated in realtime.
                                            var simulateWindowResize = setInterval(function () {
                                                window.dispatchEvent(new Event('resize'));
                                            }, 180);

                                            // we stop the simulation of Window Resize after the animations are completed
                                            setTimeout(function () {
                                                clearInterval(simulateWindowResize);
                                            }, 1000);

                                        });
                                    });
                                });
        </script>
    </body>
</html>
<%
        } else {
            response.sendRedirect("AdminPanel/error403_2.jsp");
        }
    }
%>