package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.ShopService;
import qht.shopmypham.com.vn.service.ProductService;
import qht.shopmypham.com.vn.service.SliderSerivce;


import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Home", value = "/home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = ProductService.getTop8Product();
        List<Product> list15 = ProductService.getTop15Product();
        List<Categories> top6Categories = ProductService.getTop6Categories();
        List<SliderLogo> sliderLogos = SliderSerivce.getAllSliderLogo();

        request.setAttribute("sliderLogos", sliderLogos);
        request.setAttribute("top6Categories", top6Categories);
        request.setAttribute("list15", list15);
        request.setAttribute("list", list);
        request.getRequestDispatcher("home.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
