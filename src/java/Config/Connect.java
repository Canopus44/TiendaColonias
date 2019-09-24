package Config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author canop
 */
public class Connect {
    Connection Conn;
    String url = "";
    String user = "root";
    String password = "";
    public Connection ConnectDataBase(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Conn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
        }
        return Conn;
    }
}
