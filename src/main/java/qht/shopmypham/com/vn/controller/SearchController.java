package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchController", value = "/search")
public class SearchController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String txtSearch = request.getParameter("txtSearch");
        request.setCharacterEncoding("UTF-8");
        List<Product> listProductBySearch = ProductService.getProductBySearch(txtSearch);
        List<Categories> listCategories = ProductService.getListCategories();
        List<Categories> top6Categories = ProductService.getTop6Categories();

        request.setAttribute("top6Categories", top6Categories);
        request.setAttribute("listCategories", listCategories);
        request.setAttribute("listProduct", listProductBySearch);
        request.setAttribute("txtSearch", txtSearch);
        request.setAttribute("txtSearch1", txtSearch);
        request.getRequestDispatcher("list-product.jsp").forward(request, response);


    }
}
