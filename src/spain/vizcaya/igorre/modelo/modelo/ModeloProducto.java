package spain.vizcaya.igorre.modelo.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import spain.vizcaya.igorre.modelo.Conectar;
import spain.vizcaya.igorre.modelo.clase.Producto;

public class ModeloProducto extends Conectar {

	public ModeloProducto() {
		super();
	}

	
	public void insertar(Producto producto) throws Exception {
		// escribir la instruccion INSERT
		try {

			PreparedStatement pst = cn.prepareStatement("INSERT INTO producto (nombre, categoria, proveedor, precio_compra, precio_venta, iva) VALUES (?,?,?,?,?,?)");

			// System.out.println(pst);

			pst.setString(1, producto.getNombre());
			pst.setInt(2, producto.getCategoria());
			pst.setInt(3, producto.getProveedor());
			pst.setDouble(4, producto.getPrecioCompra());
			pst.setDouble(5, producto.getPrecioVenta());
			pst.setInt(6, producto.getIva());

			pst.execute();
			
		} catch (Exception e) {
			throw (e);

		}
	}
	
	public ArrayList<Producto> seleccionarTodos() {

		PreparedStatement pst;
		Producto producto;
		ArrayList<Producto> productos = new ArrayList<Producto>();

		try {
			pst = cn.prepareStatement("select * from producto");

			ResultSet rs = pst.executeQuery();// ejecuta

			while (rs.next()) {
				producto = new Producto();
				producto.setId(Integer.parseInt(rs.getString(1)));
				producto.setNombre(rs.getString(2));
				producto.setCategoria(Integer.parseInt(rs.getString(3)));
				producto.setProveedor(Integer.parseInt(rs.getString(4)));
				producto.setPrecioCompra(Double.parseDouble(rs.getString(5)));
				producto.setPrecioVenta(Double.parseDouble(rs.getString(6)));
				producto.setIva(rs.getInt(7));
				producto.setImagen(rs.getString(8));
				producto.setColor(rs.getString(9));

				productos.add(producto);
			}
			return productos;

		} catch (Exception e) {
			System.out.println("No se han podido recuperar los productos de la BBDD");
			return productos;
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
				producto.setIva(rs.getInt(7));
				producto.setImagen(rs.getString(8));
				producto.setColor(rs.getString(9));

				productos.add(producto);

			}
			return productos;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	public Producto seleccionarPorId(int idProducto) {

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

	public void borrarPorId(int idProducto) throws Exception {
		
		try {
			PreparedStatement pst = cn.prepareStatement("DELETE FROM producto WHERE id = ?");
			pst.setInt(1, idProducto);
			pst.execute();// ejecuta

			if (pst.getUpdateCount() == 0) {// no a borrado nada
				System.out.println("Se ha intentado borrar el producto (id:" + idProducto + ") pero... sin resultados");
			} else {
				System.out.println("Producto con id " + idProducto + " borrado de la BBDD");
			}

		} catch (Exception e) {
			//throw e;
		}
		
	}


	public boolean modificar(Producto producto) throws Exception {
		
		Statement st = super.cn.createStatement();

		int lineascambiadas;
		try {
			lineascambiadas = st.executeUpdate("UPDATE producto SET nombre='" + producto.getNombre() + "', categoria='" + producto.getCategoria() + "', proveedor='" + producto.getProveedor() + "', precio_compra='"+ producto.getPrecioCompra()+"', precio_venta='" + producto.getPrecioVenta()+ "'"
					+ " WHERE id='" + producto.getId()+ "'");
			
			
			if (lineascambiadas > 0){
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw e;
		}

	}


	public ArrayList<Producto> seleccionarTodosPorPrecio() {

		PreparedStatement pst;
		Producto producto;
		ArrayList<Producto> productos = new ArrayList<Producto>();

		try {
			pst = cn.prepareStatement("select * from producto ORDER BY precio_venta");

			ResultSet rs = pst.executeQuery();// ejecuta

			while (rs.next()) {
				producto = new Producto();
				producto.setId(Integer.parseInt(rs.getString(1)));
				producto.setNombre(rs.getString(2));
				producto.setCategoria(Integer.parseInt(rs.getString(3)));
				producto.setProveedor(Integer.parseInt(rs.getString(4)));
				producto.setPrecioCompra(Double.parseDouble(rs.getString(5)));
				producto.setPrecioVenta(Double.parseDouble(rs.getString(6)));
				producto.setIva(rs.getInt(7));
				producto.setImagen(rs.getString(8));
				producto.setColor(rs.getString(9));

				productos.add(producto);
			}
			return productos;

		} catch (Exception e) {
			System.out.println("No se han podido recuperar los productos de la BBDD");
			return productos;
		}

	}


	public ArrayList<Producto> buscarPorNombre(String nombre) {
		PreparedStatement pst;
		Producto producto;
		ArrayList<Producto> productos = new ArrayList<Producto>();

		try {
			pst = cn.prepareStatement("select * from producto WHERE nombre like '%" + nombre +"%'");
			
//			System.out.println(pst);
			
			ResultSet rs = pst.executeQuery();// ejecuta

			while (rs.next()) {
				producto = new Producto();
				producto.setId(Integer.parseInt(rs.getString(1)));
				producto.setNombre(rs.getString(2));
				producto.setCategoria(Integer.parseInt(rs.getString(3)));
				producto.setProveedor(Integer.parseInt(rs.getString(4)));
				producto.setPrecioCompra(Double.parseDouble(rs.getString(5)));
				producto.setPrecioVenta(Double.parseDouble(rs.getString(6)));
				producto.setIva(rs.getInt(7));
				producto.setImagen(rs.getString(8));
				producto.setColor(rs.getString(9));

				
				
				productos.add(producto);
			}
			return productos;

		} catch (Exception e) {
			System.out.println("No se han podido recuperar los productos de la BBDD");
			return productos;
		}
	}

}
