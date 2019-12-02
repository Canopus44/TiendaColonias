package Modelo;

public class Carrito {
    private String id_Carrito;
    private String total_Carrito;

    public Carrito(String id_Carrito, String total_Carrito) {
        this.id_Carrito = id_Carrito;
        this.total_Carrito = total_Carrito;
    }  

    public String getId_Carrito() { 
        return id_Carrito;
    }

    public void setId_Carrito(String id_Carrito) {
        this.id_Carrito = id_Carrito;
    }

    public String getTotal_Carrito() {
        return total_Carrito;
    }

    public void setTotal_Carrito(String total_Carrito) {
        this.total_Carrito = total_Carrito;
    }
}
