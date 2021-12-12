<%-- 
    Document   : ventaPrueba
    Created on : 8/08/2020, 02:28:10 PM
    Author     : JFERNANDOHA
--%>
<%@page import="Modelo.Medicamento"%>
<%@page import="DAO.MedicamentoImplement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuario"%>
<%@page import="DAO.UsuarioImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession ss = request.getSession();
    if (ss.getAttribute("user") != null) {
        if (ss.getAttribute("tiporol").equals("Administrador")) {
%>
<html>
    <head>
        <title>Pharma Company | Administrador</title>
        <link rel="shortcut icon" href="../images/favicon.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" 
              
        <link href="../css/estilos2.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="../js/jquery-1.12.1.min.js"></script>
        <script type="text/javascript" src="../js/materialize.min.js"></script>
        <link href="../css/estilos2.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
        <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
        <link href="../css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
        <link href="../demo/demo.css" rel="stylesheet" />
        <link href="../css/material-dashboard.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="wrapper ">
            <div class="sidebar" data-color="green" data-background-color="black" data-image="../images/sidebar-1.jpg">
                <!--
                  Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
          
                  Tip 2: you can also add an image using data-image tag
                -->
                <div class="logo"><a href="http://www.creative-tim.com" class="simple-text logo-normal">
                        <img src="../images/logo.png" width="150" height="35" alt=""/>
                    </a></div>
                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <li class="nav-item  ">
                            <a class="nav-link" href="#">
                                <i class="material-icons">dashboard</i>
                                <p>Funciones</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="../ventanaAdministrador.jsp">
                                <i class="material-icons">person</i>
                                <p>Registrar Usuario</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="../crearMedicamento.jsp">
                                <i class="material-icons">person</i>
                                <p>Registrar Medicamento</p>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="listadoUsuario.jsp">
                                <i class="material-icons">content_paste</i>
                                <p>Lista de Usuarios</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="listadoMedicamento.jsp">
                                <i class="material-icons">content_paste</i>
                                <p>Lista de Medicamentos</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="listadoBlog.jsp">
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
                            <a class="card-title" href="javascript:;">PHARMA COMPANY</a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end">
                            <form class="navbar-form">
                                <div class="input-group no-border">
                                    <input type="text" value="" class="form-control" name="buscar" placeholder="CEDULA...">
                                    <button type="submit" class="btn btn-white btn-round btn-just-icon" name="boton_buscar">
                                        <i class="material-icons">search</i>
                                        <div class="ripple-container"></div>
                                    </button>
                                </div>
                            </form>
                            <ul class="navbar-nav">
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
                                        <a class="dropdown-item" href="perfilAdministrador.jsp">Perfil</a>
                                        <a class="dropdown-item" href="#">Ajustes</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="../logout.jsp">Cerrar Sesion</a>
                                    </div>
                                <li class="nav-item dropdown">
                                    <div class="search_box pull-right">
                                        <button class="switch" id="switch">
                                            <span><i class="fas fa-sun"></i></span>
                                            <span><i class="fas fa-moon"></i></span>
                                        </button>
                                    </div>
                                </li>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header card-header-success">
                                        <h4 class="card-title ">Usuario Encontrado</h4>
                                        <p class="card-category">Datos Encontrados</p>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <%
                                                if (request.getParameter("boton_buscar") != null) {
                                                    String valor = request.getParameter("buscar");
                                            %>
                                            <table class="table">
                                                <thead class=" text-primary">
                                                    <tr>
                                                        <th>Cedula</th>
                                                        <th>Nombre(s)</th>
                                                        <th>Apellido(s)</th>
                                                        <th>Telefóno</th>
                                                        <th>Correo Electronico</th>
                                                        <th>Rol Usuario</th>
                                                        <th>Usuario</th>
                                                        <th colspan="2">Acciones</th>
                                                    <tr>
                                                </thead>
                                                <%
                                                    UsuarioImplement ui = new UsuarioImplement();
                                                    ArrayList<Usuario> listadoUsuarios = new ArrayList<>();
                                                    listadoUsuarios = ui.buscarUsuarioPorCedula(valor);
                                                    for (Usuario u : listadoUsuarios) {
                                                %>
                                                <tr>
                                                    <td><%= u.getCedula()%></td>
                                                    <td><%= u.getNombre()%></td>
                                                    <td><%= u.getApellido()%></td>
                                                    <td><%= u.getTelefono()%></td>
                                                    <td><%= u.getEmail()%></td>
                                                    <td><%= u.getTiporol()%></td>
                                                    <td><%= u.getUser()%></td>
                                                    <td>
                                                        <form id="f1" action="actualizarUsuario.jsp" method="Post">
                                                            <input type="hidden" value="<%= u.getIdusuario()%>" name="id"></input>
                                                            <input type="submit" class="btn btn-success btn-round btn-just-icon" value="A"></input>
                                                        </form>
                                                    </td>
                                                    <td>
                                                        <form action="../EliminarUsuarioController" method="Post">
                                                            <div class="modal fade" id="<%= u.getCedula()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                                <div class="modal-dialog" role="document">
                                                                    <div class="modal-content">

                                                                        <div class="modal-body">
                                                                            <div class="card-body">
                                                                                <div class="table-responsive">
                                                                                    <table class="table table-hover">
                                                                                        <thead>
                                                                                        <th><center><h4>¿Desea Eliminar El Usuario?</h4></center><th>
                                                                                            </thead>                                                                                                                     
                                                                                        <tr>
                                                                                            <td>
                                                                                        <center>
                                                                                            <h2><%= u.getNombre()%></h2>
                                                                                            <br>
                                                                                            <br>
                                                                                            <div class="modal fade" id="<%= u.getCedula()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                                                                <div class="modal-dialog" role="document">
                                                                                                    <div class="modal-content">
                                                                                                        <h4 class="modal-title" id="myModalLabel">Medicamento Eliminado</h4>
                                                                                                        <div class="modal-body">                                                     
                                                                                                            <br>
                                                                                                            <button type="button" class="btn btn-warning btn-round" data-dismiss="modal" aria-label="Close">
                                                                                                                Aceptar
                                                                                                                <span aria-hidden="true"></span>
                                                                                                            </button>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <form action="../EliminarUsuarioController" method="Post">
                                                                                                <input type="hidden" value="<%=u.getIdusuario()%>" name="id">
                                                                                                <input  id="btn2" type="submit" class="btn btn-danger btn-round " value="Eliminar"></input>
                                                                                            </form>
                                                                                            <button type="button" class="btn btn-success btn-round" data-dismiss="modal" aria-label="Close">
                                                                                                Cancelar
                                                                                                <span aria-hidden="true"></span>
                                                                                            </button>
                                                                                        </center>

                                                                                        </td>

                                                                                        </tr>

                                                                                    </table>
                                                                                </div>
                                                                            </div>


                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <button type="button" class="btn btn-danger btn-round btn-just-icon" data-toggle="modal" data-target="#<%= u.getCedula()%>">
                                                                E
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                                <%
                                                    }
                                                %>
                                            </table>
                                            <%
                                                }
                                            %>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header card-header-success">
                                        <h4 class="card-title mt-0">Registro Completo De Usuarios</h4>
                                        <p class="card-category">Datos de los Usuarios</p>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Cedula</th>
                                                        <th>Nombre(s)</th>
                                                        <th>Apellido(s)</th>
                                                        <th>Telefóno</th>
                                                        <th>Correo Electronico</th>
                                                        <th>Rol Usuario</th>
                                                        <th>Usuario</th>
                                                        <th colspan="2">Acciones</th>
                                                    <tr>
                                                </thead>
                                                <%
                                                    UsuarioImplement ui = new UsuarioImplement();
                                                    ArrayList<Usuario> listadoUsuarios = new ArrayList<>();
                                                    listadoUsuarios = ui.listarUsuarios();
                                                    for (Usuario u : listadoUsuarios) {
                                                %>
                                                <tr>
                                                    <td><%= u.getCedula()%></td>
                                                    <td><%= u.getNombre()%></td>
                                                    <td><%= u.getApellido()%></td>
                                                    <td><%= u.getTelefono()%></td>
                                                    <td><%= u.getEmail()%></td>
                                                    <td><%= u.getTiporol()%></td>
                                                    <td><%= u.getUser()%></td>
                                                    <td>
                                                        <form action="actualizarUsuario.jsp" method="Post">
                                                            <input type="hidden" value="<%= u.getIdusuario()%>" name="id"></input>
                                                            <input type="submit" class="btn btn-success btn-round btn-just-icon" value="A"></input>
                                                        </form>
                                                    </td>
                                                    <td>
                                                        <div>
                                                        </div>
                                                        <form action="../EliminarUsuarioController" method="Post">
                                                            <div class="modal fade" id="<%= u.getCedula()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                                <div class="modal-dialog" role="document">
                                                                    <div class="modal-content">

                                                                        <div class="modal-body">
                                                                            <div class="card-body">
                                                                                <div class="table-responsive">
                                                                                    <table class="table table-hover">
                                                                                        <thead>
                                                                                        <th><center><h4>¿Desea Eliminar El Usuario?</h4></center><th>
                                                                                            </thead>                                                                                                                     
                                                                                        <tr>
                                                                                            <td>
                                                                                        <center>
                                                                                            <h2><%= u.getNombre()%></h2>
                                                                                            <br>
                                                                                            <br>
                                                                                            <div class="modal fade" id="<%= u.getCedula()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                                                                <div class="modal-dialog" role="document">
                                                                                                    <div class="modal-content">
                                                                                                        <h4 class="modal-title" id="myModalLabel">Medicamento Eliminado</h4>
                                                                                                        <div class="modal-body">                                                     
                                                                                                            <br>
                                                                                                            <button type="button" class="btn btn-warning btn-round" data-dismiss="modal" aria-label="Close">
                                                                                                                Aceptar
                                                                                                                <span aria-hidden="true"></span>
                                                                                                            </button>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <form action="../EliminarMedicamentoController" method="Post">
                                                                                                <input type="hidden" value="<%=u.getIdusuario()%>" name="id">
                                                                                                <input  id="btn2" type="submit" class="btn btn-danger btn-round " value="Eliminar"></input>
                                                                                            </form>

                                                                                            <button type="button" class="btn btn-success btn-round" data-dismiss="modal" aria-label="Close">
                                                                                                Cancelar
                                                                                                <span aria-hidden="true"></span>
                                                                                            </button>
                                                                                        </center>
                                                                                        </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <button type="button" class="btn btn-danger btn-round btn-just-icon" data-toggle="modal" data-target="#<%= u.getCedula()%>">
                                                                E
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                                <%
                                                    }
                                                %>
                                            </table>
                                        </div>
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
                            <img src="../images/sidebar-1.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a class="img-holder switch-trigger" href="javascript:void(0)">
                            <img src="../images/sidebar-2.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a class="img-holder switch-trigger" href="javascript:void(0)">
                            <img src="../images/sidebar-3.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a class="img-holder switch-trigger" href="javascript:void(0)">
                            <img src="../images/sidebar-4.jpg" alt="">
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
        <script src="../js/main2.js" type="text/javascript"></script>
        <script src="../js/core/jquery.min.js"></script>
        <script src="../js/core/popper.min.js"></script>
        <script src="../js/core/bootstrap-material-design.min.js"></script>
        <script src="../js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <!-- Plugin for the momentJs  -->
        <script src="../js/plugins/moment.min.js"></script>
        <!--  Plugin for Sweet Alert -->
        <script src="../js/plugins/sweetalert2.js"></script>
        <!-- Forms Validations Plugin -->
        <script src="../js/plugins/jquery.validate.min.js"></script>
        <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
        <script src="../js/plugins/jquery.bootstrap-wizard.js"></script>
        <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
        <script src="../js/plugins/bootstrap-selectpicker.js"></script>
        <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
        <script src="../js/plugins/bootstrap-datetimepicker.min.js"></script>
        <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
        <script src="../js/plugins/jquery.dataTables.min.js"></script>
        <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
        <script src="../js/plugins/bootstrap-tagsinput.js"></script>
        <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
        <script src="../js/plugins/jasny-bootstrap.min.js"></script>
        <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
        <script src="../js/plugins/fullcalendar.min.js"></script>
        <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
        <script src="../js/plugins/jquery-jvectormap.js"></script>
        <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
        <script src="../js/plugins/nouislider.min.js"></script>
        <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
        <!-- Library for adding dinamically elements -->
        <script src="../js/plugins/arrive.min.js"></script>
        <!--  Google Maps Plugin    -->
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
        <!-- Chartist JS -->
        <script src="../js/plugins/chartist.min.js"></script>
        <!--  Notifications Plugin    -->
        <script src="../js/plugins/bootstrap-notify.js"></script>
        <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="../js/material-dashboard.js?v=2.1.2" type="text/javascript"></script>
        <!-- Material Dashboard DEMO methods, don't include it in your project! -->
        <script src="../demo/demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script src="../js/sweetAlert.js" type="text/javascript"></script>

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
            response.sendRedirect("../error403_2.jsp");
        }
    }
%>  