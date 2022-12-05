package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Deparment;

import java.util.List;
import java.util.stream.Collectors;

public class AccountService {
    public static void editProfileAcountById(String pass, String email,
                                             String phone, String fullName, String address, String id) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set pass =?," +
                                "email = ?,phone =?,img=null,fullName=?,address =? where id = ?")
                        .bind(0, pass)
                        .bind(1, email)
                        .bind(2, phone)
                        .bind(3, fullName)
                        .bind(4, address)
                        .bind(5, id)
                        .execute()
        );
    }

    public static List<Account> getAllAccount() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account")
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }

    public static Account getAccountById(String aid) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account where id =?")
                        .bind(0, aid)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );

    }


    public static List<Account> getAllAccountByDeparment(String isAdmin) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account WHERE isAdmin = ?")
                        .bind(0, isAdmin)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }

    public static void editAcountById(String email,
                                      String phone, String fullName, String isAdmin, String id) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set email = ?,phone =?, isAdmin=?,fullName=? where id= ?")
                        .bind(0, email)
                        .bind(1, phone)
                        .bind(2, isAdmin)
                        .bind(3, fullName)
                        .bind(4, id)
                        .execute()
        );
    }

    public static void editAcountEditorById(String email,
                                            String phone, String fullName, String id) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set email = ?,phone =?, fullName=? where id= ?")
                        .bind(0, email)
                        .bind(1, phone)
                        .bind(2, fullName)
                        .bind(3, id)
                        .execute()
        );
    }

    public static List<Deparment> getAllDeparment() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM isadmin")
                        .mapToBean(Deparment.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }

    public static List<Deparment> getDeparmentById(int isAdmin) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM isadmin WHERE id = ?")
                        .bind(0, isAdmin)
                        .mapToBean(Deparment.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }
}
