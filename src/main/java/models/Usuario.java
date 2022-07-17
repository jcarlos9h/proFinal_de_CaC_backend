package models;

public class Usuario {
	
	int id;
	String nombreCompleto;
	String email;
	String contrasena;
	/**
	 * 
	 */
	public Usuario() {
		super();
	}
	/**
	 * @param id
	 */
	public Usuario(int id) {
		super();
		this.id = id;
	}
	/**
	 * @param id
	 * @param nombreCompleto
	 * @param email
	 * @param contrasena
	 */
	public Usuario(int id, String nombreCompleto, String email, String contrasena) {
		super();
		this.id = id;
		this.nombreCompleto = nombreCompleto;
		this.email = email;
		this.contrasena = contrasena;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombreCompleto() {
		return nombreCompleto;
	}
	public void setNombreCompleto(String nombreCompleto) {
		this.nombreCompleto = nombreCompleto;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContrasena() {
		return contrasena;
	}
	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}
	

}
