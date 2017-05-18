package Modelo;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

public class Conector {
	protected Connection cn;

	public Conector() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/trabajo";
			cn = (Connection) DriverManager.getConnection(url, "root", "");
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
