package spain.vizcaya.igorre.modelo.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import spain.vizcaya.igorre.modelo.Conectar;

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
	
}
