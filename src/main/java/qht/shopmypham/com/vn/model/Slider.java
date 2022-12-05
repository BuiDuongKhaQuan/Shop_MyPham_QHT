package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Slider implements Serializable {
    int idsl;
    String img;

    public Slider() {
    }

    public Slider(int idsl, String img) {
        this.idsl = idsl;
        this.img = img;
    }

    public int getIdsl() {
        return idsl;
    }

    public void setIdsl(int idsl) {
        this.idsl = idsl;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
