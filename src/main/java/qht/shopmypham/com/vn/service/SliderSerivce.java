package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Slider;
import qht.shopmypham.com.vn.model.SliderLogo;

import java.util.List;
import java.util.stream.Collectors;

public class SliderSerivce {
    public static List<Slider> getAllSlider() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM slider")
                        .mapToBean(Slider.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }

    public static List<SliderLogo> getAllSliderLogo() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM slider_logo_pro")
                        .mapToBean(SliderLogo.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }
}
