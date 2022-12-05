<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Product Page - Admin HTML</title>
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

<jsp:include page="header-admin.jsp"></jsp:include>
<!--  -->

<div class="container mt-5">
    <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
            <div class="tm-bg-primary-dark tm-block tm-block-products">
                <div class="tm-product-table-container">
                    <table class="table table-hover tm-table-small tm-product-table">
                        <thead>
                        <tr>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">TÊN SẢN PHẨM</th>
                            <th scope="col" style="min-width: 100px">SỐ LƯỢNG</th>
                            <th scope="col">PHÂN LOẠI</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% List<Product> list = (List<Product>) request.getAttribute("list");
                            for (Product p : list) {%>

                        <tr>
                            <th scope="row"><input type="checkbox"/></th>
                            <td>
                                <a href="edit-product?pid=<%=p.getId()%>" style="color: white">
                                    <%=p.getName()%>
                                </a>
                            </td>
                            </td>
                            <td style="padding-left: 40px"><%=p.getQuantity()%></td>
                            <td><%=ProductService.getNameCategoriesById(String.valueOf(p.getIdC())).getNameC()%>
                            </td>
                            <td>
                                <a href="delete?pid=<%=p.getId()%>" class="tm-product-delete-link">
                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                </a>
                            </td>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>
                </div>
                <!-- table container -->
                <a
                        href="add-product"
                        class="btn btn-primary btn-block text-uppercase mb-3"
                >Thêm sản phẩm mới</a
                >
                <button class="btn btn-primary btn-block text-uppercase">
                    Xóa sản phẩm đã chọn
                </button>
            </div>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
            <div class="tm-bg-primary-dark tm-block tm-block-product-categories" style="min-height: 725px;">
                <h2 class="tm-block-title">Danh mục sản phẩm</h2>
                <div class="tm-product-table-container">
                    <table class="table tm-table-small tm-product-table">
                        <tbody>
                        <% List<Categories> listC = (List<Categories>) request.getAttribute("listCategories");
                            for (Categories list1 : listC) {
                        %>
                        <tr>
                            <td class="tm-product-name">
                                <%=list1.getNameC()%>
                            </td>
                            <td class="text-center">
                                <a href="delete-category?cid=<%=list1.getIdC()%>" class="tm-product-delete-link">
                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                </a>
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
                >Thêm danh mục mới</a
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

<script src="./js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="./js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->

</body>
</html>
