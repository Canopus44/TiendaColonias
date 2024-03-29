package Model.DAO;

import Config.Conexion;
import Modelo.Producto;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

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
        String sql = "INSERT INTO maestro_productos (mp_marca, mp_nombreprd, mp_referencia, mp_anoinic, mp_fmlaolfat, mp_nota_salida, mp_nota_corazon, mp_nota_fondo, mp_categoria, mp_tipo, mp_onzas, mp_genero, mp_precio_compra, mp_precio_venta, mp_descuentro, mp_precio_descto, mp_oferta, mp_stock) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
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
            ps.setDouble(13, prd.getPrecio_Compra());
            ps.setDouble(14, prd.getPrecio_Venta());
            ps.setDouble(15, prd.getDescuento());
            ps.setDouble(16, prd.getPrecio_Descuento());
            ps.setString(17, prd.getOferta());
            ps.setInt(18, prd.getStock());
            ps.executeUpdate();
            //Verificar código de error del Executequery
        } catch (Exception e) {

        }
        return r;
    }
    
    public int ActualizarStock(int id, int stock){
      String sql="UPDATE bd_tienda.maestro_productos "
              + "SET mp_stock=? "
              + "WHERE mp_idprod=?";
      try {
          con=cn.Conexion();
          ps=con.prepareStatement(sql);
          ps.setInt(1, stock);
          ps.setInt(2, id);
          ps.executeUpdate();
      } catch (Exception e) {
      }
      return r;
  }
     
    public Producto listarId(int id) {
        Producto prd = new Producto();
        String sql = "select * from maestro_productos where mp_idprod=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
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
                prd.setimagen(rs.getString(20));
            }
        } catch (SQLException e) {
        }
        return prd;
    }
    
    public void listarImg(int id, HttpServletResponse response){
        String sql = "select * from maestro_productos where mp_idprod=" + id;
        InputStream inputStream=null;
        OutputStream outputStream=null;
        BufferedInputStream bufferedInputStream=null;
        BufferedOutputStream bufferedOutputStream=null;
        try {
            outputStream=response.getOutputStream();
            con=cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                inputStream = rs.getBinaryStream("mp_imagen");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i=0;
            while ((i=bufferedInputStream.read())!=-1) {                
                bufferedOutputStream.write(i);
            }
        } catch (Exception e) {
        }
    }
    
    public List Listar() {
        String sql = "select * from maestro_productos";
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
                prd.setStock(rs.getInt(19));
                prd.setimagen(rs.getString(20));
                lista.add(prd);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public void eliminar(int id){
        String sql="delete from maestro_productos where mp_idprod="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void Actualizar(Producto prd, int _id) {
        String sql = "UPDATE  bd_tienda.maestro_productos "
                + " SET mp_marca = ?, mp_nombreprd = ? , mp_referencia= ?, mp_anoinic = ?, mp_fmlaolfat = ?, mp_nota_salida = ?, mp_nota_corazon = ?"
                + ", mp_nota_fondo = ?, mp_categoria = ?, mp_tipo = ?, mp_onzas = ?, mp_genero = ?, mp_precio_compra = ?, mp_precio_venta = ?, "
                + "mp_descuentro = ?, mp_precio_descto = ?, mp_oferta = ?, mp_stock = ? "
                + " WHERE mp_idprod ="+_id;
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
            ps.setDouble(13, prd.getPrecio_Compra());
            ps.setDouble(14, prd.getPrecio_Venta());
            ps.setDouble(15, prd.getDescuento());
            ps.setDouble(16, prd.getPrecio_Descuento());
            ps.setString(17, prd.getOferta());
            ps.setInt(18, prd.getStock());
            ps.executeUpdate();
            //Verificar código de error del Executequery
        } catch (Exception e) {

        }      
    }
    
    
    
}
