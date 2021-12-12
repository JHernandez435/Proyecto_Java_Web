package Modelo;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author JFERNANDOHA
 */
@Entity
public class Factura {
    
    @Id
    @GeneratedValue
    private int idfactura;
    private Date fecha;
    @ManyToOne (fetch = FetchType.LAZY)
    @JoinColumn(name = "idusuario")
    private Usuario usuario;
    private Double monto;

    
    public Factura(int idfactura,Date fecha,Double monto, Usuario usuario) {
        this.idfactura = idfactura;
        this.fecha = fecha;
        this.monto = monto;
        this.usuario = usuario;
    }

    public Factura() {
    }
    
    public int getIdfactura() {
        return idfactura;
    }

    public void setIdfactura(int idfactura) {
        this.idfactura = idfactura;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Double getMonto() {
        return monto;
    }

    public void setMonto(Double monto) {
        this.monto = monto;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    @Override
    public String toString() {
        return usuario + " " + fecha;
    }
    
}
