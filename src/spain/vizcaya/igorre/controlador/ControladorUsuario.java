package spain.vizcaya.igorre.controlador;

import spain.vizcaya.igorre.modelo.clase.Usuario;
import spain.vizcaya.igorre.modelo.modelo.ModeloUsuario;

public class ControladorUsuario {
	
	ModeloUsuario modeloUsuario;
	
	public ControladorUsuario() {
		super();
		modeloUsuario = new ModeloUsuario();
	}

	public Usuario comprobarPassword(String pass){
		
		Usuario usuario = new Usuario();
		
		try {
			usuario = modeloUsuario.loguearse(pass);
			return usuario;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
