package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoriesController", value = "/categorie")
public class CategoriesController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cid = request.getParameter("cid");
        List<Product> productListByC = ProductService.getCategoriesById(cid);
        Categories categories = ProductService.getNameCategoriesById(cid);

        request.setAttribute("categories", categories);
        request.setAttribute("listProduct", productListByC);
        request.getRequestDispatcher("categorie.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
