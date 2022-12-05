<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="qht.shopmypham.com.vn.model.Cart" %>
<%@ page import="java.text.NumberFormat" %>
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
    <link href="./css/style.css" rel="stylesheet"/>
</head>

<body>
<jsp:include page="header-with-slider.jsp"></jsp:include>

<!-- Featured Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5 pb-3">
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div
                    class="d-flex align-items-center border mb-4"
                    style="padding: 30px"
            >
                <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">Sản phẩm chất lượng</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div
                    class="d-flex align-items-center border mb-4"
                    style="padding: 30px"
            >
                <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                <h5 class="font-weight-semi-bold m-0">Miễn phí vận chuyển</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div
                    class="d-flex align-items-center border mb-4"
                    style="padding: 30px"
            >
                <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">Trả hàng trong 7 ngày</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div
                    class="d-flex align-items-center border mb-4"
                    style="padding: 30px"
            >
                <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">Hỗ trợ 24/7</h5>
            </div>
        </div>
    </div>
</div>
<!-- Featured End -->
<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div
            class="d-flex flex-column align-items-center justify-content-center"
            style="min-height: 300px"
    >
        <% Categories categories = (Categories) request.getAttribute("categories"); %>
        <h1
                id="change-title-0"
                class="font-weight-semi-bold text-uppercase mb-3"
        >
            <%= categories.getNameC()%>
        </h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>

            <p id="change-title-1" class="m-0"><%= categories.getNameC()%>
            </p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<!-- Products Start -->
<div class="container-fluid pt-5">
    <div class="col-12 pb-1 pading">
        <div class="d-flex align-items-center justify-content-between mb-4">
            <form action="">
                <div class="input-group from-border">
                    <input
                            type="text"
                            class="form-control"
                            placeholder="Search by name"
                    />
                    <div class="input-group-append">
                <span class="input-group-text bg-transparent text-primary">
                  <i class="fa fa-search"></i>
                </span>
                    </div>
                </div>
            </form>
            <div class="dropdown ml-4">
                <button
                        class="btn border dropdown-toggle"
                        type="button"
                        id="triggerId"
                        data-toggle="dropdown"
                        aria-haspopup="true"
                        aria-expanded="false"
                >
                    Sort by
                </button>
                <div
                        class="dropdown-menu dropdown-menu-right"
                        aria-labelledby="triggerId"
                >
                    <a class="dropdown-item" href="#">Latest</a>
                    <a class="dropdown-item" href="#">Popularity</a>
                    <a class="dropdown-item" href="#">Best Rating</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row px-xl-5 pb-3">

        <% Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            NumberFormat nf = NumberFormat.getInstance();
            nf.setMinimumFractionDigits(0);
            List<Product> productListByC = (List<Product>) request.getAttribute("productListByC");
            for (Product p : productListByC) {
        %>

        <div class="col-lg-14 col-md-13 col-sm-13 pb-1">
            <div class="card product-item border-0 mb-4">
                <div
                        class="card-header product-img position-relative overflow-hidden bg-transparent border p-0"
                >
                    <img
                            class="img-fluid w-100"
                            src="<%= p.getImg() %>"
                            alt=""
                    />
                </div>
                <div
                        class="card-body border-left border-right text-center p-0 pt-4 pb-3"
                >
                    <h6 class="text-truncate mb-3">
                        <%= p.getName() %>
                    </h6>
                    <div class="d-flex justify-content-center">
                        <h6><%=nf.format(p.getPrice())%>đ</h6>
                        <h6 class="text-muted ml-2">
                            <del>123,000đ</del>
                        </h6>
                    </div>
                </div>
                <div
                        class="card-footer d-flex justify-content-between bg-light border"
                >
                    <a href="detail?pid=<%= p.getId()%>" class="btn btn-sm text-dark p-0"
                    ><i class="fas fa-eye text-primary mr-1"></i
                    ></a>

                    <a href="cartcontroller?command=insertItem&product_id=<%=p.getId()%>&cartId=<%=System.currentTimeMillis()%>"
                       class="btn btn-sm text-dark p-0">
                        <i class="fas fa-shopping-cart text-primary mr-1"></i>
                    </a>
                </div>
            </div>
        </div>

        <%}%>

    </div>
</div>
<div class="col-12 pb-1">
    <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center mb-3">
            <li class="page-item disabled">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>
            <li class="page-item active">
                <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        </ul>
    </nav>
</div>


<!-- Products End -->
<jsp:include page="footer.jsp"></jsp:include>


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
