package Modelo;

public class Producto {
   private int id_Prod;
   private String marca;
   private String nombre_Prd;
   private String referencia;
   private String ano_Inic;
   private String fmlaolfat;
   private String nota_Salida;
   private String nota_Corazon;
   private String nota_Fondo;
   private String categoria;
   private String oferta;
   private String genero;
   private int tipo;
   private int onzas;   
   private double precio_Compra;
   private double precio_Venta;
   private double descuento;
   private double precio_Descuento;
   private int stock;  

    public Producto(int id_Prod, String marca, String nombre_Prd, String referencia, String ano_Inic, String fmlaolfat, String nota_Salida, String nota_Corazon, String nota_Fondo, String categoria, String oferta, String genero, int tipo, int onzas, double precio_Compra, double precio_Venta, double descuento, double precio_Descuento, int stock) {
        this.id_Prod = id_Prod;
        this.marca = marca;
        this.nombre_Prd = nombre_Prd;
        this.referencia = referencia;
        this.ano_Inic = ano_Inic;
        this.fmlaolfat = fmlaolfat;
        this.nota_Salida = nota_Salida;
        this.nota_Corazon = nota_Corazon;
        this.nota_Fondo = nota_Fondo;
        this.categoria = categoria;
        this.oferta = oferta;
        this.genero = genero;
        this.tipo = tipo;
        this.onzas = onzas;
        this.precio_Compra = precio_Compra;
        this.precio_Venta = precio_Venta;
        this.descuento = descuento;
        this.precio_Descuento = precio_Descuento;
        this.stock = stock;
    }

    public Producto() {
    }

    public int getId_Prod() {
        return id_Prod;
    }

    public void setId_Prod(int id_Prod) {
        this.id_Prod = id_Prod;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getNombre_Prd() {
        return nombre_Prd;
    }

    public void setNombre_Prd(String nombre_Prd) {
        this.nombre_Prd = nombre_Prd;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public String getAno_Inic() {
        return ano_Inic;
    }

    public void setAno_Inic(String ano_Inic) {
        this.ano_Inic = ano_Inic;
    }

    public String getFmlaolfat() {
        return fmlaolfat;
    }

    public void setFmlaolfat(String fmlaolfat) {
        this.fmlaolfat = fmlaolfat;
    }

    public String getNota_Salida() {
        return nota_Salida;
    }

    public void setNota_Salida(String nota_Salida) {
        this.nota_Salida = nota_Salida;
    }

    public String getNota_Corazon() {
        return nota_Corazon;
    }

    public void setNota_Corazon(String nota_Corazon) {
        this.nota_Corazon = nota_Corazon;
    }

    public String getNota_Fondo() {
        return nota_Fondo;
    }

    public void setNota_Fondo(String nota_Fondo) {
        this.nota_Fondo = nota_Fondo;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getOferta() {
        return oferta;
    }

    public void setOferta(String oferta) {
        this.oferta = oferta;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public int getOnzas() {
        return onzas;
    }

    public void setOnzas(int onzas) {
        this.onzas = onzas;
    }

    public double getPrecio_Compra() {
        return precio_Compra;
    }

    public void setPrecio_Compra(double precio_Compra) {
        this.precio_Compra = precio_Compra;
    }

    public double getPrecio_Venta() {
        return precio_Venta;
    }

    public void setPrecio_Venta(double precio_Venta) {
        this.precio_Venta = precio_Venta;
    }

    public double getDescuento() {
        return descuento;
    }

    public void setDescuento(double descuento) {
        this.descuento = descuento;
    }

    public double getPrecio_Descuento() {
        return precio_Descuento;
    }

    public void setPrecio_Descuento(double precio_Descuento) {
        this.precio_Descuento = precio_Descuento;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
}
