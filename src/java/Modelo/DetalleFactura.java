package Modelo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author JFERNANDOHA
 */
@Entity
@Table(name="detallefactura")
public class DetalleFactura implements Serializable{

    @Id
    @ManyToOne (fetch = FetchType.LAZY)
    @JoinColumn(name = "idfactura")
    private Factura factura;
    @Id
    @ManyToOne (fetch = FetchType.LAZY)
    @JoinColumn(name = "idmedicamento")
    private Medicamento medicamento;
    private int cantidad;
    private Double total;

    public DetalleFactura(Factura factura, Medicamento medicamento, int cantidad, Double total) {
        this.factura = factura;
        this.medicamento = medicamento;
        this.cantidad = cantidad;
        this.total = total;
    }

    public DetalleFactura() {
    }

    public Factura getFactura() {
        return factura;
    }

    public void setFactura(Factura factura) {
        this.factura = factura;
    }

    public Medicamento getMedicamento() {
        return medicamento;
    }

    public void setMedicamento(Medicamento medicamento) {
        this.medicamento = medicamento;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }
    
    @Override
    public String toString() {
        return cantidad + " " + total;
    }
}
