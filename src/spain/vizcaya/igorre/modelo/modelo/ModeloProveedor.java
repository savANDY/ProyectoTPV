package spain.vizcaya.igorre.modelo.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import spain.vizcaya.igorre.modelo.Conectar;
import spain.vizcaya.igorre.modelo.clase.Producto;
import spain.vizcaya.igorre.modelo.clase.Proveedor;

public class ModeloProveedor extends Conectar {

	public String seleccionarNombrePorId(int idProveedor) throws Exception {

		PreparedStatement ps;
		String nombreCat = "";
		try {
			ps = cn.prepareStatement("SELECT nombre FROM proveedor WHERE id = ?");
			ps.setInt(1, idProveedor);

			// System.out.println(ps);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				nombreCat = rs.getString("nombre");
				return nombreCat;
			}
		} catch (Exception e) {
			System.out.println("Error al seleccionar nombre del Proveedor " + idProveedor);
			throw (e);
		}

		return nombreCat;
	}

	public ArrayList<Proveedor> seleccionarTodos() {

		PreparedStatement pst;
		Proveedor proveedor;
		ArrayList<Proveedor> proveedores = new ArrayList<Proveedor>();

		try {
			pst = cn.prepareStatement("select * from proveedor");

			ResultSet rs = pst.executeQuery();// ejecuta

			while (rs.next()) {
				proveedor = new Proveedor();
				proveedor.setId(Integer.parseInt(rs.getString(1)));
				proveedor.setNombre(rs.getString(2));
				proveedor.setDireccion(rs.getString(3));
				proveedor.setOtrosDatos(rs.getString(4));

				proveedores.add(proveedor);
			}
			return proveedores;

		} catch (Exception e) {
			System.out.println("No se han podido recuperar los proveedores de la BBDD");
			return proveedores;
		}

	}
	
}
