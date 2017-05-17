package spain.vizcaya.igorre.controlador;

import java.util.ArrayList;


import spain.vizcaya.igorre.modelo.ModeloProducto;
import spain.vizcaya.igorre.modelo.Producto;

public class ControladorProducto {

	private ModeloProducto modeloProducto;

	public ControladorProducto() {
		super();
		modeloProducto = new ModeloProducto();
	}

	public ArrayList<Producto> todosProductos() throws Exception {

		ArrayList<Producto> categorias;

		try {

			categorias = modeloProducto.seleccionarTodos();
			return categorias;

		} catch (Exception e) {
			throw e;
			// e.printStackTrace();
			// e.getMessage();
		}
	}
	
}
