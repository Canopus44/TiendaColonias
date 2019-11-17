package Model.DAO;

import Config.Conexion;
import Modelo.Proveedor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProveedorDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public Proveedor listarId(int id) {
        Proveedor pr = new Proveedor();
        String sql = "select * from maestro_proveedores where mp_idproveedor=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                pr.setId_Proveedor(rs.getInt(1));
                pr.setNombre_Proveedor(rs.getString(2));
                pr.setCiudad(rs.getString(3));
                pr.setDepartamento(rs.getString(4));
                pr.setCod_Postal(rs.getString(5));
                pr.setProvincia(rs.getString(6));
                pr.setPais(rs.getString(7));
                pr.setNum_telefono(rs.getString(8));
                pr.setNum_fax(rs.getString(9));
                pr.setEmail(rs.getString(10));
            }
        } catch (Exception e) {

        }
        return pr;
    }
    public List Listar() {
        String sql = "select * from maestro_proveedores";
        List<Proveedor> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Proveedor pr = new Proveedor();
                pr.setId_Proveedor(rs.getInt(1));
                pr.setNombre_Proveedor(rs.getString(2));
                pr.setCiudad(rs.getString(3));
                pr.setDepartamento(rs.getString(4));
                pr.setCod_Postal(rs.getString(5));
                pr.setProvincia(rs.getString(6));
                pr.setPais(rs.getString(7));
                pr.setNum_telefono(rs.getString(8));
                pr.setNum_fax(rs.getString(9));
                pr.setEmail(rs.getString(10));
                lista.add(pr);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public void eliminar(int id){
        String sql="delete from maestro_proveedores where mp_idproveedor="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}