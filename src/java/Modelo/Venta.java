package Modelo;


public class Venta {
    int id;
    int item;
    int idCliente;
    int idProducto;
    int idPago;
    int cantidad;
    String numSerie;
    String DescripcionP;
    String fecha;
    String estado;
    Double precio;
    Double subtotal;
    Double monto;

    public Venta() {
    }

    public Venta(int id, int item, int idCliente, int idProducto, int idPago, int cantidad, String numSerie, String DescripcionP, String fecha, String estado, Double precio, Double subtotal, Double monto) {
        this.id = id;
        this.item = item;
        this.idCliente = idCliente;
        this.idProducto = idProducto;
        this.idPago = idPago;
        this.cantidad = cantidad;
        this.numSerie = numSerie;
        this.DescripcionP = DescripcionP;
        this.fecha = fecha;
        this.estado = estado;
        this.precio = precio;
        this.subtotal = subtotal;
        this.monto = monto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getIdPago() {
        return idPago;
    }

    public void setIdPago(int idPago) {
        this.idPago = idPago;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getNumSerie() {
        return numSerie;
    }

    public void setNumSerie(String numSerie) {
        this.numSerie = numSerie;
    }

    public String getDescripcionP() {
        return DescripcionP;
    }

    public void setDescripcionP(String DescripcionP) {
        this.DescripcionP = DescripcionP;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public Double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(Double subtotal) {
        this.subtotal = subtotal;
    }

    public Double getMonto() {
        return monto;
    }

    public void setMonto(Double monto) {
        this.monto = monto;
    }

   
}
