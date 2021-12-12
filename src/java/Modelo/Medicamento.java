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
public class Medicamento {
    
    @Id
    @GeneratedValue
    private int idmedicamento;
    private String codigo;
    private String nombre;
    private Date fechaE;
    private Date fechaV;
    private Double precio;
    private String imagenP;
    private String imagenD;
    private String paypal;
    private int categoria;

    public Medicamento(int idmedicamento, String codigo, String nombre, Date fechaE, Date fechaV,
            Double precio, String imagenP,String imagenD, String paypal, int categoria) {
        
        this.idmedicamento = idmedicamento;
        this.codigo = codigo;
        this.nombre = nombre;
        this.fechaE = fechaE;
        this.fechaV = fechaV;
        this.precio = precio;
        this.imagenP = imagenP;
        this.imagenD = imagenD;
        this.paypal = paypal;
        this.categoria = categoria;
    }

    public Medicamento() {
    }

    public int getIdmedicamento() {
        return idmedicamento;
    }

    public void setIdmedicamento(int idmedicamento) {
        this.idmedicamento = idmedicamento;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFechaE() {
        return fechaE;
    }

    public void setFechaE(Date fechaE) {
        this.fechaE = fechaE;
    }

    public Date getFechaV() {
        return fechaV;
    }

    public void setFechaV(Date fechaV) {
        this.fechaV = fechaV;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getImagenP() {
        return imagenP;
    }

    public void setImagenP(String imagenP) {
        this.imagenP = imagenP;
    }

    public String getImagenD() {
        return imagenD;
    }

    public void setImagenD(String imagenD) {
        this.imagenD = imagenD;
    }

    public String getPaypal() {
        return paypal;
    }

    public void setPaypal(String paypal) {
        this.paypal = paypal;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }
    
    @Override
    public String toString() {
        return codigo + " " + nombre;
    }
    
}
