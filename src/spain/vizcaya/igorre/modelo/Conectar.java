package spain.vizcaya.igorre.modelo;

import java.sql.DriverManager;
import com.mysql.jdbc.Connection;




public class Conectar {
	protected Connection cn;

	public Conectar() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/tpv";
			cn = (Connection) DriverManager.getConnection(url, "root", "");
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}