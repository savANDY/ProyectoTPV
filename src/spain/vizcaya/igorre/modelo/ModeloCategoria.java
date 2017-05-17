package spain.vizcaya.igorre.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ModeloCategoria extends Conectar {
	
	public ModeloCategoria() {
		super();
	}

	public ArrayList<Categoria> seleccionarTodas() throws Exception {

		

		PreparedStatement pst;
		Categoria categoria;

		try {
			pst = cn.prepareStatement("select * from categoria");

			ResultSet rs = pst.executeQuery();// ejecuta

			// pasar de ResultSet a ArrayList

			ArrayList<Categoria> categorias = new ArrayList<Categoria>();
			
			while (rs.next()) {
				categoria = new Categoria();
				categoria.setId(Integer.parseInt(rs.getString(1)));
				categoria.setNombre(rs.getString(2));
				categoria.setImagen(rs.getString(3));
				categoria.setColor(rs.getString(4));

				categorias.add(categoria);
			}
			return categorias;

		} catch (Exception e) {
			throw e;
		}

	}

}
