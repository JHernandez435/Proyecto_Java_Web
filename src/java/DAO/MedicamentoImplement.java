package DAO;

import Modelo.Medicamento;
import java.util.ArrayList;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class MedicamentoImplement implements MedicamentoInterface {

    SessionFactory sf;
    Session ss;
    Transaction tr;

    //Constructor
    public MedicamentoImplement() {
        sf = HelpClass.SessionFact.getSessionFact();
        ss = sf.openSession();
    }

    @Override
    public int InsertarMedicamento(Medicamento m) {

        tr = ss.beginTransaction();
        System.err.println(m.getCodigo() + " " + m.getNombre());
        int i = (Integer) ss.save(m);
        tr.commit();
        if (i > 0) {
            return 1;
        } else {
            return 0;
        }

    }

    @Override
    public ArrayList listarMedicamento() {
        tr = ss.beginTransaction();
        String hql = "from Modelo.Medicamento";
        Query consulta = ss.createQuery(hql);
        ArrayList<Medicamento> listadoMedicamento = (ArrayList<Medicamento>) consulta.list();

        if (listadoMedicamento.size() > 0) {
            return listadoMedicamento;
        } else {
            return null;
        }
    }

    @Override
    public ArrayList listarMedicamentoCliente() {
        tr = ss.beginTransaction();
        String hql = "from Modelo.Medicamento where categoria=1";
        Query consulta = ss.createQuery(hql);
        ArrayList<Medicamento> listadoMedicamentoCliente = (ArrayList<Medicamento>) consulta.list();

        if (listadoMedicamentoCliente.size() > 0) {
            return listadoMedicamentoCliente;
        } else {
            return null;
        }
    }

    @Override
    public ArrayList listarMedicamentoDoctor() {
        tr = ss.beginTransaction();
        String hql = "from Modelo.Medicamento where categoria=2";
        Query consulta = ss.createQuery(hql);
        ArrayList<Medicamento> listadoMedicamentoDoctor = (ArrayList<Medicamento>) consulta.list();

        if (listadoMedicamentoDoctor.size() > 0) {
            return listadoMedicamentoDoctor;
        } else {
            return null;
        }
    }

    @Override
    public ArrayList buscarMedicamentoPorCodigo(String codigo) {
        Criteria criterio = ss.createCriteria(Medicamento.class);
        criterio.add(Restrictions.like("codigo", "%" + codigo + "%"));
        ArrayList registro = (ArrayList) criterio.list();
        if (registro.size() > 0) {
            return registro;
        } else {
            return null;
        }

    }

     @Override
    public int actualizarMedicamento(int idmedicamento, Medicamento m) {
        tr = ss.beginTransaction();
        m.setIdmedicamento(idmedicamento);
        try {
            ss.update(m);
            tr.commit();
            return idmedicamento;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }
    

    @Override
    public Medicamento seleccionarMedicamento(int idmedicamento) {
        Medicamento m = (Medicamento) ss.get(Medicamento.class, idmedicamento);
        if (m != null) {
            return m;
        } else {
            return null;
        }

    }

    @Override
    public int eliminarMedicamento(int idmedicamento, Medicamento m) {
        tr = ss.beginTransaction();
        m.setIdmedicamento(idmedicamento);
        try {
            ss.delete(m);
            tr.commit();
            return idmedicamento;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }
}