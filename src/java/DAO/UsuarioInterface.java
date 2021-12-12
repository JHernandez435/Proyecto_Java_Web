package DAO;

import Modelo.Usuario;
import java.util.ArrayList;

/**
 *
 * @author JFERNANDOHA
 */
public interface UsuarioInterface {
    
    public int insertarUsuario(Usuario u);
    public ArrayList listarClientes(String cedula);
    public ArrayList listarUsuarios();
    public ArrayList buscarUsuarioPorUser(String user);
    public ArrayList buscarUsuarioPorCedula(String cedula);
    public int actualizarUsuario(int idusuario, Usuario u);
    public Usuario seleccionarUsuario(int idusuario);
    public int eliminarUsuario(int idusuario, Usuario u);
    public int login(Usuario u);
    
}
