package spain.vizcaya.igorre.modelo.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import spain.vizcaya.igorre.modelo.Conectar;
import spain.vizcaya.igorre.modelo.clase.Categoria;

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
	
	
	public ArrayList<Categoria> buscarPorNombre(String nombre) throws Exception {

		PreparedStatement pst;
		Categoria categoria;

		try {
			pst = cn.prepareStatement("select * from categoria WHERE nombre like '%" + nombre +"%'");

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

	public String seleccionarNombrePorId(int idCategoria) throws Exception {

		PreparedStatement ps;
		String nombreCat = "";
		try {
			ps = cn.prepareStatement("SELECT nombre FROM categoria WHERE id = ?");
			ps.setInt(1, idCategoria);

			// System.out.println(ps);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				nombreCat = rs.getString("nombre");
				return nombreCat;
			}
		} catch (Exception e) {
			System.out.println("Error al seleccionar cantidad del iva");
			throw (e);
		}

		return nombreCat;
	}

	public void insertar(Categoria categoria) throws Exception {
		try {

			PreparedStatement pst = cn.prepareStatement("INSERT INTO categoria (nombre) VALUES (?)");

			// System.out.println(pst);

			pst.setString(1, categoria.getNombre());

			pst.execute();
			
		} catch (Exception e) {
			throw (e);

		}
		
	}

}
