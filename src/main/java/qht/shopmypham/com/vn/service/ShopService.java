package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Shop;

import java.util.stream.Collectors;

public class ShopService {
    public static Shop getShop() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM shop")
                        .mapToBean(Shop.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );
    }
}
