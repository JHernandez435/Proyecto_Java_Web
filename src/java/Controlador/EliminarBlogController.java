/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.BlogImplement;
import Modelo.Blog;
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
public class EliminarBlogController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getParameter("id") != null) {
            int id = Integer.parseInt(req.getParameter("id"));
            PrintWriter salida = resp.getWriter();
            Blog b = new Blog();
            b.setIdblog(id);
            BlogImplement bi = new BlogImplement();
            int valor = bi.eliminarBlog(id, b);
            if (valor > 0) {
                resp.sendRedirect("AdminPanel/listadoBlog.jsp");
            } else {
                salida.print("No fué posible Elimnar el registro" + id);
            }
        }
    }

}