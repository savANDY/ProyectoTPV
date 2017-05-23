package spain.vizcaya.igorre.controlador;

import spain.vizcaya.igorre.modelo.clase.Usuario;
import spain.vizcaya.igorre.modelo.modelo.ModeloUsuario;

public class ControladorUsuario {
	
	ModeloUsuario modeloUsuario;

	public Usuario comprobarPassword(String pass){
		
		Usuario usuario = new Usuario();
		
		modeloUsuario.comprobarPass(pass);
		
		return usuario;
		
	}
	
}
