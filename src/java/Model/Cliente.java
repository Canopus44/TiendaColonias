package Model;

public class Cliente {
    private int id_Cl;
    private int nro_Doc;
    private String tpo_Id;
    private String nombre;
    private String apellido;
    private String email;
    private String telefono;
    private String direcc;
    private String cod_Postal;
    private String ciudad;
    private String depto;
    private String pais;

    public Cliente(int id_Cl, int nro_Doc, String tpo_Id, String nombre, String apellido, String email, String telefono, String direcc, String cod_Postal, String ciudad, String depto, String pais, String pswd, String foto, String rol, String descuento) {
        this.id_Cl = id_Cl;
        this.nro_Doc = nro_Doc;
        this.tpo_Id = tpo_Id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.telefono = telefono;
        this.direcc = direcc;
        this.cod_Postal = cod_Postal;
        this.ciudad = ciudad;
        this.depto = depto;
        this.pais = pais;
        this.pswd = pswd;
        this.foto = foto;
        this.rol = rol;
        this.descuento = descuento;
    }
    private String pswd;
    private String foto;
    private String rol;
    private String descuento;

    public int getId_Cl() {
        return id_Cl;
    }

    public void setId_Cl(int id_Cl) {
        this.id_Cl = id_Cl;
    }

    public int getNro_Doc() {
        return nro_Doc;
    }

    public void setNro_Doc(int nro_Doc) {
        this.nro_Doc = nro_Doc;
    }

    public String getTpo_Id() {
        return tpo_Id;
    }

    public void setTpo_Id(String tpo_Id) {
        this.tpo_Id = tpo_Id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDirecc() {
        return direcc;
    }

    public void setDirecc(String direcc) {
        this.direcc = direcc;
    }

    public String getCod_Postal() {
        return cod_Postal;
    }

    public void setCod_Postal(String cod_Postal) {
        this.cod_Postal = cod_Postal;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getDepto() {
        return depto;
    }

    public void setDepto(String depto) {
        this.depto = depto;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getPswd() {
        return pswd;
    }

    public void setPswd(String pswd) {
        this.pswd = pswd;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getDescuento() {
        return descuento;
    }

    public void setDescuento(String descuento) {
        this.descuento = descuento;
    }
}