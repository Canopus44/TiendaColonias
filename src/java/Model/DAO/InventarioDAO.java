package Model.DAO;

import Config.Conexion;
import Modelo.Inventario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class InventarioDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public Inventario Consultar_idProducto(String id_Producto) {
        Inventario inv = new Inventario();
        String sql = "select * from maestro_inventario where ma_idproducto=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, id_Producto);
            rs = ps.executeQuery();
            while (rs.next()) {
                inv.setId_Producto(rs.getString("ma_idproducto"));
                inv.setNombre_Prd(rs.getString("ma_nombreprd"));
                inv.setMarca(rs.getString("ma_marca"));
                inv.setReferencia(rs.getString("ma_referencia"));
                inv.setId_Proveedor(rs.getString("ma_idproveedor"));
                inv.setUnidades_Existencia(rs.getInt("ma_unidadesexistencia"));
                inv.setPrecio_Costo(rs.getDouble("ma_preciocosto"));
                inv.setPrecio_Venta(rs.getDouble("ma_precioventa"));
            }
        } catch (Exception e) {

        }
        return inv;
    }

    public Inventario Listar() {
        Inventario inv = new Inventario();
        String sql = "select * from maestro_inventario";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            //ps.setString(1, id_Producto);
            rs = ps.executeQuery();
            while (rs.next()) {
                inv.setId_Producto(rs.getString("ma_idproducto"));
                inv.setNombre_Prd(rs.getString("ma_nombreprd"));
                inv.setMarca(rs.getString("ma_marca"));
                inv.setReferencia(rs.getString("ma_referencia"));
                inv.setId_Proveedor(rs.getString("ma_idproveedor"));
                inv.setUnidades_Existencia(rs.getInt("ma_unidadesexistencia"));
                inv.setPrecio_Costo(rs.getDouble("ma_preciocosto"));
                inv.setPrecio_Venta(rs.getDouble("ma_precioventa"));
            }
        } catch (Exception e) {

        }
        return inv;
    }
public Inventario Consultar_nomProducto(String nombre_Prd) {
        Inventario inv = new Inventario();
        String sql = "select * from maestro_inventario where ma_nombreprd=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, nombre_Prd);
            rs = ps.executeQuery();
            while (rs.next()) {
                inv.setId_Producto(rs.getString("ma_idproducto"));
                inv.setNombre_Prd(rs.getString("ma_nombreprd"));
                inv.setMarca(rs.getString("ma_marca"));
                inv.setReferencia(rs.getString("ma_referencia"));
                inv.setId_Proveedor(rs.getString("ma_idproveedor"));
                inv.setUnidades_Existencia(rs.getInt("ma_unidadesexistencia"));
                inv.setPrecio_Costo(rs.getDouble("ma_preciocosto"));
                inv.setPrecio_Venta(rs.getDouble("ma_precioventa"));
            }
        } catch (Exception e) {

        }
        return inv;
    }
}
