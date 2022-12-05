package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;

public class CartService {
    public static void addProductToCart(String idp, String quantity, String idcart) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO listproductbycart(idp,quantity,idcart) " +
                                "VALUES (?,?,?)")
                        .bind(0, idp).bind(1, quantity).bind(2, idcart)
                        .execute()
        );
    }

    public static void main(String[] args) {
    }
}
