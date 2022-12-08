package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FilteProductController", value = "/filter-product")
public class FilteProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Categories> listCategories = ProductService.getListCategories();
        List<Categories> top6Categories = ProductService.getTop6Categories();
        String[] price = request.getParameterValues("price");
        List<Product> listAllProduct = ProductService.getAllProduct();
        List<Product> listProductByPrice = null;
        for (String price0 : price) {
            int price1 = Integer.parseInt(price0);
            int price2 = price1 + 100000;
            listProductByPrice = ProductService.getProductByPrice(price0, String.valueOf(price2));
        }
        request.setAttribute("listProduct", listProductByPrice);
        request.setAttribute("listAllProduct", listAllProduct);
        request.setAttribute("top6Categories", top6Categories);
        request.setAttribute("listCategories", listCategories);
        request.getRequestDispatcher("list-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
