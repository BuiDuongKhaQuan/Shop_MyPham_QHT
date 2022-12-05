<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
<%@ page import="qht.shopmypham.com.vn.model.Deparment" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Accounts - Product Admin</title>
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="./css/fontawesome.min.css"/>
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="./css/bootstrap.min.css"/>
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="./css/templatemo-style.css"/>
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
</head>

<body id="reportsPage">
<div class="" id="home">
    <jsp:include page="header-admin.jsp"></jsp:include>

    <!--  -->
    <% List<Account> listAccount = (List<Account>) request.getAttribute("listAccount");

    %>
    <div class="container mt-5">
        <!-- row -->
        <div class="row tm-content-row">
            <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
                <div class="tm-bg-primary-dark tm-block tm-block-products">
                    <h2 class="tm-block-title">Danh sách tài khoản</h2>
                    <div class="tm-product-table-container">
                        <table class="table table-hover tm-table-small tm-product-table">
                            <thead>
                            <tr>
                                <th scope="col">TÊN TÀI KHOẢN</th>
                                <th scope="col">EMAIL</th>
                                <th scope="col">CHỨC VỤ</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                for (Account acc : listAccount) {%>

                            <tr>
                                <td>
                                    <a href="edit-account-admin?aid=<%=acc.getId()%>" style="color: white">
                                        <%=acc.getUser()%>
                                    </a>
                                </td>
                                <td><%=acc.getEmail()%>
                                </td>
                                <td><%=AccountService.getDeparmentById(acc.getIsAdmin()).get(0).getDeparment()%>
                                </td>

                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <!-- table container -->
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
                <div class="tm-bg-primary-dark tm-block tm-block-product-categories" style="min-height: 725px;">
                    <h2 class="tm-block-title">Chức vụ</h2>
                    <div class="tm-product-table-container">
                        <table class="table tm-table-small tm-product-table">
                            <tbody>
                            <% List<Deparment> listDeparment = (List<Deparment>) request.getAttribute("listDeparment");
                                for (Deparment deparment : listDeparment) {
                            %>
                            <tr>
                                <td class="tm-product-name">
                                    <%=deparment.getDeparment()%>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <!-- table container -->
                    <a
                            href="add-category"
                            class="btn btn-primary btn-block text-uppercase mb-3"
                    >Thêm chức vụ mới</a
                    >
                </div>
            </div>

        </div>
    </div>
    <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
            <p class="text-center text-white mb-0 px-4 small">
                Copyright &copy; <b>2021</b> All rights reserved. Design:
                <a
                        rel="nofollow noopener"
                        href="https://templatemo.com"
                        class="tm-footer-link"
                >QHT</a
                >
            </p>
        </div>
    </footer>
</div>

<script src="./js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="./js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
</body>
</html>
