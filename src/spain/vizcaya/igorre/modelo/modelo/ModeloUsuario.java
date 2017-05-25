package spain.vizcaya.igorre.modelo.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import spain.vizcaya.igorre.modelo.Conectar;
import spain.vizcaya.igorre.modelo.clase.Usuario;

public class ModeloUsuario extends Conectar {

	public Usuario loguearse(String pass) throws Exception {
		
		PreparedStatement ps;
		Usuario usuario;
		try {
			ps = cn.prepareStatement("SELECT * FROM usuario WHERE contrasenia = ?");
			ps.setString(1, pass);

			//System.out.println(ps);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				usuario = new Usuario();
				usuario.setId(rs.getInt(1));
				usuario.setContrasenia(rs.getString(2));
				usuario.setNombre(rs.getString(3));
				usuario.setApellidos(rs.getString(4));
				usuario.setAdministrador(rs.getBoolean(5));
				return usuario;
				
			} else {
				return null;
			}
		} catch (Exception e) {
			System.out.println("Error al comprobar usuario");
			
			throw (e);
		}
	}
		
	}

