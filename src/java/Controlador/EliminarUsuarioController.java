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

/**
 *
 * @author JFERNANDOHA
 */
public class EliminarUsuarioController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("id") != null) {
            int id = Integer.parseInt(req.getParameter("id"));
            PrintWriter salida = resp.getWriter();
            /*String nombre;
            String apellido;
            String telefono;
            nombre = req.getParameter("nombre");
            apellido = req.getParameter("apellido");
            telefono = req.getParameter("telefono");*/
            Usuario u = new Usuario();
            /*c.setNombre(nombre);
            c.setApellido(apellido);
            c.setTelefono(Double.parseDouble(telefono));*/
            UsuarioImplement ui = new UsuarioImplement();
            int valor = ui.eliminarUsuario(id, u);
            if (valor > 0) {
                resp.sendRedirect("AdminPanel/listadoUsuario.jsp");
            } else {
                salida.print("No fué posible eliminar el registro" + id);
            }
        }
    }
}