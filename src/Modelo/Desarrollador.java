package Modelo;

public class Desarrollador {
	private String dni;
	private String nif;
	private String nbEmpresa;
	
	//constructor
	public Desarrollador(String dni, String nif, String nbEmpresa) {
		super();
		this.dni = dni;
		this.nif = nif;
		this.nbEmpresa = nbEmpresa;
	}
	
	public Desarrollador() {
		super();
	}

	//getters and setters
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getNif() {
		return nif;
	}
	public void setNif(String nif) {
		this.nif = nif;
	}
	public String getNbEmpresa() {
		return nbEmpresa;
	}
	public void setNbEmpresa(String nbEmpresa) {
		this.nbEmpresa = nbEmpresa;
	}
	

}
