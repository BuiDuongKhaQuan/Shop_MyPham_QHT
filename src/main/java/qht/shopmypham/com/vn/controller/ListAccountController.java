package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Deparment;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.AccountService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListAccountController", value = "/list-account-admin")
public class ListAccountController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Account> listAccount = AccountService.getAllAccount();
        List<Deparment> listDeparment = AccountService.getAllDeparment();
//        List<Account> listAccountByDepartment = AccountService.getAllAccountByDeparment()
//        request.setAttribute("listCategories", listCategories);
        request.setAttribute("listDeparment", listDeparment);
        request.setAttribute("listAccount", listAccount);
        request.getRequestDispatcher("list-account.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
