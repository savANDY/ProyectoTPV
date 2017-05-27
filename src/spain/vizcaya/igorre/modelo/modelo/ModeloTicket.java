package spain.vizcaya.igorre.modelo.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;

import spain.vizcaya.igorre.modelo.Conectar;

public class ModeloTicket extends Conectar {

	public int recogerIdMasAlto() {

		int idMaximo = 0;

		PreparedStatement pst;
		try {
			pst = cn.prepareStatement("SELECT max(id) as maxid FROM ticket");

			ResultSet rs = pst.executeQuery();

			// System.out.println(pst);

			if (rs.next()) {
				idMaximo = rs.getInt("maxid");
			}
		} catch (Exception e) {

			// e.printStackTrace();
		}
		return idMaximo;
	}

	public void nuevoTicket(int idTicket, int idProducto) {

		try {

			PreparedStatement pst = cn.prepareStatement("INSERT INTO ticket (id, id_producto) VALUES (?,?)");

			pst.setInt(1, idTicket);
			pst.setInt(2, idProducto);

//			System.out.println(pst);

			pst.execute();

		} catch (Exception e) {

			if (e instanceof MySQLIntegrityConstraintViolationException) {

				try {

					Statement st = super.cn.createStatement();
					int cantidad = this.saberCantidadProducto(idTicket, idProducto) + 1;

					int lineascambiadas = st.executeUpdate("UPDATE ticket SET cantidad='" + cantidad
							+ "' WHERE id='" + idTicket + "' AND id_producto='" + idProducto + "'");


					if (lineascambiadas > 0){
						//System.out.println("Se cambiaron " + lineascambiadas + " lineas");
					} 
				} catch (Exception z) {
					// ERROR AL INSERTAR MAS DE UN MISMO PRODUCTO
					// System.out.println("Dentro del CATCH DEL IF");
					// z.printStackTrace();
				}
			}
			// e.printStackTrace();

		}

	}

	private int saberCantidadProducto(int idTicket, int idProducto) {

		PreparedStatement ps3;
		int cantidad = 0;
		try {
			ps3 = cn.prepareStatement("SELECT cantidad FROM ticket WHERE id = ? AND id_producto = ?");
			ps3.setInt(1, idTicket);
			ps3.setInt(2, idProducto);

//			System.out.println(ps3);

			ResultSet rs3 = ps3.executeQuery();

			if (rs3.next()) {
				cantidad = rs3.getInt("cantidad");
				return cantidad;
			}
		} catch (Exception e) {
			// e.printStackTrace();
		}
		return cantidad;
	}
}
