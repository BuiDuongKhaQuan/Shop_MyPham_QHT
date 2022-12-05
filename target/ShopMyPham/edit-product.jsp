<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Edit Product - Dashboard Admin</title>
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="./css/fontawesome.min.css"/>
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="./jquery-ui-datepicker/jquery-ui.min.css" type="text/css"/>
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="./css/bootstrap.min.css"/>
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="./css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
</head>

<body>
<jsp:include page="header-admin.jsp"></jsp:include>

<%
    Product p = (Product) request.getAttribute("product");
    NumberFormat nf = NumberFormat.getInstance();
    nf.setMinimumFractionDigits(0);
%>
<!--  -->
<div class="container tm-mt-big tm-mb-big">
    <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                <div class="row">
                    <div class="col-12">
                        <h2 class="tm-block-title d-inline-block">Chỉnh sửa sản phẩm</h2>
                    </div>
                </div>
                <div class="row tm-edit-product-row">
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <form action="edit-product" method="post" class="tm-edit-product-form">
                            <input name="pid" value="<%=p.getId()%>" type="hidden">
                            <div class="form-group mb-3">
                                <label
                                        for="name"
                                >Tên sản phẩm
                                </label>
                                <input
                                        id="name"
                                        name="name"
                                        type="text"
                                        value="<%=p.getName()%>"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group mb-3">
                                <label
                                        for="name"
                                >Xuất xứ
                                </label>
                                <input
                                        id="name1"
                                        name="trademark"
                                        type="text"
                                        value="<%=p.getTrademark()%>"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group mb-3">
                                <label
                                        for="description"
                                >Mô tả chi tiết</label
                                >
                                <textarea
                                        name="information"
                                        class="form-control validate tm-small"
                                        rows="5"
                                        required
                                ><%=p.getInformation()%></textarea>
                            </div>
                            <div class="form-group mb-3">
                                <label
                                        for="category"
                                >Loại</label
                                >
                                <select name="category"
                                        class="custom-select tm-select-accounts"
                                        id="category"
                                >
                                    <% List<Categories> listC = (List<Categories>) request.getAttribute("listCategories");
                                        for (Categories list1 : listC) {
                                    %>
                                    <option value="<%=list1.getIdC()%>"><%=list1.getNameC()%>
                                    </option>

                                    <%}%>
                                </select>
                            </div>
                            <div class="row">
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label
                                            for="stock"
                                    >Giá
                                    </label>
                                    <input
                                            id="stock"
                                            name="price"
                                            type="text"
                                            value="<%=nf.format(p.getPrice())%>"
                                            class="form-control validate"
                                    />
                                </div>

                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label
                                            for="stock"
                                    >Số lượng
                                    </label>
                                    <input
                                            id="stock1"
                                            name="quantity"
                                            type="text"
                                            value="<%=p.getQuantity()%>"
                                            class="form-control validate"
                                    />
                                </div>
                            </div>

                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                        <div class="tm-product-img-edit mx-auto">
                            <img src="<%=p.getImg()%>" alt="Product image" class="img-fluid d-block mx-auto">
                            <i
                                    class="fas fa-cloud-upload-alt tm-upload-icon"
                                    onclick="document.getElementById('fileInput').click();"
                            ></i>
                        </div>
                        <div class="custom-file mt-3 mb-3">
                            <input id="fileInput" type="file" style="display:none;"/>
                            <input
                                    type="button"
                                    class="btn btn-primary btn-block mx-auto"
                                    value="ĐỔI ẢNH"
                                    onclick="document.getElementById('fileInput').click();"
                            />
                        </div>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary btn-block text-uppercase">Cập nhật ngay</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="tm-footer row tm-mt-small">
    <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2021</b> All rights reserved.

            Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
        </p>
    </div>
</footer>

<script src="./js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="./jquery-ui-datepicker/jquery-ui.min.js"></script>
<!-- https://jqueryui.com/download/ -->
<script src="./js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
<script>
    $(function () {
        $("#expire_date").datepicker({
            defaultDate: "10/22/2020"
        });
    });
</script>
</body>
</html>