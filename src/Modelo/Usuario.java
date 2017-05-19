package Modelo;

public class Usuario {
	private String dni;
	private String nombre;
	private String password;
	private String email;
	
	//constructor
	public Usuario(String dni, String nombre, String password, String email) {
		super();
		this.dni = dni;
		this.nombre = nombre;
		this.password = password;
		this.email = email;
	}
	
	public Usuario() {
		super();
	}

	//getter and setters
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

}
