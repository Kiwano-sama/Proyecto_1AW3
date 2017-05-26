package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ModeloUsuario extends Conector{
	public void insertar(Usuario usuario) throws Exception{
		try {

			PreparedStatement pst = cn.prepareStatement("INSERT INTO usuario (dni, nombre, password, email) VALUES (?,?,?,?)");

			// System.out.println(pst);

			pst.setString(1, usuario.getDni());
			pst.setString(2, usuario.getNombre());
			pst.setString(3, usuario.getPassword());
			pst.setString(4, usuario.getEmail());

			pst.execute();// ejecuta
			// System.out.println("usuario insertado correctamente");
		} catch (SQLException ex) {
			throw ex;
		}
	}
	public Usuario selectUserLogin(String userlogin, String password) throws Exception {
		String email = userlogin;

		try {
			Usuario user = new Usuario();
			Statement st = this.cn.createStatement();
			ResultSet rs = st.executeQuery(
					"SELECT * FROM usuario WHERE email='" + email + "' AND password='" + password + "'");
			if (!rs.next()){
				return null;
			} else {
				
				user.setDni(rs.getString("DNI"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setNombre(rs.getString("nombre"));
				user.setAdmin(rs.getBoolean("admin"));
			}
			return user;
		} catch (Exception e) {
			throw e;
		}
		
	}
	
	public ArrayList<Usuario> seleccionarNombre() throws Exception {

		Statement st = cn.createStatement();
		ResultSet rs = st.executeQuery("SELECT nombre FROM usuario ");
		// pasar de ResultSet a ArrayList

		ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
		while (rs.next()) {
			Usuario usuario = new Usuario();
			usuario.setNombre(rs.getString(1));

			usuarios.add(usuario);
		}
		return usuarios;
	}
	
	public ArrayList<Usuario> consultarUsuario (String nombre){
		ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
		PreparedStatement pst;
		
		try {
			pst=cn.prepareStatement("SELECT * FROM usuario WHERE nombre LIKE ?");
			pst.setString(1, nombre);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				Usuario usuario = new Usuario();
				usuario.setDni(rs.getString(1));
				usuario.setNombre(rs.getString(2));
				usuario.setPassword(rs.getString(3));
				usuario.setEmail(rs.getString(4));
				usuario.setAdmin(rs.getBoolean(5));

				usuarios.add(usuario);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return usuarios;
	}

}
