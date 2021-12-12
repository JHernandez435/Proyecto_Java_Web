package DAO;

import Modelo.Usuario;
import static java.lang.System.out;
import java.util.ArrayList;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author JFERNANDOHA
 */
public class UsuarioImplement implements UsuarioInterface {

    SessionFactory sf;
    Session ss;
    Transaction tr;

    //Constructor
    public UsuarioImplement() {
        sf = HelpClass.SessionFact.getSessionFact();
        ss = sf.openSession();
    }

    @Override
    public int insertarUsuario(Usuario u) {
        tr = ss.beginTransaction();
        System.err.println(u.getNombre() + " " + u.getApellido());
        int i = (Integer) ss.save(u);
        tr.commit();
        if (i > 0) {
            return 1;
        } else {
            return 0;
        }
    }
    

    @Override
    public ArrayList listarClientes(String cedula) {
        tr = ss.beginTransaction();
        String hql = "from Modelo.Usuario where usuario.cedula = cedula";
        Query consulta = ss.createQuery(hql);
        ArrayList<Usuario> listadoClientes = (ArrayList<Usuario>) consulta.list();

        if (listadoClientes.size() > 0) {
            return listadoClientes;
        } else {
            return null;
        }
    }
    
    
    @Override
    public ArrayList listarUsuarios() {
        tr = ss.beginTransaction();
        String hql = "from Modelo.Usuario";
        Query consulta = ss.createQuery(hql);
        ArrayList<Usuario> listadoUsuarios = (ArrayList<Usuario>) consulta.list();

        if (listadoUsuarios.size() > 0) {
            return listadoUsuarios;
        } else {
            return null;
        }
    }

    @Override
    public ArrayList buscarUsuarioPorUser(String user) {
        Criteria criterio = ss.createCriteria(Usuario.class);
        criterio.add(Restrictions.like("user", "%" + user + "%"));
        ArrayList registro = (ArrayList) criterio.list();
        if (registro.size() > 0) {
            return registro;
        } else {
            return null;
        }
    }
    
    @Override
    public ArrayList buscarUsuarioPorCedula(String cedula) {
        Criteria criterio = ss.createCriteria(Usuario.class);
        criterio.add(Restrictions.like("cedula", "%" + cedula + "%"));
        ArrayList registro = (ArrayList) criterio.list();
        if (registro.size() > 0) {
            return registro;
        } else {
            return null;
        }
    }

    @Override
    public int actualizarUsuario(int idusuario, Usuario u) {
        tr = ss.beginTransaction();
        u.setIdusuario(idusuario);
        try {
            ss.update(u);
            tr.commit();
            return idusuario;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    @Override
    public Usuario seleccionarUsuario(int idusuario) {
        Usuario u = (Usuario) ss.get(Usuario.class, idusuario);
        if (u != null) {
            return u;
        } else {
            return null;
        }
    }

    @Override
    public int eliminarUsuario(int idusuario, Usuario u) {
        tr = ss.beginTransaction();
        u.setIdusuario(idusuario);
        try {
            ss.delete(u);
            tr.commit();
            return idusuario;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    @Override
    public int login(Usuario u) {
        Criteria criterio = ss.createCriteria(Usuario.class);
        criterio.add(Restrictions.and(Restrictions.eq("user", u.getUser()), Restrictions.eq("password", u.getPassword())));
        ArrayList registro = (ArrayList) criterio.list();

        if (registro.size() > 0) {

            if ("Cliente".equals(u.getTiporol())) {
                return 1;
            }
            if ("Doctor".equals(u.getTiporol())) {
                return 2;
            }
            if ("Administrador".equals(u.getTiporol())) {
                return 3;
            }

        } else {
            out.print("Usuario incorrecto o Contraseña Incorrecta");
        }
        return 0;
    }

}
