package spain.vizcaya.igorre.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ModeloProducto extends Conectar {

	public ModeloProducto() {
		super();
	}

	public ArrayList<Producto> seleccionarTodos() throws Exception {


		PreparedStatement pst;
		Producto producto;

		try {
			pst = cn.prepareStatement("select * from producto");

			ResultSet rs = pst.executeQuery();// ejecuta

			// pasar de ResultSet a ArrayList

			ArrayList<Producto> productos = new ArrayList<Producto>();
			
			while (rs.next()) {
				producto = new Producto();
				producto.setId(Integer.parseInt(rs.getString(1)));
				producto.setNombre(rs.getString(2));
				producto.setCategoria(Integer.parseInt(rs.getString(3)));
				producto.setProveedor(Integer.parseInt(rs.getString(4)));
				producto.setPrecioCompra(Double.parseDouble(rs.getString(5)));
				producto.setPrecioVenta(Double.parseDouble(rs.getString(6)));
				producto.setImagen(rs.getString(7));
				producto.setColor(rs.getString(8));

				productos.add(producto);
			}
			return productos;

		} catch (Exception e) {
			throw e;
		}

	}

	public ArrayList<Producto> seleccionarPorCategoria(int idCategoria) {
		PreparedStatement ps;
		Producto producto;
		try {
			ps = cn.prepareStatement("select * from producto where categoria = ?");
			ps.setInt(1, idCategoria);

			ResultSet rs = ps.executeQuery();
			
			ArrayList<Producto> productos = new ArrayList<Producto>();

			while (rs.next()) {
				producto = new Producto();
				producto.setId(Integer.parseInt(rs.getString(1)));
				producto.setNombre(rs.getString(2));
				producto.setCategoria(Integer.parseInt(rs.getString(3)));
				producto.setProveedor(Integer.parseInt(rs.getString(4)));
				producto.setPrecioCompra(Double.parseDouble(rs.getString(5)));
				producto.setPrecioVenta(Double.parseDouble(rs.getString(6)));
				producto.setImagen(rs.getString(7));
				producto.setColor(rs.getString(8));
				
				productos.add(producto);
				
			}
			return productos;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}
	
	public Producto seleccionarPorId(int idProducto){
		
		
		
		PreparedStatement ps;
		Producto producto;
		try {
			ps = cn.prepareStatement("select * from producto where id = ?");
			ps.setInt(1, idProducto);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				producto = new Producto();
				producto.setId(Integer.parseInt(rs.getString(1)));
				producto.setNombre(rs.getString(2));
				producto.setCategoria(Integer.parseInt(rs.getString(3)));
				producto.setProveedor(Integer.parseInt(rs.getString(4)));
				producto.setPrecioCompra(Double.parseDouble(rs.getString(5)));
				producto.setPrecioVenta(Double.parseDouble(rs.getString(6)));
				producto.setImagen(rs.getString(7));
				producto.setColor(rs.getString(8));
				return producto;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
		
	}

}
