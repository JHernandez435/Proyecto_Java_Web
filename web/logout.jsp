<%-- 
    Document   : logut
    Created on : 12/08/2020, 03:43:40 PM
    Author     : JFERNANDOHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            HttpSession ss = request.getSession();
            ss.invalidate();
            response.sendRedirect("inicio.jsp");
        %>
    </body>
</html>
