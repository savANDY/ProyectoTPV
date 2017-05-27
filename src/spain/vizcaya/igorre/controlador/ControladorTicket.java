package spain.vizcaya.igorre.controlador;

import spain.vizcaya.igorre.modelo.modelo.ModeloTicket;

public class ControladorTicket {

	ModeloTicket modeloTicket = new ModeloTicket();
	
	public ControladorTicket() {
		super();
		modeloTicket = new ModeloTicket();
	}
	
	public int generarNuevoId(){
		
		int idNuevo = modeloTicket.recogerIdMasAlto() + 1;
		
		return idNuevo;
	}
	
	public void nuevoTicket(int idTicket, int idProducto) throws Exception{
		
		try {
			modeloTicket.nuevoTicket(idTicket, idProducto);
		} catch (Exception e) {
			throw (e);
		}
		
	}
	
}
