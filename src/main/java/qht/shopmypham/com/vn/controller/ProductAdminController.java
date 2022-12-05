package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductAdminController", value = "/product-admin")
public class ProductAdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = ProductService.getAllProduct();
        List<Categories> listCategories = ProductService.getListCategories();

        request.setAttribute("listCategories", listCategories);
        request.setAttribute("list", list);
        request.getRequestDispatcher("products-admin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
