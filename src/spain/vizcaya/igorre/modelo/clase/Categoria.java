package spain.vizcaya.igorre.modelo.clase;

public class Categoria {

	private int id;
	private String nombre;
	private String imagen;
	private String color;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public Categoria(int id, String nombre, String imagen, String color) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.imagen = imagen;
		this.color = color;
	}
	public Categoria() {
		super();
	}

	
	
}
