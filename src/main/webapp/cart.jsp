<%@ page import="qht.shopmypham.com.vn.model.Cart" %>
<%@ page import="qht.shopmypham.com.vn.model.Cart" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.service.CartService" %>
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

<jsp:include page="header.jsp"></jsp:include>
<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div
            class="d-flex flex-column align-items-center justify-content-center"
            style="min-height: 300px"
    >
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Giỏ hàng</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Giỏ hàng</p>
        </div>
    </div>
</div>
<!-- Page Header End -->

<!-- Cart Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <div class="col-lg-8 table-responsive mb-5">
            <table class="table table-bordered text-center mb-0">
                <thead class="bg-secondary text-dark">
                <tr>
                    <th>Sản phẩm</th>
                    <th>Đơn giá</th>
                    <th>Số lượng</th>
                    <th>Tổng giá</th>
                    <th>Xóa</th>
                </tr>

                </thead>
                <tbody class="align-middle">
                <% Cart cart = (Cart) session.getAttribute("cart");
                    if (cart == null) {
                        cart = new Cart();
                        session.setAttribute("cart", cart);
                    }
                    TreeMap<Product, Integer> list = cart.getListProduct();
                    NumberFormat nf = NumberFormat.getInstance();
                    nf.setMinimumFractionDigits(0);
                    for (Map.Entry<Product, Integer> entry : list.entrySet()) {
                        String a = String.valueOf(entry.getKey().getId());
                        String b = String.valueOf(entry.getValue());
                        String c = String.valueOf(cart.getCartId());
                        System.out.println(a);
                        System.out.println(b);
                        System.out.println(c);

//                        CartService.addProductToCart(a, b, c);
                %>
                <tr>
                    <td class="align-middle">
                        <img src="<%=entry.getKey().getImg()%>" alt="" style="width: 50px"/>
                        <%=entry.getKey().getName()%>
                    </td>

                    <td class="align-middle"><%=nf.format(entry.getKey().getPrice())%>đ</td>
                    <td class="align-middle">
                        <div
                                class="input-group quantity mx-auto"
                                style="width: 100px"
                        >
                            <%--                            giảm số lượng sản phẩm--%>
                            <div class="input-group-btn">
                                <a href="cartcontroller?command=subItem&product_id=<%=entry.getKey().getId()%>&cartId=<%=System.currentTimeMillis()%>"
                                   class="btn btn-sm btn-primary btn-minus" style="text-decoration: none">
                                    <i class="fa fa-minus"></i>
                                </a>
                            </div>

                            <input
                                    type="text"
                                    name="quantity"
                                    class="form-control form-control-sm bg-secondary text-center"
                                    value="<%=entry.getValue()%>"
                            />
                            <%--                                tăng số lượng sản phẩm--%>
                            <div class="input-group-btn">
                                <a href="cartcontroller?command=addItem&product_id=<%=entry.getKey().getId()%>&cartId=<%=System.currentTimeMillis()%>"
                                   class="btn btn-sm btn-primary btn-minus" style="text-decoration: none">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                        </div>
                    </td>
                    <td class="align-middle"><%=nf.format(entry.getValue() * entry.getKey().getPrice())%>đ
                    </td>
                    <td class="align-middle">
                        <a href="cartcontroller?command=removeItem&product_id=<%=entry.getKey().getId()%>&cartId=<%=System.currentTimeMillis()%>"
                           class="btn btn-sm btn-primary btn-minus" style="text-decoration: none">
                            <i class="fa fa-times"></i>
                        </a>
                    </td>
                </tr>
                <%}%>
                </tbody>
            </table>
        </div>
        <div class="col-lg-4">
            <form class="mb-5">
                <div class="input-group border-1">
                    <input
                            type="text"
                            class="form-control p-4"
                            placeholder="Nhập mã giảm giá của bạn"
                    />
                    <div class="input-group-append">
                        <button class="btn btn-primary">Áp dụng</button>
                    </div>
                </div>
            </form>
            <div class="card border-secondary mb-5">
                <div class="card-header bg-secondary border-0">
                    <h4 class="font-weight-semi-bold m-0">Giỏ hàng</h4>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-3 pt-1">
                        <h6 class="font-weight-medium">Giá</h6>
                        <h6 class="font-weight-medium"><%=nf.format(cart.total())%>đ</h6>
                    </div>
                    <div class="d-flex justify-content-between">
                        <h6 class="font-weight-medium">Phí vẫn chuyển</h6>
                        <h6 class="font-weight-medium">25,000đ</h6>
                    </div>
                </div>
                <div class="card-footer border-secondary bg-transparent">
                    <div class="d-flex justify-content-between mt-2">
                        <h5 class="font-weight-bold">Tổng</h5>
                        <h5 class="font-weight-bold"><%=nf.format(cart.total() + 25000)%>đ</h5>
                    </div>

                    <a href="OutController"
                       class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3"
                    >
                        Đặt hàng
                    </a>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Cart End -->

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
</body>
</html>