package spain.vizcaya.igorre.modelo;

public class Producto {

	private int id;
	private String nombre;
	private int categoria;
	private int proveedor;
	private double precioCompra;
	private double precioVenta;
	private String imagen;
	private String color;
	
	// Getters y Setters
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
	public int getCategoria() {
		return categoria;
	}
	public void setCategoria(int categoria) {
		this.categoria = categoria;
	}
	public int getProveedor() {
		return proveedor;
	}
	public void setProveedor(int proveedor) {
		this.proveedor = proveedor;
	}
	public double getPrecioCompra() {
		return precioCompra;
	}
	public void setPrecioCompra(double precioCompra) {
		this.precioCompra = precioCompra;
	}
	public double getPrecioVenta() {
		return precioVenta;
	}
	public void setPrecioVenta(double precioVenta) {
		this.precioVenta = precioVenta;
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
	
	// Constructores
	public Producto(int id, String nombre, int categoria, int proveedor, double precioCompra, double precioVenta,
			String imagen, String color) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.categoria = categoria;
		this.proveedor = proveedor;
		this.precioCompra = precioCompra;
		this.precioVenta = precioVenta;
		this.imagen = imagen;
		this.color = color;
	}
	public Producto() {
		super();
	}
	
	
	
}
