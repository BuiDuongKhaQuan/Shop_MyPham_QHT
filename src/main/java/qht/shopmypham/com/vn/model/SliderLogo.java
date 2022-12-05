package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class SliderLogo implements Serializable {
    int idlp;
    String img_logo;

    public SliderLogo() {
    }

    public SliderLogo(int idlp, String img_logo) {
        this.idlp = idlp;
        this.img_logo = img_logo;
    }

    public int getIdlp() {
        return idlp;
    }

    public void setIdlp(int idlp) {
        this.idlp = idlp;
    }

    public String getImg_logo() {
        return img_logo;
    }

    public void setImg_logo(String img_logo) {
        this.img_logo = img_logo;
    }
}
