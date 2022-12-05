package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Shop implements Serializable {
    int idlg;
    String img;
    String slogan;
    String address_1;
    String address_2;
    String phone;
    String email;

    public Shop() {
    }

    public Shop(int idlg, String img, String slogan, String address_1, String address_2, String phone, String email) {
        this.idlg = idlg;
        this.img = img;
        this.slogan = slogan;
        this.address_1 = address_1;
        this.address_2 = address_2;
        this.phone = phone;
        this.email = email;
    }

    public int getIdlg() {
        return idlg;
    }

    public void setIdlg(int idlg) {
        this.idlg = idlg;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getSlogan() {
        return slogan;
    }

    public void setSlogan(String slogan) {
        this.slogan = slogan;
    }

    public String getAddress_1() {
        return address_1;
    }

    public void setAddress_1(String address_1) {
        this.address_1 = address_1;
    }

    public String getAddress_2() {
        return address_2;
    }

    public void setAddress_2(String address_2) {
        this.address_2 = address_2;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
