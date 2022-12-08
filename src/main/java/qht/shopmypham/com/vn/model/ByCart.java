package qht.shopmypham.com.vn.model;

import qht.shopmypham.com.vn.service.ProductService;

import java.io.Serializable;

public class ByCart implements Serializable {
    int idlpbycart;
    int idp;
    int quantity;
    int ida;

    public ByCart() {
    }

    @Override
    public String toString() {
        return "ByCart{" +
                "idlpbycart=" + idlpbycart +
                ", idp=" + idp +
                ", quantity=" + quantity +
                ", ida=" + ida +
                '}';
    }

    public ByCart(int idlpbycart, int idp, int quantity, int ida) {
        this.idlpbycart = idlpbycart;
        this.idp = idp;
        this.quantity = quantity;
        this.ida = ida;
    }

    public int getIdlpbycart() {
        return idlpbycart;
    }

    public void setIdlpbycart(int idlpbycart) {
        this.idlpbycart = idlpbycart;
    }

    public int getIdp() {
        return idp;
    }

    public void setIdp(int idp) {
        this.idp = idp;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getida() {
        return ida;
    }

    public void setida(int ida) {
        this.ida = ida;
    }

}
