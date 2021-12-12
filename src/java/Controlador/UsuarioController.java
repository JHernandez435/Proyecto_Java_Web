package Controlador;

import DAO.UsuarioImplement;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JFERNANDOHA
 */
public class UsuarioController extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cedula;
        String nombre;
        String apellido;
        String telefono;
        String email;
        String tiporol;
        String user;
        String password;

        //permite imprimir en la página web
        PrintWriter salida = resp.getWriter();
       
        //Asigna el valor ingresado en la caja de texto nombre de mi página jsp
        cedula = req.getParameter("cedula");
        nombre = req.getParameter("nombre");
        apellido = req.getParameter("apellido");
        telefono = req.getParameter("telefono");
        email = req.getParameter("email");
        tiporol = req.getParameter("tiporol");
        user = req.getParameter("user");
        password = req.getParameter("passworde");

        Usuario u = new Usuario();
        u.setCedula(cedula);
        u.setNombre(nombre);
        u.setApellido(apellido);
        u.setTelefono(Double.parseDouble(telefono));
        u.setEmail(email);
        u.setTiporol(tiporol);
        u.setUser(user);
        u.setPassword(password);

        UsuarioImplement ui = new UsuarioImplement();
        int idusuario = 0;
        idusuario = ui.insertarUsuario(u);
        System.out.println("El id es " + idusuario);
        
        RequestDispatcher rd;
        rd=req.getRequestDispatcher("AdminPanel/listadoUsuario.jsp");
        rd.forward(req, resp);
        
        if (idusuario > 0) {
            resp.sendRedirect("AdminPanel/listadoUsuario.jsp");
        } else {
            salida.print("No fué posible Ingresar el registro" + idusuario + nombre + telefono);
        }
    }

}
