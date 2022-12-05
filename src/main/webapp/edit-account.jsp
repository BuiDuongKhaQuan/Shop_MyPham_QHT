<%@ page import="qht.shopmypham.com.vn.model.Deparment" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
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
    <div class="container mt-5">
        <!-- row -->
        <% Account acc = (Account) request.getAttribute("acc");
            Account accSeesion = (Account) request.getSession().getAttribute("a");
        %>
        <div class="row tm-content-row">

            <div class="tm-block-col tm-col-avatar">
                <div class="tm-bg-primary-dark tm-block tm-block-avatar" style="height: 490px">
                    <h2 class="tm-block-title">Ảnh đại diện</h2>
                    <div class="tm-avatar-container">
                        <img
                                src="<%=acc.getImg()%>"
                                alt="Avatar"
                                class="tm-avatar img-fluid mb-4"
                        />
                        <a href="#" class="tm-avatar-delete-link">
                            <i class="far fa-trash-alt tm-product-delete-icon"></i>
                        </a>
                    </div>
                    <button class="btn btn-primary btn-block text-uppercase">
                        Cập nhật ảnh mới
                    </button>
                </div>
            </div>
            <div class="tm-block-col tm-col-account-settings">
                <div class="tm-bg-primary-dark tm-block tm-block-settings">
                    <h2 class="tm-block-title">Cài đặt tài khoản</h2>
                    <form action="edit-account-admin" method="post" class="tm-signup-form row">
                        <input value="<%=acc.getId()%>" name="aid" type="hidden">
                        <div class="form-group col-lg-6">
                            <label for="name">Tên</label>
                            <input
                                    id="name"
                                    name="name"
                                    value="<%=acc.getFullName()%>"
                                    type="text"
                                    class="form-control validate"
                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label for="email">E-mail</label>
                            <input
                                    id="email"
                                    name="email"
                                    value="<%=acc.getEmail()%>"
                                    type="email"
                                    class="form-control validate"

                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label for="password">Mật khẩu</label>
                            <input
                                    id="password"
                                    name="password"
                                    value="<%=acc.getPass()%>"
                                    type="password"
                                    class="form-control validate"
                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label for="name">Quyền</label>
                            <% if (accSeesion.getIsAdmin() == 1) {%>
                            <select name="category"
                                    class="custom-select tm-select-accounts"
                                    id="category"
                            >
                                <% List<Deparment> listDeparment = (List<Deparment>) request.getAttribute("listDeparment");
                                    for (Deparment deparment : listDeparment) {
                                %>
                                <option value="<%=deparment.getId()%>"><%=deparment.getDeparment()%>
                                </option>

                                <%}%>
                            </select>
                            <%
                                }
                                if (accSeesion.getIsAdmin() == 3) {
                            %>

                            <div class="form-control validate" style="padding: 13px 18px;">
                                <%=AccountService.getDeparmentById(acc.getIsAdmin()).get(0).getDeparment()%>
                            </div>
                            <%}%>
                        </div>
                        <div class="form-group col-lg-6">
                            <label for="phone">Số điện thoại</label>
                            <input
                                    id="phone"
                                    name="phone"
                                    value="<%=acc.getPhone()%>"
                                    type="tel"
                                    class="form-control validate"
                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label class="tm-hide-sm">&nbsp;</label>
                            <button
                                    type="submit"
                                    class="btn btn-primary btn-block text-uppercase"
                            >
                                Cập nhật hồ sơ
                            </button>
                        </div>
                        <div class="col-12">
                            <button
                                    type="submit"
                                    class="btn btn-primary btn-block text-uppercase"
                            >
                                Xóa tài khoản
                            </button>
                        </div>
                    </form>
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
