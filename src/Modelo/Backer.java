package Modelo;

public class Backer {
	private String dni;
	private int contaportada;
	//constructor
	public Backer(String dni, int contaportada) {
		super();
		this.dni = dni;
		this.contaportada = contaportada;
	}
	
	public Backer() {
		super();
	}

	//getters and setters
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public int getContaportada() {
		return contaportada;
	}
	public void setContaportada(int contaportada) {
		this.contaportada = contaportada;
	}	

}
