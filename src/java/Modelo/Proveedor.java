package Modelo;

public class Proveedor {

    private int id_Proveedor;
    private String nombre_Proveedor;
    private String ciudad;
    private String departamento;
    private String cod_Postal;
    private String provincia;
    private String pais;
    private String num_telefono;
    private String num_fax;
    private String email;

    public Proveedor(int id_Proveedor, String nombre_Proveedor, String ciudad, String departamento, String cod_Postal, String provincia, String pais, String num_telefono, String num_fax, String email) {
        this.id_Proveedor = id_Proveedor;
        this.nombre_Proveedor = nombre_Proveedor;
        this.ciudad = ciudad;
        this.departamento = departamento;
        this.cod_Postal = cod_Postal;
        this.provincia = provincia;
        this.pais = pais;
        this.num_telefono = num_telefono;
        this.num_fax = num_fax;
        this.email = email;
    }

    public Proveedor() {
    }

    public int getId_Proveedor() {
        return id_Proveedor;
    }

    public void setId_Proveedor(int id_Proveedor) {
        this.id_Proveedor = id_Proveedor;
    }

    public String getNombre_Proveedor() {
        return nombre_Proveedor;
    }

    public void setNombre_Proveedor(String nombre_Proveedor) {
        this.nombre_Proveedor = nombre_Proveedor;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getCod_Postal() {
        return cod_Postal;
    }

    public void setCod_Postal(String cod_Postal) {
        this.cod_Postal = cod_Postal;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getNum_telefono() {
        return num_telefono;
    }

    public void setNum_telefono(String num_telefono) {
        this.num_telefono = num_telefono;
    }

    public String getNum_fax() {
        return num_fax;
    }

    public void setNum_fax(String num_fax) {
        this.num_fax = num_fax;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
