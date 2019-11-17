/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.DAO;

import Config.Conexion;
import Modelo.Producto;
import Modelo.ShopCart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author canop
 */
public class ShopCartDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public int AddShop(ShopCart shop) {
        String sql = "INSERT INTO bd_carrito (bd_totalcarrito, bd_nombreprod,bd_imgprod,bd_precioprod,bd_cantidad) VALUES(?, ?, ?, ?, ?);";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setDouble(1, shop.getbd_totalcarrito());
            ps.setString(2, shop.getbd_nombreprod());
            ps.setString(3, shop.getbd_imgprod());
            ps.setDouble(4, shop.getbd_precioprod());
            ps.setInt(5, shop.getbd_cantidad());
            
            ps.executeUpdate();
            //Verificar código de error del Executequery
        } catch (Exception e) {

        }
        return r;
    }
    
     public List Listar() {
        String sql = "select * from bd_carrito";
        List<ShopCart> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ShopCart shop = new ShopCart();
                shop.setbd_idcarrito(rs.getInt(1));
                shop.setbd_totalcarrito(rs.getDouble(2));
                shop.setbd_nombreprod(rs.getString(3));
                shop.setbd_imgprod(rs.getString(4));
                shop.setbd_precioprod(rs.getDouble(5));
                shop.setbd_cantidad(rs.getInt(6));
                
                lista.add(shop);
            }
        } catch (Exception e) {
        }
        return lista;
    }
     
     public void eliminar(int id){
        String sql="delete from bd_carrito where bd_idcarrito="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
}
