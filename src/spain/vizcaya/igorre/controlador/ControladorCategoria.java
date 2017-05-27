package spain.vizcaya.igorre.controlador;

import java.util.ArrayList;

import spain.vizcaya.igorre.modelo.clase.Categoria;
import spain.vizcaya.igorre.modelo.clase.Producto;
import spain.vizcaya.igorre.modelo.modelo.ModeloCategoria;

public class ControladorCategoria {

	private ModeloCategoria modeloCategoria;

	public ControladorCategoria() {
		super();
		modeloCategoria = new ModeloCategoria();
	}

	
public void insertar(Categoria categoria) throws Exception{
		
		try {
			modeloCategoria.insertar(categoria);
		} catch (Exception e) {
			throw e;
		}
		
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
	
	public ArrayList<Categoria> buscarPorNombre(String nombre) {

		ArrayList<Categoria> categorias = new ArrayList<Categoria>();

		try {

			categorias = modeloCategoria.buscarPorNombre(nombre);
			return categorias;

		} catch (Exception e) {
			System.out.println("No se han podido recuperar las categorias de la BBDD" + e.getMessage());
			// e.printStackTrace();
			// e.getMessage();
			return categorias;
		}
		
	}
	
	public String seleccionarNombrePorId(int idCategoria){
		String nombreCat = "";
		try {
			nombreCat = modeloCategoria.seleccionarNombrePorId(idCategoria);
		} catch (Exception e) {
			System.out.println("Error al seleccionar nombre de la categoria");
		}
		return nombreCat;
	}

}
