package spain.vizcaya.igorre.modelo.clase;

public class Usuario {

	private int id;
	private String contrasenia;
	private String nombre;
	private String apellidos;
	private boolean administrador;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContrasenia() {
		return contrasenia;
	}

	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public boolean isAdministrador() {
		return administrador;
	}

	public void setAdministrador(boolean administrador) {
		this.administrador = administrador;
	}

	public Usuario(int id, String contrasenia, String nombre, String apellidos, boolean administrador) {
		super();
		this.id = id;
		this.contrasenia = contrasenia;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.administrador = administrador;
	}

	public Usuario() {
		super();
	}
}
