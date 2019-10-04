/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.DAO;

import Config.Conexion;
import Modelo.DetallePedido;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class DetallePedidoDAO {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
   
    
 public void IngresarPedido(String Id_Pedido, String fecha, String estado,
                            String Tpo_Doc, int Id_cliente,double ValorVent,
                            double ValorCompra){
      
      
      String Sql = "insert into dp_detalle_pedido values (?,?,?,?,?,?,?)";
      
      try{
        con = cn.Conexion();
        ps = con.prepareStatement(Sql);
        ps.setString(1, Id_Pedido);
        ps.setString(2, fecha);
        ps.setString(3, estado);
        ps.setDouble(4, ValorVent);
        ps.setDouble(5, ValorCompra/**/);
        ps.setString(6, Tpo_Doc);
        ps.setInt(7, Id_cliente);
        
        rs = ps.executeQuery();
       }catch(Exception e ){
          
       }
      
    
   }    
    
    
  public DetallePedido Consultar(String Id_Pedido, String Tpo_Doc, int IdDoc){
      
      DetallePedido dtllPedido = new DetallePedido();
      String Sql = "Select * from dp_detalle_pedido where dp_id_pedido=? and "
              + "dp_tpo_doc =? and dp_Id_Cliente = ?";
      
      try{
        con = cn.Conexion();
        ps = con.prepareStatement(Sql);
        ps.setString(1, Id_Pedido);
        ps.setString(2, Tpo_Doc);
        ps.setInt(3, IdDoc);
        
        rs = ps.executeQuery();
        
       while(rs.next()){
           dtllPedido.setFecha(rs.getString("dp_fecha"));
           dtllPedido.setEstado(rs.getString("dp_estado"));
           dtllPedido.setEstado(rs.getString("dp_valor_venta"));
           dtllPedido.setValor_Compra(rs.getDouble("dp_valor_compra"));
           dtllPedido.setTpo_doc(rs.getString("dp_tpo_doc"));
           dtllPedido.setId_cliente((rs.getInt("dp_Id_Cliente")));
         }
       }catch(Exception e ){
          
       }
       return dtllPedido;
   }
  
  
  public void EliminarPedido(String Id_Pedido,String Tpo_Doc, int Id_cliente){
      
      //El pedido se eliminar por ID_Pedido y documento del cliente
      String Sql = "delete from dp_detalle_pedido where dp_id_pedido =? and "
              + "dp_tpo_doc = ? and dp_Id_Cliente=? ";
      
      try{
        con = cn.Conexion();
        ps = con.prepareStatement(Sql);
        ps.setString(1, Id_Pedido);
        ps.setString(2, Tpo_Doc);
        ps.setInt(3, Id_cliente);
        rs = ps.executeQuery();
       }catch(Exception e ){
          
       }
      
   } 
  
  
  public void ActualizarEstado(String Id_Pedido,String Tpo_Doc, int Id_cliente,
                               String Estado){
      
      //El pedido se eliminar por ID_Pedido y documento del cliente
      String Sql = "update  dp_detalle_pedido SET dp_estado= ?"
              + " where dp_id_pedido =? and dp_tpo_doc = ? and dp_Id_Cliente=? ";
      
      try{
        con = cn.Conexion();
        ps = con.prepareStatement(Sql);
        ps.setString(1, Estado);
        ps.setString(2, Id_Pedido);
        ps.setString(3, Tpo_Doc);
        ps.setInt(4, Id_cliente);
        rs = ps.executeQuery();
       }catch(Exception e ){
          
       }
      
   } 
  
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
