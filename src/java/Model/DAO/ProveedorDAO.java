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
    private int r;
    
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
    
    public int Registrar(Proveedor pr) {
        String sql = "INSERT INTO bd_tienda.maestro_proveedores ( mp_nombreproveedor, mp_ciudad, mp_departamento, mp_codpostal, mp_provincia, mp_pais , mp_numtelefono, mp_numfax, mp_email )VALUES(?,?,?,?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pr.getNombre_Proveedor());
            ps.setString(2, pr.getCiudad());
            ps.setString(3, pr.getDepartamento());
            ps.setString(4, pr.getCod_Postal());
            ps.setString(5, pr.getProvincia());
            ps.setString(6, pr.getPais());
            ps.setString(7, pr.getNum_telefono());
            ps.setString(8, pr.getNum_fax());
            ps.setString(9, pr.getEmail());          
            ps.executeUpdate();
            //Verificar código de error del Executequery
        } catch (Exception e) {

        }
        return r;
    }

    public void Actualizar(String _nombreProveedor, String _ciudad, String _departamento, String _codpostal, String _provincia, String _pais, String _numTelefono, String _numFax, String _email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
