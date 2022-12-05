package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.CartService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "cartcontroller", value = "/cartcontroller")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        String product_id = request.getParameter("product_id");
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");
        ArrayList<Long> listBuy = null;
        String url = "cart.jsp";
        try {
            listBuy = (ArrayList<Long>) session.getAttribute("cartId");
            long idBuy = 0;
            if (request.getParameter("cartId") != null) {
                idBuy = Long.parseLong(request.getParameter("cartId"));
            }


            Product p = ProductService.getProductById(product_id);

            switch (command) {
                case "insertItem":
                    if (listBuy == null) {
                        listBuy = new ArrayList<Long>();
                        session.setAttribute("cartId", listBuy);
                    }
                    if (listBuy.indexOf(idBuy) == -1) {
                        cart.insertToCart(p, 1);
                        listBuy.add(idBuy);
//                        String quantity = String.valueOf(request.getParameterValues("quantity"));
//                        CartService.addProductToCart(product_id, quantity, String.valueOf(idBuy));
                    }

                    url = "cart.jsp";
                    break;

                case "addItem":
                    if (listBuy == null) {
                        listBuy = new ArrayList<Long>();
                        session.setAttribute("cartId", listBuy);

                    }
                    if (listBuy.indexOf(idBuy) == -1) {
                        cart.insertToCart(p, 1);
                        listBuy.add(idBuy);
                    }
                    url = "cart.jsp";
                    break;
                case "subItem":
                    if (listBuy == null) {
                        listBuy = new ArrayList<Long>();
                        session.setAttribute("cartId", listBuy);

                    }
                    if (listBuy.indexOf(idBuy) == -1) {
                        cart.removeToCart(p, 1);
                        listBuy.add(idBuy);
                    }
                    url = "cart.jsp";
                    break;
                case "removeItem":
                    cart.removeCart(p);
                    url = "cart.jsp";
                    break;
                case "removeCart":
                    session.removeAttribute("cart");
                    session.setAttribute("cart", new Cart());
                    listBuy.add(idBuy);
                    url = "cart.jsp";
                    break;

                default:

                    break;

            }

            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception e) {

        }

    }
}
