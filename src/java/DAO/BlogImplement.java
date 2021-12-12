package DAO;

import Modelo.Blog;
import Modelo.Medicamento;
import java.util.ArrayList;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class BlogImplement implements BlogInterface {

    SessionFactory sf;
    Session ss;
    Transaction tr;

    //Constructor
    public BlogImplement() {
        sf = HelpClass.SessionFact.getSessionFact();
        ss = sf.openSession();
    }

    @Override
    public int InsertarBlog(Blog b) {

        tr = ss.beginTransaction();
        System.err.println(b.getCodigo() + " " + b.getFechaB());
        int i = (Integer) ss.save(b);
        tr.commit();
        if (i > 0) {
            return 1;
        } else {
            return 0;
        }

    }

    @Override
    public ArrayList listarBlog() {
        tr = ss.beginTransaction();
        String hql = "from Modelo.Blog";
        Query consulta = ss.createQuery(hql);
        ArrayList<Blog> listadoBlog = (ArrayList<Blog>) consulta.list();

        if (listadoBlog.size() > 0) {
            return listadoBlog;
        } else {
            return null;
        }
    }
    
    @Override
    public ArrayList buscarBlogPorCodigo(String codigo) {
        Criteria criterio = ss.createCriteria(Blog.class);
        criterio.add(Restrictions.like("codigo", "%" + codigo + "%"));
        ArrayList registro = (ArrayList) criterio.list();
        if (registro.size() > 0) {
            return registro;
        } else {
            return null;
        }

    }

     @Override
    public int actualizarBlog(int idblog, Blog b) {
        tr = ss.beginTransaction();
        b.setIdblog(idblog);
        try {
            ss.update(b);
            tr.commit();
            return idblog;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }
    

    @Override
    public Blog seleccionarBlog(int idblog) {
        Blog b = (Blog) ss.get(Blog.class, idblog);
        if (b != null) {
            return b;
        } else {
            return null;
        }

    }

    @Override
    public int eliminarBlog(int idblog, Blog b) {
        tr = ss.beginTransaction();
        b.setIdblog(idblog);
        try {
            ss.delete(b);
            tr.commit();
            return idblog;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }
}