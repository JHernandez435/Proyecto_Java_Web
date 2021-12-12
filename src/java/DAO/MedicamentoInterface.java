
package DAO;

import Modelo.Medicamento;
import java.util.ArrayList;

public interface MedicamentoInterface {
     public int InsertarMedicamento (Medicamento m);
     public ArrayList listarMedicamento();
     public ArrayList listarMedicamentoCliente();
     public ArrayList listarMedicamentoDoctor();
     public ArrayList buscarMedicamentoPorCodigo(String codigo);
     public int actualizarMedicamento(int idmedicamento, Medicamento m);
     public Medicamento seleccionarMedicamento(int idmedicamento);
     public int eliminarMedicamento (int idmedicamento, Medicamento m);
}
