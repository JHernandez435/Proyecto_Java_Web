package Controlador;

import DAO.MedicamentoImplement;
import Modelo.Medicamento;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ActualizarMedicamentoController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("id") != null) {
            int idmedicamento = Integer.parseInt(req.getParameter("id"));
            //permite imprimir en la página web
            PrintWriter salida = resp.getWriter();

            String imagenP;
            String imagenD;
            String codigo;
            String nombre;
            Date fechaE;
            Date fechaV;
            Double precio;
            String paypal;
            int categoria;

            SimpleDateFormat formato = new SimpleDateFormat("yyyy-dd-MM");
            Medicamento m = new Medicamento();
            imagenP = req.getParameter("rutaP");
            imagenD = req.getParameter("rutaD");
            codigo = req.getParameter("codigo");
            nombre = req.getParameter("nombre");
            paypal = req.getParameter("paypal");
            categoria = Integer.parseInt(req.getParameter("categoria"));
            precio = Double.parseDouble(req.getParameter("precio"));

            try {
                fechaE = formato.parse(req.getParameter("fechaE"));
                fechaV = formato.parse(req.getParameter("fechaV"));

                m.setFechaE(fechaE);
                m.setFechaV(fechaV);

            } catch (Exception e) {
            }
            
            if (imagenP.contains("images/home/")) {
                m.setImagenP(imagenP);
            }else {
                m.setImagenP("images/home/" + imagenP);
            }
             if (imagenD.contains("images/portfolio/")) {
                m.setImagenD(imagenD);
            }else {
                m.setImagenD("images/portfolio/" + imagenD);
            }
            m.setCodigo(codigo);
            m.setNombre(nombre);
            m.setPrecio(precio);
            m.setPaypal(paypal);
            m.setCategoria(categoria);

            MedicamentoImplement mi = new MedicamentoImplement();
            int valor = mi.actualizarMedicamento(idmedicamento, m);

            if (valor > 0) {
                resp.sendRedirect("AdminPanel/listadoMedicamento.jsp");
            } else {
                salida.print("No fué posible ingresar el registro" + " " + m.getFechaE() + " " + m.getImagenP() + " " + m.getImagenD());
            }
        }

    }

}
