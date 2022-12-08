package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.ByCart;
import qht.shopmypham.com.vn.model.Product;

import java.util.List;
import java.util.stream.Collectors;

public class CartService {
    public static void addProductToCart(String idp, String quantity, String ida) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO listproductbycart(idp,quantity,ida) " +
                                "VALUES (?,?,?)")
                        .bind(0, idp).bind(1, quantity).bind(2, ida)
                        .execute()
        );
    }

    public static List<ByCart> getAllByIda(String ida) {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from listproductbycart where ida = ?")
                    .bind(0, ida)
                    .mapToBean(ByCart.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<ByCart> getAll() {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from listproductbycart").mapToBean(ByCart.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static ByCart checkProduct(String idp, String ida) {

        List<ByCart> byCarts = JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from listproductbycart where idp = ? and ida = ?")
                    .bind(0, idp)
                    .bind(1, ida)
                    .mapToBean(ByCart.class)
                    .stream().collect(Collectors.toList());
        });
        if (byCarts.size() == 0)
            return null;
        return byCarts.get(0);
    }

    public static void upQuantityProductByCart(String quantity, String idp, String ida) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update listproductbycart set quantity =? where idp = ? and ida = ?")
                        .bind(0, quantity)
                        .bind(1, idp)
                        .bind(2, ida)
                        .execute()
        );
    }
    public static void deleteProductByIdpAndIda(String idp, String ida) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from listproductbycart where idp = ? and ida = ?")
                        .bind(0, idp)
                        .bind(1, ida)
                        .execute()
        );
    }
    public static void main(String[] args) {
        deleteProductByIdpAndIda("5","1");
    }
}
