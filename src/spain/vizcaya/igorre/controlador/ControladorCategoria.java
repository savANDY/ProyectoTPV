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

	public ArrayList<Categoria> todasCategorias() {

		ArrayList<Categoria> categorias = new ArrayList<Categoria>();

		try {

			categorias = modeloCategoria.seleccionarTodas();
			return categorias;

		} catch (Exception e) {
			System.out.println("No se han podido recuperar las categorias de la BBDD" + e.getMessage());
			// e.printStackTrace();
			// e.getMessage();
			return categorias;
		}
		
	}

}
