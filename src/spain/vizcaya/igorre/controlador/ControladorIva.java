package spain.vizcaya.igorre.controlador;

import java.util.ArrayList;

import spain.vizcaya.igorre.modelo.clase.Iva;
import spain.vizcaya.igorre.modelo.clase.Proveedor;
import spain.vizcaya.igorre.modelo.modelo.ModeloIva;
import spain.vizcaya.igorre.modelo.modelo.ModeloProducto;

public class ControladorIva {
	
	private ModeloIva modeloIva;
	
	public ControladorIva() {
		super();
		modeloIva = new ModeloIva();
	}

	public Iva seleccionarPorId(int idIva){
		Iva iva = new Iva();
		
		iva = modeloIva.seleccionarPorId(idIva);
		
		return iva;
	}
	
	public ArrayList<Iva> todasIvas() throws Exception {

		ArrayList<Iva> ivas;

		try {

			ivas = modeloIva.seleccionarTodas();
			return ivas;

		} catch (Exception e) {
			throw e;
			// e.printStackTrace();
			// e.getMessage();
		}
	}
	
	public int seleccionarCantidadPorId(int idIva){
		int cantidad = 0;
		try {
			cantidad = modeloIva.seleccionarCantidadPorId(idIva);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cantidad;
	}
	
}
