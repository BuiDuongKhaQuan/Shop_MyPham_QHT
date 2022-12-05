<%@ page import="qht.shopmypham.com.vn.model.Cart" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.TreeMap" %>
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
<!DOCTYPE html>
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
<%
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }
    TreeMap<Product, Integer> list = cart.getListProduct();
    NumberFormat nf = NumberFormat.getInstance();
    nf.setMinimumFractionDigits(0);
%>
<jsp:include page="header.jsp"></jsp:include>
<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div
            class="d-flex flex-column align-items-center justify-content-center"
            style="min-height: 300px"
    >
        <h1 class="font-weight-semi-bold text-uppercase mb-3">
            THỦ TỤC THANH TOÁN
        </h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Thanh toán</p>
        </div>
    </div>
</div>
<!-- Page Header End -->

<!-- Checkout Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <div class="col-lg-8">
            <div class="mb-4">
                <h4 class="font-weight-semi-bold mb-4">Thông tin thanh toán</h4>

                <div class="row">
                    <div class="col-md-6 form-group">
                        <label>Họ</label>
                        <input name="first-name"
                               class="form-control from-border"
                               type="text"
                               placeholder="John"
                        />
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Tên</label>
                        <input name="last-name"
                               class="form-control from-border"
                               type="text"
                               placeholder="Doe"
                        />
                    </div>
                    <div class="col-md-6 form-group">
                        <label>E-mail</label>
                        <input name="email"
                               class="form-control from-border"
                               type="text"
                               placeholder="example@email.com"
                        />
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Số điện thoại</label>
                        <input name="phone"
                               class="form-control from-border"
                               type="text"
                               placeholder="+84 3456 789"
                        />
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Quốc gia</label>
                        <select name="country" class="custom-select">
                            <option selected>Việt Nam</option>
                            <option>United States</option>
                            <option>Afghanistan</option>
                            <option>Albania</option>
                            <option>Algeria</option>
                        </select>
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Địa chỉ</label>
                        <input name="address"
                               class="form-control from-border"
                               type="text"
                               placeholder="123 Street"
                        />
                    </div>
                    <%--                    <div class="col-md-12 form-group">--%>
                    <%--                        <div class="custom-control custom-checkbox">--%>
                    <%--                            <input--%>
                    <%--                                    type="checkbox"--%>
                    <%--                                    class="custom-control-input"--%>
                    <%--                                    id="newaccount"--%>
                    <%--                            />--%>
                    <%--                            <label class="custom-control-label" for="newaccount"--%>
                    <%--                            >Tạo một tài khoản</label--%>
                    <%--                            >--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-md-12 form-group">--%>
                    <%--                        <div class="custom-control custom-checkbox">--%>
                    <%--                            <input--%>
                    <%--                                    type="checkbox"--%>
                    <%--                                    class="custom-control-input"--%>
                    <%--                                    id="shipto"--%>
                    <%--                            />--%>
                    <%--                            <label--%>
                    <%--                                    class="custom-control-label"--%>
                    <%--                                    for="shipto"--%>
                    <%--                                    data-toggle="collapse"--%>
                    <%--                                    data-target="#shipping-address"--%>
                    <%--                            >Gửi đến địa chỉ khác</label--%>
                    <%--                            >--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                </div>

            </div>
        </div>
        <div class="col-lg-4">
            <div class="card border-secondary mb-5">
                <div class="card-header bg-secondary border-0">
                    <h4 class="font-weight-semi-bold m-0">Tổng đơn đặt hàng</h4>
                </div>
                <div class="card-body">
                    <h5 class="font-weight-medium mb-3">Các sản phẩm</h5>
                    <% for (Map.Entry<Product, Integer> entry : list.entrySet()) { %>
                    <div class="d-flex justify-content-between">
                        <p>
                            <%=entry.getKey().getName()%>
                        </p>
                        <p><%=nf.format(entry.getKey().getPrice())%>đ
                        </p>
                    </div>
                    <%}%>
                    <hr class="mt-0"/>
                    <div class="d-flex justify-content-between mb-3 pt-1">
                        <h6 class="font-weight-medium">Tổng giá</h6>
                        <h6 class="font-weight-medium"><%=nf.format(cart.total())%>đ</h6>
                    </div>
                    <div class="d-flex justify-content-between">
                        <h6 class="font-weight-medium">Phí vận chuyển</h6>
                        <h6 class="font-weight-medium">25,000đ</h6>
                    </div>
                </div>
                <div class="card-footer border-secondary bg-transparent">
                    <div class="d-flex justify-content-between mt-2">
                        <h5 class="font-weight-bold">Tổng</h5>
                        <h5 class="font-weight-bold"><%=nf.format(cart.total() + 25000)%>>đ</h5>
                    </div>
                </div>
            </div>
            <div class="card border-secondary mb-5">
                <form action="checkout" method="post">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Hình thức thanh toán</h4>
                    </div>
                    <div class="card-body">
                        <select name="paypal" class="custom-select">
                            <option value="" selected>Ví điện tử</option>
                            <option value="">Thẻ tín dụng</option>
                            <option value="">Thanh toán trực tiếp khi nhận hàng</option>
                        </select>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <button type="submit"
                                class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3"
                        >
                            Đặt hàng
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>
<!-- Checkout End -->
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
<script src="lib/easing/easing.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="mail/jqBootstrapValidation.min.js"></script>
<script src="mail/contact.js"></script>

<!-- Template Javascript -->
<script src="./js/main.js"></script>

</body>
</html>
</body>
</html>
