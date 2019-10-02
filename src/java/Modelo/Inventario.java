package Modelo;

public class Inventario {
    private String id_Producto;
    private String nombre_Prd;
    private String marca;
    private String referencia;
    private String id_Proveedor;
    private int unidades_Existencia;
    private double precio_Costo;
    private double precio_Venta;

    public Inventario(String id_Producto, String nombre_Prd, String marca, String referencia, String id_Proveedor, int unidades_Existencia, double precio_Costo, double precio_Venta) {
        this.id_Producto = id_Producto;
        this.nombre_Prd = nombre_Prd;
        this.marca = marca;
        this.referencia = referencia;
        this.id_Proveedor = id_Proveedor;
        this.unidades_Existencia = unidades_Existencia;
        this.precio_Costo = precio_Costo;
        this.precio_Venta = precio_Venta;
    }

    public double getPrecio_Venta() {
        return precio_Venta;
    }

    public void setPrecio_Venta(double precio_Venta) {
        this.precio_Venta = precio_Venta;
    }

    public String getId_Producto() {
        return id_Producto;
    }

    public void setId_Producto(String id_Producto) {
        this.id_Producto = id_Producto;
    }

    public String getNombre_Prd() {
        return nombre_Prd;
    }

    public void setNombre_Prd(String nombre_Prd) {
        this.nombre_Prd = nombre_Prd;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public String getId_Proveedor() {
        return id_Proveedor;
    }

    public void setId_Proveedor(String id_Proveedor) {
        this.id_Proveedor = id_Proveedor;
    }

    public int getUnidades_Existencia() {
        return unidades_Existencia;
    }

    public void setUnidades_Existencia(int unidades_Existencia) {
        this.unidades_Existencia = unidades_Existencia;
    }

    public double getPrecio_Costo() {
        return precio_Costo;
    }

    public void setPrecio_Costo(double precio_Costo) {
        this.precio_Costo = precio_Costo;
    }
}

