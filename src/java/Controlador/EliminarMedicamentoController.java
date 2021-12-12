package Controlador;

import DAO.MedicamentoImplement;
import Modelo.Medicamento;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EliminarMedicamentoController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getParameter("id") != null) {
            int id = Integer.parseInt(req.getParameter("id"));
            PrintWriter salida = resp.getWriter();
            Medicamento m = new Medicamento();
            m.setIdmedicamento(id);
            MedicamentoImplement mi = new MedicamentoImplement();
            int valor = mi.eliminarMedicamento(id, m);
            if (valor > 0) {
                resp.sendRedirect("AdminPanel/listadoMedicamento.jsp");
            } else {
                salida.print("No fué posible Elimnar el registro" + id);
            }
        }
    }

}