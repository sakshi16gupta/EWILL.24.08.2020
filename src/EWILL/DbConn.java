package EWILL;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConn {

	public Connection getConnect() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_will","root","sakshi16");
		return conn;	
	}
}
