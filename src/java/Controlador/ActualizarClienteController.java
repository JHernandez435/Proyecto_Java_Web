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
public class ActualizarClienteController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("id") != null) {
            int id = Integer.parseInt(req.getParameter("id"));
            PrintWriter salida = resp.getWriter();
            
            String tiporol;
            String cedula;
            String user;
            String password;
            String email;
            String nombre;
            String apellido;
            String telefono;
            
            tiporol = req.getParameter("tiporol");
            cedula = req.getParameter("cedula");
            user = req.getParameter("user");
            password = req.getParameter("password");
            email = req.getParameter("email");
            nombre = req.getParameter("nombre");
            apellido = req.getParameter("apellido");
            telefono = req.getParameter("telefono");
            
            Usuario u = new Usuario();
            u.setTiporol(tiporol);
            u.setUser(user);
            u.setPassword(password);
            u.setEmail(email);
            u.setCedula(cedula);
            u.setNombre(nombre);
            u.setApellido(apellido);
            u.setTelefono(Double.parseDouble(telefono));
            
            UsuarioImplement ui = new UsuarioImplement();
            int valor = ui.actualizarUsuario(id, u);
            if (valor > 0) {
                resp.sendRedirect("AdminPanel/perfilCliente.jsp");
            } else {
                salida.print("No fué posible eliminar el registro" + id + nombre + telefono);
            }
        }
    }

}

