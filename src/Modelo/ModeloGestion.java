package Modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ModeloGestion extends Conector{
	
	public void insertar(Gestion gestion) throws Exception{
		try {

			PreparedStatement pst = cn.prepareStatement("INSERT INTO gestion (dni, id) VALUES (?,?)");

			// System.out.println(pst);

			pst.setString(1, gestion.getDni());
			pst.setInt(2, gestion.getProyectoID());

			pst.execute();// ejecuta
			// System.out.println("usuario insertado correctamente");
		} catch (SQLException ex) {
			throw ex;
		}
	}

}
