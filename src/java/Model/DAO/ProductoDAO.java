package Model.DAO;

import Config.Conexion;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public Producto Consultar(String id_Prod) {
        Producto prd = new Producto();
        String sql = "select * from maestro_productos where mp_idprod=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, id_Prod);
            rs = ps.executeQuery();
            while (rs.next()) {
                prd.setId_Prod(rs.getInt("mp_idprod"));
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
        } catch (Exception e) {

        }
        return prd;
    }

    public int Registrar(Producto prd) {
        String sql = "INSERT INTO bd_tienda.maestro_productos (mp_marca, mp_nombreprd, mp_referencia, mp_anoinic, mp_fmlaolfat, mp_nota_salida,"
                + " mp_nota_corazon, mp_nota_fondo, mp_categoria, mp_tipo, mp_onzas, mp_genero, mp_precio_compra, mp_descuentro)"
                + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?))";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, prd.getMarca());
            ps.setString(2, prd.getNombre_Prd());
            ps.setString(3, prd.getReferencia());
            ps.setString(4, prd.getAno_Inic());
            ps.setString(5, prd.getFmlaolfat());
            ps.setString(6, prd.getNota_Salida());
            ps.setString(7, prd.getNota_Corazon());
            ps.setString(8, prd.getNota_Fondo());
            ps.setString(9, prd.getCategoria());
            ps.setInt(10, prd.getTipo());
            ps.setInt(11, prd.getOnzas());
            ps.setString(12, prd.getGenero());
            ps.setDouble(13, prd.getPrecio_Venta());
            ps.setDouble(14, prd.getDescuento());
            ps.executeUpdate();
            //Verificar código de error del Executequery
        } catch (Exception e) {

        }
        return r;
    }
    /*public Producto listarId(int id) {
        Producto prd = new Producto();
        String sql = "select * from maestro_clientes where mc_idcl=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                prd.setId_Cl(rs.getInt(1));
                prd.setNro_Doc(rs.getInt(2));
                prd.setTpo_Id(rs.getString(3));
                prd.setNombre(rs.getString(4));
                prd.setApellido(rs.getString(5));
                prd.setEmail(rs.getString(6));
                prd.setTelefono(rs.getString(7));
                prd.setDirecc(rs.getString(8));
                prd.setCod_Postal(rs.getString(9));
                prd.setCiudad(rs.getString(10));
                prd.setDepto(rs.getString(11));
                prd.setPais(rs.getString(12));
                prd.setPswd(rs.getString(13));
                prd.setFoto(rs.getString(14));
                prd.setRol(rs.getString(15));
                prd.setDescuento(rs.getString(16));
            }
        } catch (Exception e) {
        }
        return prd;
    }
*/
    public List Listar() {
        String sql = "select * from maestro_clientes";
        List<Producto> lista = new ArrayList<>();
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
                lista.add(prd);
            }
        } catch (Exception e) {
        }
        return lista;
    }/*
    public void eliminar(int id){
        String sql="delete from maestro_clientes where mc_idcl="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }*/
}
