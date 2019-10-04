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
    String []Nom_campo;
    
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
    
    public void Registrar(int doc, String tipoId, String nombre, String apellido,
            String email, String tel, String dir, String Cod_postal, String ciudad,
            String depto, String pais, String pswd, String foto, String rol, String des){
      
        String sql = "insert into maestro_clientes values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, doc);
            ps.setString(2, tipoId);
            ps.setString(3, nombre);
            ps.setString(4, apellido);
            ps.setString(5, email);
            ps.setString(6, tel);
            ps.setString(7, dir);
            ps.setString(8, Cod_postal);
            ps.setString(9, ciudad);
            ps.setString(10, pais);
            ps.setString(11, pswd);
            ps.setString(12, foto);
            ps.setString(13, rol);
            ps.setString(14, des);
            rs=ps.executeQuery();
            
       //Verificar código de error del Executequery
        } catch(Exception e){
            
        }
       
    }
    
     public void Eliminar(String email, int documento){
      
        String sql = "delete from maestro_clientes where mc_email=? and mc_nrodoc=?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setInt(2, documento);
          //Verificar código de error del Executequery
        } catch(Exception e){
            
        }
       
    }
     
      public void Actualizar(int doc, String tipoId,String email, String tel,
             String dir, String Cod_postal, String ciudad,String depto, 
             String pais, String pswd, String foto, String rol, String des){
      
        String []Campos = {"mc_email" ,"mc_telefono","mc_direcc","mc_codpostal",
                          "mc_ciudad","mc_depto","mc_pais","mc_pswd","mc_foto","mc_descuento"};
        
        
        int i =0;
          
        String sql = "udpate maestro_clientes set ";
     
        //Realizo un Script Dinámico SQL para actualizar únicamente los campos
        //que vengan con datos. Los vacíos no se actualizan.
        //Concaneto el nombre del campo en la tabla + el valor que llega por parámetro
        //mc_campo = par_value
        if(!" ".equals(email)){
            i=Buscar(Campos,"mc_email","email");
            sql =sql.concat(sql +", "+Campos[i]+"=?");
                       
        }
        if(!" ".equals(tel)){
             i=Buscar(Campos,"mc_telefono","tel");
             
            sql =sql.concat(sql +", "+Campos[i]+"=?");
            
        }
        if(!" ".equals(dir)){
             i=Buscar(Campos,"mc_email","dir");
           sql = sql = sql.concat(sql +", "+Campos[i]+"=?");
           
        }
        if(!" ".equals(Cod_postal)){
             i=Buscar(Campos,"mc_codpostal","Cod_postal");
           sql = sql.concat(sql +", "+Campos[i]+"=?");
        }
        if(!" ".equals(ciudad)){
             i=Buscar(Campos,"mc_ciudad","Campos");
            sql =sql.concat(sql +", "+Campos[i]+"=?");
        }
        if(!" ".equals(depto)){
             i=Buscar(Campos,"mc_depto","depto");
            sql =sql.concat(sql +", "+Campos[i]+"=?");
        }
        if(!" ".equals(pais)){
             i=Buscar(Campos,"mc_pais","pais");
           sql = sql.concat(sql +", "+Campos[i]+"=?");
        }
         if(!" ".equals(pswd)){
              i=Buscar(Campos,"mc_pswd","pswd");
           sql = sql.concat(sql +", "+Campos[i]+"=?");
        }
        if(!" ".equals(foto)){
             i=Buscar(Campos,"mc_foto","foto");
           sql = sql.concat(sql +", "+Campos[i]+"=?");
        }
        if(!" ".equals(rol)){
             i=Buscar(Campos,"mc_rol","rol");
           sql = sql.concat(sql +", "+Campos[i]+"=?");
        }
        
        //Eliminar la primera coma "," de sobra en el script
        sql= sql.replaceFirst(",", " ");
        
                    
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            for (int J =0; J<i;J++){
             ps.setString(J, Nom_campo[J]);
            }
           
          //Verificar código de error del Executequery
        } catch(Exception e){
            
        }
       
    }
      
 public int Buscar(String []vector, String Busqueda, String NomCampo){
    //Encuentro la posición en la cuál se encuentra el parámetro BÚSQUEDA.
    
     int pos=0;
     for(int i=0; i< vector.length;i++){
         if(vector[i].equals(Busqueda)){
             pos =i;
        //Guardo el nombre del parámetro del método Actualizar
            Nom_campo[i]=NomCampo;
             break;
           }
     }
   
     return pos;  
     
 }
    
    
    
    
    
     
   
}
