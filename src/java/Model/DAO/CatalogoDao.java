/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.DAO;

import Config.Conexion;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author canop
 */
public class CatalogoDao {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public ArrayList<Producto>Listar() {
        String sql = "select * from maestro_productos";
        ArrayList<Producto> lista = new ArrayList<Producto>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto prd = new Producto();
                prd.setId_Prod(rs.getInt(1));
                prd.setMarca(rs.getString(2));
                prd.setNombre_Prd(rs.getString(3));
                prd.setReferencia(rs.getString(4));
                prd.setAno_Inic(rs.getString(5));
                prd.setFmlaolfat(rs.getString(6));
                prd.setNota_Salida(rs.getString(7));
                prd.setNota_Corazon(rs.getString(8));
                prd.setNota_Fondo(rs.getString(9));
                prd.setCategoria(rs.getString(10));
                prd.setTipo(rs.getInt(11));
                prd.setOnzas(rs.getInt(12));
                prd.setGenero(rs.getString(13));
                prd.setPrecio_Compra(rs.getDouble(14));
                prd.setPrecio_Venta(rs.getDouble(15));
                prd.setDescuento(rs.getDouble(16));
                prd.setPrecio_Descuento(rs.getDouble(17));
                prd.setOferta(rs.getString(18));
                prd.setStock(rs.getInt(19));
                lista.add(prd);
            }
        } catch (Exception e) {}
        return lista;
    }
}
