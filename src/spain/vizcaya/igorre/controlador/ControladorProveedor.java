package spain.vizcaya.igorre.controlador;

import java.util.ArrayList;

import spain.vizcaya.igorre.modelo.clase.Producto;
import spain.vizcaya.igorre.modelo.clase.Proveedor;
import spain.vizcaya.igorre.modelo.modelo.ModeloProveedor;

public class ControladorProveedor {

	private ModeloProveedor modeloProveedor;

	public ControladorProveedor() {
		super();
		modeloProveedor = new ModeloProveedor();
	}
		
	public ArrayList<Proveedor> todosProveedores() throws Exception {

		ArrayList<Proveedor> proveedores;

		try {

			proveedores = modeloProveedor.seleccionarTodos();
			return proveedores;

		} catch (Exception e) {
			throw e;
			// e.printStackTrace();
			// e.getMessage();
		}
	}
	
	public ArrayList<Proveedor> buscarPorNombre(String nombre) throws Exception {

		ArrayList<Proveedor> proveedores;

		try {

			proveedores = modeloProveedor.buscarPorNombre(nombre);
			return proveedores;

		} catch (Exception e) {
			throw e;
			// e.printStackTrace();
			// e.getMessage();
		}
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
