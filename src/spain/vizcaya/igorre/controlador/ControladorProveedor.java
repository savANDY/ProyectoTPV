package spain.vizcaya.igorre.controlador;

import spain.vizcaya.igorre.modelo.modelo.ModeloProveedor;

public class ControladorProveedor {

	private ModeloProveedor modeloProveedor;

	public ControladorProveedor() {
		super();
		modeloProveedor = new ModeloProveedor();
	}
	
	
	public String seleccionarNombrePorId(int idProveedor){
		String nombreCat = "";
		try {
			nombreCat = modeloProveedor.seleccionarNombrePorId(idProveedor);
		} catch (Exception e) {
			System.out.println("Error al seleccionar nombre de la categoria");
		}
		return nombreCat;
	}
	
}
