package Model.DAO;

import Config.Conexion;
import Modelo.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class ClienteDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Cliente Validar(String correo, String password){
        Cliente cl = new Cliente();
        String sql = "select * from maestro_clientes where mc_email=? and mc_pswd=?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, password);
            rs=ps.executeQuery();
            while (rs.next()) {
                cl.setNro_Doc(rs.getInt("mc_nrodoc"));
                cl.setTpo_Id(rs.getString("mc_tpoid"));
                cl.setNombre(rs.getString("mc_nombre"));
                cl.setApellido(rs.getString("mc_apellido"));                
                cl.setEmail((rs.getString("mc_email")));
                cl.setTelefono(rs.getString("mc_telefono"));
                cl.setDirecc(rs.getString("mc_direcc"));
                cl.setCod_Postal(rs.getString("mc_codpostal"));
                cl.setCiudad(rs.getString("mc_ciudad"));
                cl.setDepto(rs.getString("mc_depto"));
                cl.setPais(rs.getString("mc_pais"));
                cl.setPswd(rs.getString("mc_pswd"));
                cl.setFoto(rs.getString("mc_foto"));
                cl.setRol(rs.getString("mc_rol"));
                cl.setDescuento(rs.getString("mc_descuento"));
            }
        } catch(Exception e){
            
        }
        return cl;
    }
     
   
}
