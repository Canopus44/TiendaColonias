/*
El modelo DAO, es para separa la conexion logica de la base de datos de el 
modelo principal, se debe crear con las conexiones que necesitamos consultar
*/

package Model.DAO;

import Config.Conexion;
import Modelo.LoginUsuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class LoginUsuarioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public LoginUsuario validar(String correo, String password){
        LoginUsuario LgUs = new LoginUsuario();
        String sql = "select * from maestro_clientes where mc_email=? and mc_pswd=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);            
            /*
            Organizamos el orden de los elementos que le llegaran desde la vista 
            para buscar los elementos en la bd
            */
            ps.setString(1, correo);
            ps.setString(2, password);
            rs = ps.executeQuery();
            
            /*
            Traemos la informacion necesaria de la Bd para mostrar en la pantalla de Login
            */
            while (rs.next()) {                
                LgUs.setEmail(rs.getString("mc_email"));
                LgUs.setPassword(rs.getString("mc_pswd"));
                LgUs.setNombre(rs.getString("mc_nombre"));
                LgUs.setApellido(rs.getString("mc_apellido"));
                LgUs.setRol(rs.getString("mc_rol"));
            }
        } catch (Exception e) {
        }
        return LgUs;
    }
}
