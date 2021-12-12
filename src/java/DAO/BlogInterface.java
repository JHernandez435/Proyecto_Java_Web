
package DAO;

import Modelo.Blog;
import java.util.ArrayList;

public interface BlogInterface {
    
     public int InsertarBlog (Blog b);
     public ArrayList listarBlog();
     public ArrayList buscarBlogPorCodigo(String codigo);
     public int actualizarBlog(int idblog, Blog b);
     public Blog seleccionarBlog(int idblog);
     public int eliminarBlog (int idblog, Blog b);
}
