package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Product implements Serializable, Comparable<Product> {
    private int id;
    private String name;
    private String img1;
    private String img2;
    private String img3;
    private String img4;
    private String trademark;

    private double price;
    private String information;
    private int idC;
    private int quantity;
    private double discount;

    public Product() {
    }

    public Product(int id, String name, String img1, String img2, String img3, String img4, String trademark, double price, String information, int idC, int quantity, double discount) {
        this.id = id;
        this.name = name;
        this.img1 = img1;
        this.img2 = img2;
        this.img3 = img3;
        this.img4 = img4;
        this.trademark = trademark;

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

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public String getImg3() {
        return img3;
    }

    public void setImg3(String img3) {
        this.img3 = img3;
    }

    public String getImg4() {
        return img4;
    }

    public void setImg4(String img4) {
        this.img4 = img4;
    }

    public String getTrademark() {
        return trademark;
    }

    public void setTrademark(String trademark) {
        this.trademark = trademark;
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
    public int compareTo(Product p) {
        return this.id - p.id;
    }
}
