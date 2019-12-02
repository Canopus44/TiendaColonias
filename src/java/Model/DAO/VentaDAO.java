
package Model.DAO;

import Config.Conexion;
import Modelo.Venta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author canop
 */
public class VentaDAO {
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r;
    public String GenerarSerie(){
        String numeroserie="";
        String sql="select max(NumeroSerie) from ventas";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                numeroserie=rs.getString(1);
            }
        } catch (Exception e) {
        }
        return numeroserie;
    }
    public String IdVentas(){
        String idventas="";
        String sql="select max(IdVentas) from ventas";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                idventas=rs.getString(1);
            }
        } catch (Exception e) {
        }
        return idventas;
    }
    public int guardarVenta(Venta ve){
        String sql="insert into ventas(IdCliente, NumeroSerie,FechaVentas,Monto, Estado)values(?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, ve.getIdCliente());
            //ps.setInt(2, ve.getIdempleado());
            ps.setString(2, ve.getNumSerie());
            ps.setString(3, ve.getFecha());
            ps.setDouble(4, ve.getMonto());
            ps.setString(5, ve.getEstado());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public int guardarDetalleventas(Venta venta){
        String sql="insert into detalle_ventas(IdVentas, IdProducto,Cantidad, PrecioVenta)values(?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, venta.getId());
            ps.setInt(2, venta.getIdProducto());
            ps.setInt(3, venta.getCantidad());
            ps.setDouble(4, venta.getPrecio());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    
}