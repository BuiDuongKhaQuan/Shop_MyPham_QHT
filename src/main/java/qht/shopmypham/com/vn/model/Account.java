package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Account implements Serializable {
    private int id;
    private String user;
    private String pass;
    private String email;
    private String phone;
    private String img;
    private int isAdmin;
    private String fullName;
    private String address;

    public Account() {
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", user='" + user + '\'' +
                ", pass='" + pass + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", img='" + img + '\'' +
                ", isAdmin=" + isAdmin +
                ", fullName='" + fullName + '\'' +
                ", address='" + address + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Account(int id, String user, String pass, String email, String phone, String img, int isAdmin, String fullName, String address) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.email = email;
        this.phone = phone;
        this.img = img;
        this.isAdmin = isAdmin;
        this.fullName = fullName;
        this.address = address;
    }
}
