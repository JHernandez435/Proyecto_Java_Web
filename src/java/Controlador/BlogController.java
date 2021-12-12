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
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JFERNANDOHA
 */
public class BlogController extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String codigo;
        Date fechaB;
        String imagenB;
        String texto;

        PrintWriter salida = resp.getWriter();
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-dd-MM");
        Blog b = new Blog();

        try {
            codigo = req.getParameter("codigo");
            imagenB = req.getParameter("imagenB");
            texto= req.getParameter("texto");
            fechaB = formato.parse(req.getParameter("fechaB"));

            b.setCodigo(codigo);
            b.setFechaB(fechaB);
            b.setImagenB("images/blog/" + imagenB);
            b.setTexto(texto);

        } catch (Exception e) {
        }

        BlogImplement bi = new BlogImplement();
        int id = 0;
        id = bi.InsertarBlog(b);
        System.out.println("El id es " + id);
        if (id > 0) {
            resp.sendRedirect("AdminPanel/listadoBlog.jsp");
        } else {
            salida.print("No fué posible Ingresar el registro" + b.getFechaB() + " " + b.getCodigo());
        }
    }

}
