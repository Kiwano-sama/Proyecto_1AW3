package Modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

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

}
