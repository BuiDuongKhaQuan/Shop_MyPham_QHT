package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.ProductService;
import qht.shopmypham.com.vn.service.ShopService;
import qht.shopmypham.com.vn.service.SliderSerivce;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Categories", value = "/product")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list15 = ProductService.getTop15Product();
        List<Categories> top6Categories = ProductService.getTop6Categories();

        request.setAttribute("top6Categories", top6Categories);
        request.setAttribute("list15", list15);
        request.getRequestDispatcher("product.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
