package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    Connection Con;

    String url = "jdbc:mysql://localhost:3306/bd_tienda";
    String user = "root";
    String password = "";

    public Connection Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
        }
        return Con;
    }
}
