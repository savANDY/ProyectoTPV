package spain.vizcaya.igorre.modelo.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import spain.vizcaya.igorre.modelo.Conectar;
import spain.vizcaya.igorre.modelo.clase.Iva;
import spain.vizcaya.igorre.modelo.clase.Proveedor;

public class ModeloIva extends Conectar {

	public ArrayList<Iva> seleccionarTodas() {

		PreparedStatement pst;
		Iva iva;
		ArrayList<Iva> ivas = new ArrayList<Iva>();

		try {
			pst = cn.prepareStatement("select * from iva");

			ResultSet rs = pst.executeQuery();// ejecuta

			while (rs.next()) {
				iva = new Iva();
				iva.setId(Integer.parseInt(rs.getString(1)));
				iva.setNombre(rs.getString(2));
				iva.setCantidad(Integer.parseInt(rs.getString(3)));

				ivas.add(iva);
			}
			return ivas;

		} catch (Exception e) {
			System.out.println("No se han podido recuperar los proveedores de la BBDD");
			return ivas;
		}

	}
	
	public Iva seleccionarPorId(int idIva) {

		PreparedStatement ps;
		Iva iva;
		try {
			ps = cn.prepareStatement("select * from iva where id = ?");
			ps.setInt(1, idIva);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				iva = new Iva();
				iva.setId(Integer.parseInt(rs.getString(1)));
				iva.setNombre(rs.getString(2));
				iva.setCantidad(Integer.parseInt(rs.getString(3)));
				return iva;
			}
		} catch (Exception e) {
			System.out.println("Error al seleccionar iva");
			e.printStackTrace();
		}

		return null;

	}

	public int seleccionarCantidadPorId(int idIva) throws Exception {
		
		PreparedStatement ps;
		
		try {
			ps = cn.prepareStatement("SELECT cantidad FROM iva WHERE id = ?");
			ps.setInt(1, idIva);

//			System.out.println(ps);
			
			ResultSet rs = ps.executeQuery();

			
			if (rs.next()) {
				int cantidad = rs.getInt("cantidad");
				return cantidad;
			}
		} catch (Exception e) {
			System.out.println("Error al seleccionar cantidad del iva");
			throw(e);
		}
		
		return 0;
	}
	
}
