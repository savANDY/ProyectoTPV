package spain.vizcaya.igorre.controlador;

import java.util.ArrayList;

import spain.vizcaya.igorre.modelo.clase.Producto;
import spain.vizcaya.igorre.modelo.modelo.ModeloProducto;

public class ControladorProducto {

	private ModeloProducto modeloProducto;

	public ControladorProducto() {
		super();
		modeloProducto = new ModeloProducto();
	}

	
	public void insertar(Producto producto) throws Exception{
		
		try {
			modeloProducto.insertar(producto);
		} catch (Exception e) {
			throw e;
		}
		 
	}
	
	public boolean modificar(Producto producto) throws Exception {
		try {
			if (modeloProducto.modificar(producto)){
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			throw e;
		}
	}
	
	public ArrayList<Producto> todosProductos() throws Exception {

		ArrayList<Producto> productos;

		try {

			productos = modeloProducto.seleccionarTodos();
			return productos;

		} catch (Exception e) {
			throw e;
			// e.printStackTrace();
			// e.getMessage();
		}
	}
	
	public ArrayList<Producto> buscarPorNombre(String nombre) throws Exception {

		ArrayList<Producto> productos;

		try {

			productos = modeloProducto.buscarPorNombre(nombre);
			return productos;

		} catch (Exception e) {
			throw e;
			// e.printStackTrace();
			// e.getMessage();
		}
	}
	
	public ArrayList<Producto> todosProductosPorPrecio() throws Exception {

		ArrayList<Producto> productos;

		try {

			productos = modeloProducto.seleccionarTodosPorPrecio();
			return productos;

		} catch (Exception e) {
			throw e;
			// e.printStackTrace();
			// e.getMessage();
		}
	}
	
	
	public ArrayList<Producto> productoPorCategoria(int idCategoria) {
		
		ArrayList<Producto> productos = new ArrayList<Producto>();

		try {

			productos = modeloProducto.seleccionarPorCategoria(idCategoria);
			return productos;

		} catch (Exception e) {
			System.out.println("No se han podido recuperar los productos de la BBDD" + e.getMessage());
			// e.printStackTrace();
			// e.getMessage();
			return productos;
		}
		
	}
	
	public Producto seleccionarPorId(int idProducto){
		Producto producto = new Producto();
		
		producto = modeloProducto.seleccionarPorId(idProducto);
		
		return producto;
	}
	
	public void borrarPorId(int idProducto) throws Exception{
		try {
			modeloProducto.borrarPorId(idProducto);
		} catch (Exception e) {
			System.out.println("Ha habido un error al intentar borrar un producto de la BBDD. " + e.getMessage());
			throw e;
			//e.printStackTrace();
		}
	}
	
	
}
