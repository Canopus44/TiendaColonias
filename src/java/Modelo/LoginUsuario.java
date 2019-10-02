package Modelo;

public class LoginUsuario {
    private int id_Usuario;
    private String email;
    private String password;
    private String rol;
    private String nombre;
    private String apellido;

    public LoginUsuario(int id_Usuario, String email, String password, String rol, String nombre, String apellido) {
        this.id_Usuario = id_Usuario;
        this.email = email;
        this.password = password;
        this.rol = rol;
        this.nombre = nombre;
        this.apellido = apellido;
    }
/*
    Se crea el consstructor Vacio , el cual nos ayudara a manejar la clase con el modelo DAO
    */
    public LoginUsuario() {
       
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getId_Usuario() {
        return id_Usuario;
    }

    public void setId_Usuario(int id_Usuario) {
        this.id_Usuario = id_Usuario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
