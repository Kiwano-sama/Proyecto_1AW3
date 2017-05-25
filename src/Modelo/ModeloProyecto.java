package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class ModeloProyecto extends Conector{
	
	public ArrayList<Proyecto> consultarProyecto (String nombre){
		ArrayList<Proyecto> proyectos = new ArrayList<Proyecto>();
		PreparedStatement pst;
		
		try {
			pst=cn.prepareStatement("SELECT * FROM proyecto WHERE nproyecto LIKE ?");
			pst.setString(1, nombre);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				Proyecto proyecto = new Proyecto();
				proyecto.setId(rs.getInt(1));
				proyecto.setNombre(rs.getString(2));
				proyecto.setDescripcion(rs.getString(3));
				proyecto.setPresupuesto(rs.getInt(4));
				proyecto.setFechaInicio(rs.getDate(5));
				proyecto.setFechaFin(rs.getDate(6));
				proyecto.setCategoria(rs.getString(7));

				proyectos.add(proyecto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return proyectos;
	}
	
	public ArrayList<Proyecto> seleccionarNombre() throws Exception {

		Statement st = cn.createStatement();
		ResultSet rs = st.executeQuery("SELECT nproyecto FROM proyecto ");
		// pasar de ResultSet a ArrayList

		ArrayList<Proyecto> proyectos = new ArrayList<Proyecto>();
		while (rs.next()) {
			Proyecto proyecto = new Proyecto();
			proyecto.setNombre(rs.getString(1));

			proyectos.add(proyecto);
		}
		return proyectos;
	}

}
