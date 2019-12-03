package Modelo;

public class Carrito {
    
    int item;
    int idProducto;
    int cantidad;
    String nombre;
    String categoria;
    double precioCompra;
    double subTotal;    
    private String id_Carrito;
    private String total_Carrito;

    public Carrito() {
    }

    public Carrito(int item, int idProducto, int cantidad, String nombre, String categoria, double precioCompra, double subTotal, String id_Carrito, String total_Carrito) {
        this.item = item;
        this.idProducto = idProducto;
        this.cantidad = cantidad;
        this.nombre = nombre;
        this.categoria = categoria;
        this.precioCompra = precioCompra;
        this.subTotal = subTotal;
        this.id_Carrito = id_Carrito;
        this.total_Carrito = total_Carrito;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public double getPrecioCompra() {
        return precioCompra;
    }

    public void setPrecioCompra(double precioCompra) {
        this.precioCompra = precioCompra;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
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
