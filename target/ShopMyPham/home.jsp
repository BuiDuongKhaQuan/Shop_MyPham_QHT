<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="qht.shopmypham.com.vn.model.Cart" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.model.SliderLogo" %>
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

<!-- Categories Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5 pb-3">
        <% List<Categories> top6Categories = (List<Categories>) request.getAttribute("top6Categories");
            for (Categories c : top6Categories) {
        %>
        <div class="col-lg-4 col-md-6 pb-1">
            <div
                    class="cat-item d-flex flex-column border mb-4"
                    style="padding: 30px"
            >
                <p class="text-right"><%=ProductService.getCategoriesById(String.valueOf(c.getIdC())).size()%> sản
                    phẩm</p>
                <a
                        href="categorie?cid=<%=c.getIdC()%>"
                        class="cat-img position-relative overflow-hidden mb-3"
                >
                    <img
                            class="img-fluid img-height"
                            src="<%= c.getImgC()%>"
                            alt=""
                            style="width: 400px; height: 400px"
                    />
                </a>
                <h5 class="font-weight-semi-bold m-0 text-truncate"><%= c.getNameC()%>
                </h5>
            </div>
        </div>
        <% } %>
    </div>
</div>
<!-- Categories End -->
<!-- Offer Start -->
<div class="container-fluid offer pt-5">
    <div class="row px-xl-5">
        <div class="col-md-6 pb-4">
            <div
                    class="position-relative bg-secondary text-center text-md-right text-white mb-2 py-5 px-5"
            >
                <img src="https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRRhIGQ8DtKFGvcC83xPtNClZ28gBoH2Lvrh_aaosIP5AHrgWjX_kj_upG9aBJDxLSMLDPEtRAePw&usqp=CAc"
                     alt=""/>
                <div class="position-relative" style="z-index: 1">
                    <h5 class="text-uppercase text-primary mb-3">
                        Giảm 20% cho tất cả đơn đặt hàng
                    </h5>
                    <h1 class="mb-4 font-weight-semi-bold">Chăm sóc da</h1>
                    <a href="" class="btn btn-outline-primary py-md-2 px-md-3"
                    >Mua ngay</a
                    >
                </div>
            </div>
        </div>
        <div class="col-md-6 pb-4">
            <div
                    class="position-relative bg-secondary text-center text-md-left text-white mb-2 py-5 px-5"
            >
                <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTQRpL2QuGmtuZKAboIkmxW7V60B4J0AM3Txh35iIPuGmiM44l-LC4sCjZDomfQpLl_EPwUaQvu7g&usqp=CAc"
                     alt=""/>
                <div class="position-relative" style="z-index: 1">
                    <h5 class="text-uppercase text-primary mb-3">
                        Giảm 20% cho tất cả đơn đặt hàng
                    </h5>
                    <h1 class="mb-4 font-weight-semi-bold">Bộ dầu gọi xả</h1>
                    <a href="" class="btn btn-outline-primary py-md-2 px-md-3"
                    >Mua ngay</a
                    >
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Offer End -->
<!-- Products Start -->
<div class="container-fluid pt-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5">
            <span class="px-2">Sản phẩm Hot</span>
        </h2>
    </div>
    <div class="row px-xl-5 pb-3">
        <% Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            NumberFormat nf = NumberFormat.getInstance();
            nf.setMinimumFractionDigits(0);
            List<Product> list = (List<Product>) request.getAttribute("list");
            for (Product p : list) {

        %>
        <div class="col-lg-14 col-md-13 col-sm-13 pb-1">
            <div class="card product-item border-0 mb-4">
                <div
                        class="card-header product-img position-relative overflow-hidden bg-transparent border p-0"
                        style="height: 260px"
                >
                    <img
                            class="img-fluid w-100"
                            src="<%= p.getImg()%>"
                            alt=""
                    />
                </div>
                <div
                        class="card-body border-left border-right text-center p-0 pt-4 pb-3"
                >
                    <h6 class="text-truncate mb-3">
                        <%= p.getName()%>
                    </h6>
                    <div class="d-flex justify-content-center">
                        <h6><%=nf.format(p.getPrice())%>đ
                        </h6>
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
<!-- Products End -->
<!-- Subscribe Start -->
<div class="container-fluid bg-secondary my-5">
    <div class="row justify-content-md-center py-5 px-xl-5">
        <div class="col-md-6 col-12 py-5">
            <div class="text-center mb-2 pb-2">
                <h2 class="section-title px-5 mb-3">
                    <span class="bg-secondary px-2">Cập nhật thông tin</span>
                </h2>
                <p>
                    Hãy để lại email của bạn, chúng tôi sẽ thường xuyên cập nhật
                    các sản phẩm hot để thông báo đến bạn!!!
                </p>
            </div>
            <form action="">
                <div class="input-group">
                    <input
                            type="text"
                            class="form-control border-white p-4"
                            placeholder="Để lại email tại đây"
                    />
                    <div class="input-group-append">
                        <button class="btn btn-primary px-4">OK</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Subscribe End -->

<!-- Products Start -->
<div class="container-fluid pt-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5">
            <span class="px-2">Sản phẩm khuyến mãi</span>
        </h2>
    </div>
    <div class="row px-xl-5 pb-3">

        <%
            List<Product> list1 = (List<Product>) request.getAttribute("list");
            for (Product p : list1) {

        %>
        <div class="col-lg-14 col-md-13 col-sm-13 pb-1">
            <div class="card product-item border-0 mb-4">
                <div
                        class="card-header product-img position-relative overflow-hidden bg-transparent border p-0"
                >
                    <img
                            class="img-fluid w-100"
                            src="<%= p.getImg()%>"
                            alt=""
                    />
                </div>
                <div
                        class="card-body border-left border-right text-center p-0 pt-4 pb-3"
                >
                    <h6 class="text-truncate mb-3">
                        <%= p.getName()%>
                    </h6>
                    <div class="d-flex justify-content-center">
                        <h6><%=nf.format(p.getPrice())%>đ
                        </h6>
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
<!-- Products End -->

<!-- Vendor Start -->
<div class="container-fluid py-5">
    <div class="row px-xl-5">
        <div class="col">
            <div class="owl-carousel vendor-carousel">
                <%
                    List<SliderLogo> sliderLogos = (List<SliderLogo>) request.getAttribute("sliderLogos");
                    for (SliderLogo logo : sliderLogos) {
                %>
                <div class="vendor-item border p-4">
                    <img
                            src="<%=logo.getImg_logo()%>"
                            alt=""
                    />
                </div>
                <%}%>

            </div>
        </div>
    </div>
</div>
<!-- Vendor End -->

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
</body>
</html>
