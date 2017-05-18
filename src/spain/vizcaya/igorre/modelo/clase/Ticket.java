package spain.vizcaya.igorre.modelo.clase;

import java.sql.Date;
import java.util.ArrayList;

import spain.vizcaya.igorre.modelo.Producto;

public class Ticket {

	int id;
	ArrayList<Producto> productos;
	Date fechaVenta;
	
	// Getters y Setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public ArrayList<Producto> getProductos() {
		return productos;
	}
	public void setProductos(ArrayList<Producto> productos) {
		this.productos = productos;
	}
	public Date getFechaVenta() {
		return fechaVenta;
	}
	public void setFechaVenta(Date fechaVenta) {
		this.fechaVenta = fechaVenta;
	}
	
	
	
}
