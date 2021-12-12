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

public class MedicamentoController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String codigo;
        String nombre;
        Date fechaE;
        Date fechaV;
        String precio;
        String imagenP;
        String imagenD;
        String paypal;
        String categoria;

        PrintWriter salida = resp.getWriter();
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-dd-MM");
        Medicamento m = new Medicamento();

        try {
            codigo = req.getParameter("codigo");
            nombre = req.getParameter("nombre");
            precio = req.getParameter("precio");
            imagenP = req.getParameter("imagenP");
            imagenD = req.getParameter("imagenD");
            paypal = req.getParameter("paypal");
            categoria = req.getParameter("categoria");
            fechaE = formato.parse(req.getParameter("fechaE"));
            fechaV = formato.parse(req.getParameter("fechaV"));

            m.setFechaE(fechaE);
            m.setFechaV(fechaV);
            m.setCodigo(codigo);
            m.setNombre(nombre);
            m.setImagenP("images/home/" + imagenP);
            m.setImagenD("images/portfolio/" + imagenD);
            m.setPaypal(paypal);
            m.setPrecio(Double.parseDouble(precio));
            m.setCategoria(Integer.parseInt(categoria));

        } catch (Exception e) {
        }

        MedicamentoImplement mi = new MedicamentoImplement();
        int id = 0;
        id = mi.InsertarMedicamento(m);
        System.out.println("El id es " + id);
        if (id > 0) {
            resp.sendRedirect("AdminPanel/listadoMedicamento.jsp");
        } else {
            salida.print("No fué posible Ingresar el registro" + m.getFechaE() + " " + m.getPrecio());
        }
    }

}
