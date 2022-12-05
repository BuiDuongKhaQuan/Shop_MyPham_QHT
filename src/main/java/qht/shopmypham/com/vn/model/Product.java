package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Product implements Serializable, Comparable<Product> {
    private int id;
    private String name;
    private String img;
    private String trademark;
    private boolean status;
    private double price;
    private String information;
    private int idC;
    private int quantity;
    private double discount;

    public Product() {
    }

    public Product(int id, String name, String img, String trademark, boolean status, double price, String information, int idC, int quantity, double discount) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.trademark = trademark;
        this.status = status;
        this.price = price;
        this.information = information;
        this.idC = idC;
        this.quantity = quantity;
        this.discount = discount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getTrademark() {
        return trademark;
    }

    public void setTrademark(String trademark) {
        this.trademark = trademark;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public int getIdC() {
        return idC;
    }

    public void setIdC(int idC) {
        this.idC = idC;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", trademark='" + trademark + '\'' +
                ", status=" + status +
                ", price=" + price +
                ", information='" + information + '\'' +
                ", idC=" + idC +
                ", quantity=" + quantity +
                ", discount=" + discount +
                '}';
    }

    @Override
    public int compareTo(Product p) {
        return this.id - p.id;
    }
}
