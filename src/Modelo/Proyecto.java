package Modelo;

import java.util.Date;

public class Proyecto {
	private int id;
	private String nombre;
	private String descripcion;
	private int presupuesto;
	private Date fechaInicio;
	private Date fechaFin;
	private String categoria;
	
	//constructor
	public Proyecto(int id, String nombre, String descripcion, int presupuesto, Date fechaInicio, Date fechaFin,
			String categoria) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.presupuesto = presupuesto;
		this.fechaInicio = fechaInicio;
		this.fechaFin = fechaFin;
		this.categoria = categoria;
	}
	
	public Proyecto() {
		super();
	}

	//getters and setters
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
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getPresupuesto() {
		return presupuesto;
	}
	public void setPresupuesto(int presupuesto) {
		this.presupuesto = presupuesto;
	}
	public Date getFechaInicio() {
		return fechaInicio;
	}
	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}
	public Date getFechaFin() {
		return fechaFin;
	}
	public void setFechaFin(Date fechaFin) {
		this.fechaFin = fechaFin;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	

}
