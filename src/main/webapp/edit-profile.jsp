<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>QHT - Cửa hàng mỹ phẩm QHT</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="Free HTML Templates" name="keywords"/>
    <meta content="Free HTML Templates" name="description"/>

    <!-- Favicon -->
    <link href="./img/favicon.png" rel="icon"/>

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
            rel="stylesheet"
    />

    <!-- Font Awesome -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            rel="stylesheet"
    />

    <!-- Libraries Stylesheet -->
    <link
            href="./lib/owlcarousel/assets/owl.carousel.min.css"
            rel="stylesheet"
    />

    <!-- Customized Bootstrap Stylesheet -->
    <link rel="stylesheet" href="./css/edit-profile.css"/>
    <link href="./css/style.css" rel="stylesheet"/>
</head>

<body>


<!-- Topbar Start -->
<div class="container-fluid">
    <div class="row bg-secondary py-2 px-xl-5">
        <div class="col-lg-6 d-none d-lg-block">
            <div class="d-inline-flex align-items-center">
                <a class="text-dark" href="">FAQs</a>
                <span class="text-muted px-2">|</span>
                <a class="text-dark" href="help">Help</a>
                <span class="text-muted px-2">|</span>
                <a class="text-dark" href="">Support</a>
            </div>
        </div>
        <div class="col-lg-6 text-center text-lg-right">
            <div class="d-inline-flex align-items-center">
                <a class="text-dark px-2" href="https://www.facebook.com/">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a class="text-dark px-2" href="https://twitter.com/?lang=vi">
                    <i class="fab fa-twitter"></i>
                </a>
                <a class="text-dark px-2" href="https://www.linkedin.com">
                    <i class="fab fa-linkedin-in"></i>
                </a>
                <a class="text-dark px-2" href="https://www.instagram.com">
                    <i class="fab fa-instagram"></i>
                </a>
                <a class="text-dark pl-2" href="https://www.youtube.com/">
                    <i class="fab fa-youtube"></i>
                </a>
            </div>
        </div>
    </div>
    <div class="row align-items-center py-3 px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a href="home" class="text-decoration-none">
                <img
                        src="./img/logo.png"
                        width="100%"
                        height="110px"
                        alt=""
                />
            </a>
        </div>
        <div class="col-lg-6 col-6 text-left">
            <form action="">
                <div class="input-group">
                    <input
                            type="text"
                            class="form-control"
                            placeholder="Nhập tên sản phẩm bạn muốn tìm kiếm"
                    />
                    <div class="input-group-append">
                    <span
                            class="input-group-text bg-transparent text-primary btn"
                    >
                      <i class="fa fa-search"></i>
                    </span>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-lg-3 col-6 text-right">
            <a href="" class="btn border">
                <i class="fas fa-heart text-primary"></i>
                <span class="badge">0</span>
            </a>
            <a href="cart" class="btn border">
                <i class="fas fa-shopping-cart text-primary"></i>
                <span class="badge">0</span>
            </a>
        </div>
    </div>
</div>
<!-- Topbar End -->

<!-- Navbar Start -->
<div class="container-fluid mb-5 padding-0"
     style="margin: 0 !important; border-bottom: 2px solid rgb(57, 57, 57)">
    <div class="row border-top px-xl-5 px-xl-6">
        <div
                class="col-lg-padding col-lg-3 d-none d-lg-block navbar-link nav-item dropdown text-black-0"
        >
            <a
                    href="#"
                    class="nav-link text-black-1"
                    data-toggle="dropdown"
                    href="#navbar-vertical"
            >Danh mục
                <i class="fa fa-angle-down"></i>
            </a>

            <div class="dropdown-menu rounded-0 m-0">

                <% List<Categories> listC = (List<Categories>) request.getAttribute("listCategories");
                    for (Categories list : listC) {
                %>
                <a href="categorie?cid=<%=list.getIdC()%>" class="dropdown-item"
                ><%= list.getNameC()%>
                </a>
                <%}%>
            </div>
        </div>

        <div class="menu-flex-row mr-auto py-0">
            <a href="home" class="nav-item nav-link active text-black-1"
            >Trang chủ</a
            >
            <a href="product" class="nav-item nav-link text-black-1"
            >Sản phẩm</a
            >
            <div class="nav-item dropdown">
                <a
                        href="#"
                        class="nav-link dropdown-toggle text-black-1"
                        data-toggle="dropdown"
                >Trang</a
                >
                <div class="dropdown-menu rounded-0 m-0">
                    <a href="cart" class="dropdown-item">Giỏ hàng</a>
                    <a href="checkout" class="dropdown-item">Thanh toán</a>
                </div>
            </div>
            <a href="blog" class="nav-item nav-link text-black-1"
            >Blog</a
            >

            <a href="contact" class="nav-item nav-link text-black-1"
            >Liên hệ</a
            >
        </div>
        <div class="navbar-nav ml-auto py-0 pading btn-login">
            <% Account acc = (Account) request.getSession().getAttribute("a");
                Account acc1 = AccountService.getAccountById(String.valueOf(acc.getId()));
                if (acc == null) {
            %>
            <a href="login.jsp" class="nav-item nav-link text-black-1"
            >Đăng nhập</a
            >
            <%}%>
            <% if (acc != null) {
                if (acc.getIsAdmin() == 1) {%>
            <a href="admin.jsp" class="nav-item nav-link text-black-1"
            >Xin chào Admin
            </a
            >
            <%} else {%>
            <a href="profile" class="nav-item nav-link text-black-1"
            >Xin chào <%= acc.getUser()%>
            </a
            >
            <%}%>
            <%}%>
        </div>
    </div>

    <div class="col-lg-13 col-lg-padding">
        <nav
                class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0"
        >
            <a
                    href="home"
                    class="text-decoration-none d-block d-lg-none"

            >
                <div class="m-0 display-5 font-weight-semi-bold"
                >
                    <img
                            src="./img/zyro.png"
                            height="80px"
                            width="100%"
                            alt=""
                    />
                </div>
            </a>

            <div style="width:100px;"></div>

            <button type="button" class="navbar-toggler dropdown">
                <a
                        href="#"
                        class=""
                        data-toggle="dropdown"
                        href="#navbar-vertical"
                >
                    <span class="navbar-toggler-icon"></span>
                </a>

                <div class="dropdown-menu rounded-0 m-0">
                    <a href="categorie.jsp" class="dropdown-item"
                    >Thực phẩm sức khỏe và làm đẹp</a
                    >
                    <a href="categorie.jsp" class="dropdown-item"
                    >Dụng cụ hỗ trợ làm đẹp</a
                    >
                    <a href="cart" class="dropdown-item"
                    >Thực phẩm giảm cân</a
                    >
                    <a href="categorie.jsp" class="dropdown-item"
                    >Mỹ phẩm làm đẹp</a
                    >
                    <a href="categorie.jsp" class="dropdown-item"
                    >Kem chống nắng</a
                    >
                    <a href="categorie.jsp" class="dropdown-item"
                    >Chăm sóc tóc</a
                    >
                    <a href="categorie.jsp" class="dropdown-item"
                    >Chăm sóc da</a
                    >
                    <a href="categorie.jsp" class="dropdown-item"
                    >Khuyến mãi</a
                    >
                    <% if (acc != null) {
                        if (acc.getIsAdmin() == 1) {%>
                    <a href="admin.jsp" class="nav-item nav-link text-black-1"
                    >Xin chào Admin
                    </a
                    >
                    <%} else {%>
                    <a href="profile" class="nav-item nav-link text-black-1"
                    >Xin chào <%= acc.getUser()%>
                    </a
                    >
                    <%}%>
                    <%}%>
                </div>
            </button>
        </nav>

    </div>
</div>
<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div
            class="d-flex flex-column align-items-center justify-content-center"
            style="min-height: 300px"
    >
        <h1 class="font-weight-semi-bold text-uppercase mb-3">
            Thông tin cá nhân
        </h1>
        <div class="d-inline-flex">
            <p class="m-0">Trang chủ</p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Tài khoản</p>
            <p class="m-0 px-2">-</p>
            <p class="m-0"><a href=""> Chỉnh sửa thông tin cá nhân</a></p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<div class="container">
    <div class="main-body">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div
                                class="d-flex flex-column align-items-center text-center"
                        >
                            <img
                                    src="<%= acc1.getImg() %>"
                                    alt="Admin"
                                    class="rounded-circle p-1 bg-primary"
                                    width="150px"
                            />
                            <div class="mt-3">
                                <h4><%= acc.getUser() %>
                                </h4>
                                <p class="text-secondary mb-1">Quản trị viên</p>
                                <p class="text-muted font-size-sm">
                                    <%= acc1.getAddress() %>
                                </p>
                                <button class="btn btn-primary">Theo dõi</button>
                                <button class="btn btn-outline-primary">
                                    Nhắn tin
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <form action="edit-profile" method="post">
                            <input name="idAccount" value="<%= acc.getId() %>" type="hidden">
                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Họ và tên</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="text"
                                            name="fullName"
                                            class="form-control"
                                            value="<%= acc1.getFullName() %>"
                                    />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">E-mail</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="text"
                                            name="email"
                                            class="form-control"
                                            value="<%= acc1.getEmail() %>"
                                    />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Số điện thoại</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="text"
                                            name="phone"
                                            class="form-control"
                                            value="<%= acc1.getPhone() %>"
                                    />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Mật khẩu</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="password"
                                            name="pass"
                                            class="form-control"
                                            value="<%= acc1.getPass() %>"
                                    />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Địa chỉ</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="text"
                                            name="address"
                                            class="form-control"
                                            value="<%= acc1.getAddress() %>"
                                    />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="submit"
                                            class="btn btn-primary px-4"
                                            value="Lưu"
                                    />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row"></div>
            </div>
        </div>
    </div>
</div>
<!-- Footer Start -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer End -->

<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"
><i class="fa fa-angle-double-up"></i
></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="./lib/easing/easing.min.js"></script>
<script src="./lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="./mail/jqBootstrapValidation.min.js"></script>
<script src="./mail/contact.js"></script>

<!-- Template Javascript -->
<script src="./js/main.js"></script>

</body>
</html>
