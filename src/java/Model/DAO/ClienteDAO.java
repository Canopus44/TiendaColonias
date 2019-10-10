package Model.DAO;

import Config.Conexion;
import Modelo.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    String[] Nom_campo;
    private int r;

    public Cliente Validar(String correo, String password) {
        Cliente cl = new Cliente();
        String sql = "select * from maestro_clientes where mc_email=? and mc_pswd=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                cl.setNro_Doc(rs.getInt("mc_nrodoc"));
                cl.setTpo_Id(rs.getString("mc_tpoid"));
                cl.setNombre(rs.getString("mc_nombre"));
                cl.setApellido(rs.getString("mc_apellido"));
                cl.setEmail((rs.getString("mc_email")));
                cl.setTelefono(rs.getString("mc_telefono"));
                cl.setDirecc(rs.getString("mc_direcc"));
                cl.setCod_Postal(rs.getString("mc_codpostal"));
                cl.setCiudad(rs.getString("mc_ciudad"));
                cl.setDepto(rs.getString("mc_depto"));
                cl.setPais(rs.getString("mc_pais"));
                cl.setPswd(rs.getString("mc_pswd"));
                cl.setFoto(rs.getString("mc_foto"));
                cl.setRol(rs.getString("mc_rol"));
                cl.setDescuento(rs.getString("mc_descuento"));
            }
        } catch (Exception e) {

        }
        return cl;
    }

    public int Registrar(Cliente cl) {
        String sql = "INSERT INTO bd_tienda.maestro_clientes (mc_nrodoc, mc_tpoid, mc_nombre, mc_apellido, mc_email, mc_telefono, mc_direcc, mc_codpostal, mc_ciudad, mc_depto, mc_pais, mc_pswd, mc_foto, mc_rol, mc_descuento)VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, cl.getNro_Doc());
            ps.setString(2, cl.getTpo_Id());
            ps.setString(3, cl.getNombre());
            ps.setString(4, cl.getApellido());
            ps.setString(5, cl.getEmail());
            ps.setString(6, cl.getTelefono());
            ps.setString(7, cl.getDirecc());
            ps.setString(8, cl.getCod_Postal());
            ps.setString(9, cl.getCiudad());
            ps.setString(10, cl.getDepto());
            ps.setString(11, cl.getPais());
            ps.setString(12, cl.getPswd());
            ps.setString(13, cl.getFoto());
            ps.setString(14, cl.getRol());
            ps.setString(15, cl.getDescuento());
            ps.executeUpdate();
            //Verificar código de error del Executequery
        } catch (Exception e) {

        }
        return r;
    }

    public Cliente listarId(int id) {
        Cliente cl = new Cliente();
        String sql = "select * from maestro_clientes where mc_idcl=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                cl.setId_Cl(rs.getInt(1));
                cl.setNro_Doc(rs.getInt(2));
                cl.setTpo_Id(rs.getString(3));
                cl.setNombre(rs.getString(4));
                cl.setApellido(rs.getString(5));
                cl.setEmail(rs.getString(6));
                cl.setTelefono(rs.getString(7));
                cl.setDirecc(rs.getString(8));
                cl.setCod_Postal(rs.getString(9));
                cl.setCiudad(rs.getString(10));
                cl.setDepto(rs.getString(11));
                cl.setPais(rs.getString(12));
                cl.setPswd(rs.getString(13));
                cl.setFoto(rs.getString(14));
                cl.setRol(rs.getString(15));
                cl.setDescuento(rs.getString(16));
            }
        } catch (Exception e) {
        }
        return cl;
    }

    public void Eliminar(String email, int documento) {

        String sql = "delete from maestro_clientes where mc_email=? and mc_nrodoc=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setInt(2, documento);
            //Verificar código de error del Executequery
        } catch (Exception e) {

        }

    }

    public void Actualizar(int doc, String tipoId, String email, String tel,
            String dir, String Cod_postal, String ciudad, String depto,
            String pais, String pswd, String foto, String rol, String des) {

        String[] Campos = {"mc_email", "mc_telefono", "mc_direcc", "mc_codpostal",
            "mc_ciudad", "mc_depto", "mc_pais", "mc_pswd", "mc_foto", "mc_descuento"};

        int i = 0;

        String sql = "udpate maestro_clientes set ";

        //Realizo un Script Dinámico SQL para actualizar únicamente los campos
        //que vengan con datos. Los vacíos no se actualizan.
        //Concaneto el nombre del campo en la tabla + el valor que llega por parámetro
        //mc_campo = par_value
        if (!" ".equals(email)) {
            i = Buscar(Campos, "mc_email", "email");
            sql = sql.concat(sql + ", " + Campos[i] + "=?");

        }
        if (!" ".equals(tel)) {
            i = Buscar(Campos, "mc_telefono", "tel");

            sql = sql.concat(sql + ", " + Campos[i] + "=?");

        }
        if (!" ".equals(dir)) {
            i = Buscar(Campos, "mc_email", "dir");
            sql = sql = sql.concat(sql + ", " + Campos[i] + "=?");

        }
        if (!" ".equals(Cod_postal)) {
            i = Buscar(Campos, "mc_codpostal", "Cod_postal");
            sql = sql.concat(sql + ", " + Campos[i] + "=?");
        }
        if (!" ".equals(ciudad)) {
            i = Buscar(Campos, "mc_ciudad", "Campos");
            sql = sql.concat(sql + ", " + Campos[i] + "=?");
        }
        if (!" ".equals(depto)) {
            i = Buscar(Campos, "mc_depto", "depto");
            sql = sql.concat(sql + ", " + Campos[i] + "=?");
        }
        if (!" ".equals(pais)) {
            i = Buscar(Campos, "mc_pais", "pais");
            sql = sql.concat(sql + ", " + Campos[i] + "=?");
        }
        if (!" ".equals(pswd)) {
            i = Buscar(Campos, "mc_pswd", "pswd");
            sql = sql.concat(sql + ", " + Campos[i] + "=?");
        }
        if (!" ".equals(foto)) {
            i = Buscar(Campos, "mc_foto", "foto");
            sql = sql.concat(sql + ", " + Campos[i] + "=?");
        }
        if (!" ".equals(rol)) {
            i = Buscar(Campos, "mc_rol", "rol");
            sql = sql.concat(sql + ", " + Campos[i] + "=?");
        }

        //Eliminar la primera coma "," de sobra en el script
        sql = sql.replaceFirst(",", " ");

        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            for (int J = 0; J < i; J++) {
                ps.setString(J, Nom_campo[J]);
            }

            //Verificar código de error del Executequery
        } catch (Exception e) {

        }

    }

    public int Buscar(String[] vector, String Busqueda, String NomCampo) {
        //Encuentro la posición en la cuál se encuentra el parámetro BÚSQUEDA.

        int pos = 0;
        for (int i = 0; i < vector.length; i++) {
            if (vector[i].equals(Busqueda)) {
                pos = i;
                //Guardo el nombre del parámetro del método Actualizar
                Nom_campo[i] = NomCampo;
                break;
            }
        }

        return pos;

    }

    public List Listar() {
        String sql = "select * from maestro_clientes";
        List<Cliente> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cliente cl = new Cliente();
                cl.setId_Cl(rs.getInt(1));
                cl.setNro_Doc(rs.getInt(2));
                cl.setTpo_Id(rs.getString(3));
                cl.setNombre(rs.getString(4));
                cl.setApellido(rs.getString(5));
                cl.setEmail(rs.getString(6));
                cl.setTelefono(rs.getString(7));
                cl.setDirecc(rs.getString(8));
                cl.setCod_Postal(rs.getString(9));
                cl.setCiudad(rs.getString(10));
                cl.setDepto(rs.getString(11));
                cl.setPais(rs.getString(12));
                cl.setPswd(rs.getString(13));
                cl.setFoto(rs.getString(14));
                cl.setRol(rs.getString(15));
                cl.setDescuento(rs.getString(16));
                lista.add(cl);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public void eliminar(int id){
        String sql="delete from maestro_clientes where mc_idcl="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
