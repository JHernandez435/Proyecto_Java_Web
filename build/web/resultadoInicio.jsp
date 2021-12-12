<%-- 
    Document   : resultado
    Created on : 15/08/2020, 05:15:30 PM
    Author     : JFERNANDOHA
--%>

<%@page import="Modelo.Email"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RESULTADO CORREO ELECTRONICO</title>
    </head>
    <body>
        <%
            
            Email email = new Email();
            
            String de = request.getParameter("de");
            String clave = request.getParameter("clave");
            String para = request.getParameter("para");
            String detalle = request.getParameter("mensaje");
            String asunto = request.getParameter("asunto");
            String correo = request.getParameter("correo");
            String mensaje = correo + " " + detalle;
            
            /* 
                
                String[] direcciones = {"correo numero 1","correo numero 2","correo numero 3","correo ..."}
                boolean resultado = email.enviarCorreo(de, clave, direcciones, mensaje, asunto);
            
            */
            
            boolean resultado = email.enviarCorreo(de, clave, para, mensaje, asunto);
            
            if(resultado){
                request.getRequestDispatcher("inicio.jsp").forward(request, response);
            }else{
                out.print("CORREO ELECTRONICO NO ENVIADO....."+" "+"<a href='#'>VOLVER AL INDEX</a>"); 
            }
            
        %>
    </body>
</html>