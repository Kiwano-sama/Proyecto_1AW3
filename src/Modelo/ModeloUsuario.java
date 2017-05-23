package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ModeloUsuario extends Conector{
	public void insertar(Usuario usuario) throws Exception{
		try {

			PreparedStatement pst = cn.prepareStatement("INSERT INTO LIBROS (dni, nombre, password, email) VALUES (?,?,?,?)");

			// System.out.println(pst);

			pst.setString(1, usuario.getDni());
			pst.setString(2, usuario.getNombre());
			pst.setString(3, usuario.getPassword());
			pst.setString(2, usuario.getEmail());

			pst.execute();// ejecuta
			// System.out.println("Libro insertado correctamente");
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
			}
			return user;
		} catch (Exception e) {
			throw e;
		}
		
	}

}
