package Modelo;

public class Gestion {
	private String dni;
	private int proyectoID;
	
	//constructor
	public Gestion(String dni, int proyectoID) {
		super();
		this.dni = dni;
		this.proyectoID = proyectoID;
	}
	public Gestion() {
		super();
	}
	
	//getters and setters
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public int getProyectoID() {
		return proyectoID;
	}
	public void setProyectoID(int proyectoID) {
		this.proyectoID = proyectoID;
	}
	
	

}
