/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.UsuarioImplement;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author JFERNANDOHA
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cedula;
        String user;
        String password;
        String tiporol;

        HttpSession ss = req.getSession();
        user = req.getParameter("user");
        password = req.getParameter("passworde");
        tiporol = req.getParameter("tiporol");

        PrintWriter salida = resp.getWriter();
        Usuario u = new Usuario();
        u.setUser(user);
        u.setPassword(password);
        u.setTiporol(tiporol);

        UsuarioImplement ui = new UsuarioImplement();
        int valorLogin = ui.login(u);

        if (valorLogin == 0 && ss.getAttribute("user") == null) {
            ss.setAttribute("error", "error");
            ss.invalidate();
            resp.sendRedirect("inicio.jsp");
        }

        if (valorLogin == 1 && ss.getAttribute("user") == null) {
            ss.setMaxInactiveInterval(60 * 5000);
            ss.setAttribute("user", user);
            ss.setAttribute("tiporol", tiporol);
            resp.sendRedirect("ventanaCliente.jsp");
        }
        if (valorLogin == 2 && ss.getAttribute("user") == null) {
            ss.setMaxInactiveInterval(60 * 5000);
            ss.setAttribute("user", user);
            ss.setAttribute("tiporol", tiporol);
            resp.sendRedirect("ventanaDoctor.jsp");
        }
        if (valorLogin == 3 && ss.getAttribute("user") == null) {
            ss.setMaxInactiveInterval(60 * 5000);
            ss.setAttribute("user", user);
            ss.setAttribute("tiporol", tiporol);
            resp.sendRedirect("ventanaAdministrador.jsp");
        }
    }
}
