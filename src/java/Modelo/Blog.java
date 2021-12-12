package Modelo;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author JFERNANDOHA
 */
@Entity
public class Blog {

    @Id
    @GeneratedValue
    private int idblog;
    private String codigo;
    private Date fechaB;
    private String imagenB;
    private String texto;

    public Blog(int idblog, String codigo, Date fechaB, String imagenB, String imagenA, String texto) {
        this.idblog = idblog;
        this.codigo = codigo;
        this.fechaB = fechaB;
        this.imagenB = imagenB;
        this.texto = texto;
    }

    public Blog() {
    }

    public int getIdblog() {
        return idblog;
    }

    public void setIdblog(int idblog) {
        this.idblog = idblog;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public Date getFechaB() {
        return fechaB;
    }

    public void setFechaB(Date fechaB) {
        this.fechaB = fechaB;
    }

    public String getImagenB() {
        return imagenB;
    }

    public void setImagenB(String imagenB) {
        this.imagenB = imagenB;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    @Override
    public String toString() {
        return codigo + " " + fechaB;
    }

}
