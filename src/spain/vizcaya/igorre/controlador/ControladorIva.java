package spain.vizcaya.igorre.controlador;

import spain.vizcaya.igorre.modelo.clase.Iva;
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
