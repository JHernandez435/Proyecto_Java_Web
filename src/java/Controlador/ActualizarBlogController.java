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
public class ActualizarBlogController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("id") != null) {
            int idblog = Integer.parseInt(req.getParameter("id"));
            //permite imprimir en la página web
            PrintWriter salida = resp.getWriter();

            String imagenB;
            String codigo;
            Date fechaB;
            String texto;

            SimpleDateFormat formato = new SimpleDateFormat("yyyy-dd-MM");
            Blog b = new Blog();
            imagenB = req.getParameter("imagenB");
            codigo = req.getParameter("codigo");
            texto = req.getParameter("texto");

            try {
                fechaB = formato.parse(req.getParameter("fechaB"));

                b.setFechaB(fechaB);

            } catch (Exception e) {
            }
            
            if (imagenB.contains("images/blog/")) {
                b.setImagenB(imagenB);
            }else {
                b.setImagenB("images/blog/" + imagenB);
            }
          
            b.setCodigo(codigo);
            b.setTexto(texto);

            BlogImplement bi = new BlogImplement();
            int valor = bi.actualizarBlog(idblog, b);

            if (valor > 0) {
                resp.sendRedirect("AdminPanel/listadoBlog.jsp");
            } else {
                salida.print("No fué posible ingresar el registro" + " " + b.getFechaB() + " " + b.getImagenB());
            }
        }

    }

}
