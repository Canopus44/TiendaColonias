package Modelo;

public class DetallePedido {
    private String id_Pedido;
    private String fecha;
    private String estado;
    private double valor_Venta;
    private double valor_Compra;

    public DetallePedido(String id_Pedido, String fecha, String estado, double valor_Venta, double valor_Compra) {
        this.id_Pedido = id_Pedido;
        this.fecha = fecha;
        this.estado = estado;
        this.valor_Venta = valor_Venta;
        this.valor_Compra = valor_Compra;
    }        

    public String getId_Pedido() {
        return id_Pedido;
    }

    public void setId_Pedido(String id_Pedido) {
        this.id_Pedido = id_Pedido;
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

    public double getValor_Venta() {
        return valor_Venta;
    }

    public void setValor_Venta(double valor_Venta) {
        this.valor_Venta = valor_Venta;
    }

    public double getValor_Compra() {
        return valor_Compra;
    }

    public void setValor_Compra(double valor_Compra) {
        this.valor_Compra = valor_Compra;
    }
}


