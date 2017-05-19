package spain.vizcaya.igorre.controlador;

import java.util.ArrayList;

import spain.vizcaya.igorre.modelo.Categoria;
import spain.vizcaya.igorre.modelo.ModeloCategoria;

public class ControladorCategoria {

	private ModeloCategoria modeloCategoria;

	public ControladorCategoria() {
		super();
		modeloCategoria = new ModeloCategoria();
	}

	public ArrayList<Categoria> todasCategorias() throws Exception {

		ArrayList<Categoria> categorias;

		try {

			categorias = modeloCategoria.seleccionarTodas();
			return categorias;

		} catch (Exception e) {
			throw e;
			// e.printStackTrace();
			// e.getMessage();
		}
	}

}
