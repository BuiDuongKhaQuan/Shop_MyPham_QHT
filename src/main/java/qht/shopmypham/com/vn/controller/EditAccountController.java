package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Deparment;
import qht.shopmypham.com.vn.service.AccountService;
import qht.shopmypham.com.vn.service.LoginService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EditAccountController", value = "/edit-account-admin")
public class EditAccountController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String aid = request.getParameter("aid");
        Account acc = AccountService.getAccountById(aid);
        List<Deparment> listDeparment = AccountService.getAllDeparment();

        request.setAttribute("listDeparment", listDeparment);
        request.setAttribute("acc", acc);
        request.getRequestDispatcher("edit-account.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String aid = request.getParameter("aid");
        if (Integer.valueOf(aid) == 3) {
            AccountService.editAcountEditorById(email, phone, name, aid);
        }
        if (Integer.valueOf(aid) == 1) {
            AccountService.editAcountById(email, phone, name, category, aid);
        }

        response.sendRedirect("list-account-admin");

    }
}
