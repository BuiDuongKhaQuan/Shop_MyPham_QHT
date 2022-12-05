package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddProductController", value = "/add-product")
public class AddProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = ProductService.getAllProduct();
        List<Categories> listCategories = ProductService.getListCategories();

        request.setAttribute("listCategories", listCategories);
        request.setAttribute("list", list);
        request.getRequestDispatcher("add-product.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String information = request.getParameter("information");
        String category = request.getParameter("category");
        String price = request.getParameter("price");
        String trademark = request.getParameter("trademark");
        String quantity = request.getParameter("quantity");
        ProductService.addProduct(name, trademark, information, category, price, quantity);
        response.sendRedirect("product-admin");
    }
}
