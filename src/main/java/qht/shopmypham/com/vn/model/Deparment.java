package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Deparment implements Serializable {
    private int id;
    private String deparment;

    public Deparment() {
    }

    public Deparment(int id, String deparment) {
        this.id = id;
        this.deparment = deparment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDeparment() {
        return deparment;
    }

    public void setDeparment(String deparment) {
        this.deparment = deparment;
    }

    @Override
    public String toString() {
        return "Deparment{" +
                "id=" + id +
                ", deparment='" + deparment + '\'' +
                '}';
    }
}
