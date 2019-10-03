
package Model.DAO;

import Config.Conexion;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class ProductoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Producto Consultar(String id_Prod){
        Producto prd = new Producto();
        String sql = "select * from maestro_productos where mp_idprod=?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, id_Prod);            
            rs=ps.executeQuery();
            while (rs.next()) {
                prd.setId_Prod(rs.getString("mp_idprod"));
                prd.setMarca(rs.getString("mp_marca"));
                prd.setNombre_Prd(rs.getString("mp_nombreprd"));
                prd.setReferencia(rs.getString("mp_referencia"));
                prd.setAno_Inic(rs.getString("mp_anoinic"));
                prd.setFmlaolfat(rs.getString("mp_fmlaolfat"));
                prd.setNota_Salida(rs.getString("mp_nota_salida"));
                prd.setNota_Corazon(rs.getString("mp_nota_corazon"));
                prd.setNota_Fondo(rs.getString("mp_nota_fondo"));
                prd.setNombre_Prd(rs.getString("mp_nombreprd"));
                prd.setCategoria(rs.getString("mp_categoria"));
                prd.setTipo(rs.getInt("mp_tipo"));
                prd.setOnzas(rs.getInt("mp_onzas"));
                prd.setGenero(rs.getString("mp_genero"));
                prd.setPrecio_Compra(rs.getDouble("mp_precio_compra"));
                prd.setPrecio_Venta(rs.getDouble("mp_precio_venta"));
                prd.setDescuento(rs.getDouble("mp_descuentro"));
                prd.setPrecio_Descuento(rs.getDouble("mp_precio_descto"));
                prd.setOferta(rs.getString("mp_oferta"));
            }
        } catch(Exception e){
            
        }
        return prd;
    }
}
