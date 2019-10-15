
package Modelo;


public class ShopCart {
    private int bd_idcarrito;
    private double bd_totalcarrito;
    private String bd_nombreprod;
    private String bd_imgprod;
    private double bd_precioprod;
    private int bd_cantidad;
    
    public ShopCart(int bd_idcarrito, double bd_totalcarrito, String bd_nombreprod, String bd_imgprod, double bd_precioprod, int cantidad) {
        this.bd_idcarrito = bd_idcarrito;
        this.bd_totalcarrito = bd_totalcarrito;
        this.bd_nombreprod = bd_nombreprod;
        this.bd_imgprod = bd_imgprod;
        this.bd_precioprod = bd_precioprod;
        this.bd_cantidad = bd_cantidad;
        
    }

    public ShopCart() {
       
    }
    
    public int getbd_idcarrito() {
        return bd_idcarrito;
    }

    public void setbd_idcarrito(int bd_idcarrito) {
        this.bd_idcarrito = bd_idcarrito;
    }

    public double getbd_totalcarrito() {
        return bd_totalcarrito;
    }

    public void setbd_totalcarrito(double bd_totalcarrito) {
        this.bd_totalcarrito = bd_totalcarrito;
    }

    public String getbd_nombreprod() {
        return bd_nombreprod;
    }

    public void setbd_nombreprod(String bd_nombreprod) {
        this.bd_nombreprod = bd_nombreprod;
    }

    public String getbd_imgprod() {
        return bd_imgprod;
    }

    public void setbd_imgprod(String bd_imgprod) {
        this.bd_imgprod = bd_imgprod;
    }

    public double getbd_precioprod() {
        return bd_precioprod;
    }

    public void setbd_precioprod(double bd_precioprod) {
        this.bd_precioprod = bd_precioprod;
    }

     public int getbd_cantidad() {
        return bd_cantidad;
    }

    public void setbd_cantidad(int bd_precioprod) {
        this.bd_cantidad = bd_cantidad;
    }
    
}
