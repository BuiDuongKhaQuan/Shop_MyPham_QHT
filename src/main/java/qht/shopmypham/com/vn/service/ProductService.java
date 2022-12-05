package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.DBConnect;
import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    public static List<Product> getAllProduct() {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from product").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Product> getTop8Product() {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM product LIMIT 8").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Product> getTop15Product() {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM product LIMIT 15").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Categories> getListCategories() {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from categories").mapToBean(Categories.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Categories> getTop6Categories() {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM categories LIMIT 6").mapToBean(Categories.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static Product getProductById(String pid) {
        List<Product> products = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product WHERE id = ?")
                        .bind(0, pid)
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return products.get(0);
    }

    public static List<Product> getProductByPrice(String price1, String price2) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product WHERE price>? AND price<?")
                        .bind(0, price1)
                        .bind(1, price2)
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }


    public static List<Product> getCategoriesById(String cid) {
        List<Product> products = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product WHERE idC = ?")
                        .bind(0, cid)
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return products;
    }

    public static List<Product> getProductSortDescendingByPrice() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product ORDER BY price")
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }

    public static List<Product> getProductSortAscendingByPrice() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product ORDER BY price DESC ")
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }

    public static List<Product> getProductBySearch(String txtSearch) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product WHERE name LIKE ? ")
                        .bind(0, "%" + txtSearch + "%")
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }

    public static Categories getNameCategoriesById(String cid) {
        List<Categories> categories = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM categories WHERE idC = ?")
                        .bind(0, cid)
                        .mapToBean(Categories.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return categories.get(0);
    }

    public static void deleteProductById(String pid) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from product where id = ?")
                        .bind(0, pid)
                        .execute()
        );
    }

    public static void addProduct(String name, String trademark, String information, String category, String price, String quantity) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into product(name,img,trademark,status,price,information,idC,quantity) VALUES (?,null,?,null,?,?,?,?)")
                        .bind(0, name)
                        .bind(1, trademark)
                        .bind(2, price)
                        .bind(3, information)
                        .bind(4, category)
                        .bind(5, quantity)
                        .execute()
        );
    }

    public static void editProductById(String name, String trademark, String information, String category, String price, String quantity, String id) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update product set name = ?,img = null,trademark =?,status = null,price =?,information=?,idC=?,quantity =? where id = ?")
                        .bind(0, name)
                        .bind(1, trademark)
                        .bind(2, price)
                        .bind(3, information)
                        .bind(4, category)
                        .bind(5, quantity)
                        .bind(6, id)
                        .execute()
        );
    }

    public static void addCategory(String nameC) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into categories(nameC) VALUES (?)")
                        .bind(0, nameC)
                        .execute()
        );
    }

    public static void deleteCategoryById(String cid) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from categories where idC = ?")
                        .bind(0, cid)
                        .execute()
        );
    }

    public static void main(String[] args) {
//        addProduct("Bùi+Dương+khả+quân", "Mistine+Maxi+Black+Eyeliner+111", "tốt", "1", "50000", "50");
//        System.out.println(getProductByPrice("100000"));
    }
}
