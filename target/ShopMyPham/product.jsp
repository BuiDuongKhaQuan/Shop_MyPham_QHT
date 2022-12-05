<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="java.util.List" %>
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
<jsp:include page="header-with-slider.jsp"></jsp:include>
</div>
</div>
<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div
            class="d-flex flex-column align-items-center justify-content-center"
            style="min-height: 300px"
    >
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Sản phẩm</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Sản phẩm</p>
        </div>
    </div>
</div>
<!-- Page Header End -->

<!-- Shop Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <!-- Shop Sidebar Start -->
        <div class="col-lg-3 col-md-12">
            <%
                Cart cart = (Cart) session.getAttribute("cart");
                if (cart == null) {
                    cart = new Cart();
                    session.setAttribute("cart", cart);
                }
                NumberFormat nf = NumberFormat.getInstance();
                nf.setMinimumFractionDigits(0);
                List<Product> list15 = (List<Product>) request.getAttribute("list15");

            %>
            <!-- Price Start -->
            <form action="filter-product">
                <div class="border-bottom mb-4 pb-4">

                    <h5 class="font-weight-semi-bold mb-4">Giá</h5>

                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                name="price-all"
                                class="custom-control-input check"
                                checked
                                id="price-all"
                        />
                        <label class="custom-control-label" for="price-all"
                        >Tất cả</label
                        >
                        <span class="badge border font-weight-normal">70</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                class="custom-control-input check"
                                value="0"
                                id="price-1"
                        />
                        <label class="custom-control-label" for="price-1"
                        >0 - 100,000đ</label
                        >
                        <span class="badge border font-weight-normal">150</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                value="100000"
                                class="custom-control-input check"
                                id="price-2"
                        />
                        <label class="custom-control-label" for="price-2"
                        >100,000đ - 200,000đ</label
                        >
                        <span class="badge border font-weight-normal">295</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                value="200000"
                                class="custom-control-input check"
                                id="price-3"
                        />
                        <label class="custom-control-label" for="price-3"
                        >200,000đ - 300,000đ</label
                        >
                        <span class="badge border font-weight-normal">246</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                value="300000"
                                class="custom-control-input check"
                                id="price-4"
                        />
                        <label class="custom-control-label" for="price-4"
                        >300,000đ - 400,000đ</label
                        >
                        <span class="badge border font-weight-normal">145</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                value="400000"
                                class="custom-control-input check"
                                id="price-5"
                        />
                        <label class="custom-control-label" for="price-5"
                        >400,000đ - 500,000đ</label
                        >
                        <span class="badge border font-weight-normal">145</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                value="500000"
                                class="custom-control-input check"
                                id="price-6"
                        />
                        <label class="custom-control-label" for="price-6"
                        >500,000đ trở lên</label
                        >
                        <span class="badge border font-weight-normal">168</span>
                    </div>


                </div>
                <!-- Price End -->
                <!-- Size Start -->
                <div class="mb-5">
                    <h5 class="font-weight-semi-bold mb-4">Thương hiệu</h5>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                class="custom-control-input check1"
                                checked
                                id="size-all"
                        />
                        <label class="custom-control-label" for="size-all"
                        >Tất cả</label
                        >
                        <span class="badge border font-weight-normal">1000</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                class="custom-control-input check1"
                                id="size-1"
                        />
                        <label class="custom-control-label" for="size-1"
                        >Innisfree</label
                        >
                        <span class="badge border font-weight-normal">150</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                class="custom-control-input check1"
                                id="size-2"
                        />
                        <label class="custom-control-label" for="size-2"
                        >Simple</label
                        >
                        <span class="badge border font-weight-normal">295</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                class="custom-control-input check1"
                                id="size-3"
                        />
                        <label class="custom-control-label" for="size-3"
                        >TheFaceShop</label
                        >
                        <span class="badge border font-weight-normal">246</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                class="custom-control-input check1"
                                id="size-4"
                        />
                        <label class="custom-control-label" for="size-4"
                        >Estee Lauder</label
                        >
                        <span class="badge border font-weight-normal">145</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between"
                    >
                        <input
                                type="checkbox"
                                class="custom-control-input check1"
                                id="size-5"
                        />
                        <label class="custom-control-label" for="size-5"
                        >Loreal</label
                        >
                        <span class="badge border font-weight-normal">168</span>
                    </div>
                </div>
                <%--                filter--%>
                <div>
                    <button
                            class="btn btn-primary btn-block border-0 py-3 "
                            style="border-radius: 5px; font-size: 25px; padding: 5px !important;"
                            type="submit"
                    >
                        Lọc
                    </button>
                </div>
            </form>
            <!-- Size End -->
        </div>
        <!-- Shop Sidebar End -->

        <!-- Shop Product Start -->
        <div class="col-lg-9 col-md-12">
            <div class="row pb-3">
                <div class="col-12 pb-1">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <form action="search" method="post" style="border: 1px solid var(--border-color);">
                            <% String txtInput1 = (String) request.getAttribute("txtSearch1"); %>
                            <div class="input-group">
                                <%if (txtInput1 != null) {%>
                                <input
                                        type="text"
                                        name="txtSearch"
                                        class="form-control"
                                        placeholder="Nhập tên sản phẩm"
                                        value="<%=txtInput1%>"
                                />
                                <%} else {%>
                                <input
                                        type="text"
                                        name="txtSearch"
                                        class="form-control"
                                        placeholder="Nhập tên sản phẩm"
                                />
                                <%}%>
                                <div class="input-group-append">
                                    <button type="submit"
                                            class="input-group-text bg-transparent text-primary btn"
                                    >
                                        <i class="fa fa-search"></i>
                                    </button>
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
                                Sắp xếp
                            </button>
                            <div
                                    class="dropdown-menu dropdown-menu-right"
                                    aria-labelledby="triggerId"
                            >
                                <a class="dropdown-item" href="#">Mới nhất</a>
                                <a class="dropdown-item" href="sort-product?command=descending">Giá tăng dần</a>
                                <a class="dropdown-item" href="sort-product?command=ascending">Giá giảm dần</a>
                            </div>

                        </div>
                    </div>
                </div>

                <%
                    for (Product list : list15) {
                %>
                <div class="col-lg-14 col-md-13 col-sm-13 pb-1">
                    <div class="card product-item border-0 mb-4">
                        <div
                                class="card-header product-img position-relative overflow-hidden bg-transparent border p-0"
                        >
                            <img
                                    class="img-fluid w-100"
                                    src="<%= list.getImg()%>"
                                    alt=""
                                    style="height: 240px;"
                            />
                        </div>
                        <div
                                class="card-body border-left border-right text-center p-0 pt-4 pb-3"
                        >
                            <h6 class="text-truncate mb-3">
                                <%= list.getName()%>
                            </h6>
                            <div class="d-flex justify-content-center">
                                <h6><%=nf.format(list.getPrice())%>đ
                                </h6>
                                <h6 class="text-muted ml-2">
                                    <del>123,000đ</del>
                                </h6>
                            </div>
                        </div>
                        <div
                                class="card-footer d-flex justify-content-between bg-light border"
                        >
                            <a href="detail?pid=<%= list.getId()%>" class="btn btn-sm text-dark p-0"
                            ><i class="fas fa-eye text-primary mr-1"></i
                            ></a>

                            <a href="cartcontroller?command=insertItem&product_id=<%=list.getId()%>&cartId=<%=System.currentTimeMillis()%>"
                               class="btn btn-sm text-dark p-0">
                                <i class="fas fa-shopping-cart text-primary mr-1"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <%}%>

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
                            <li class="page-item">
                                <a class="page-link" href="#">2</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">3</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Shop Product End -->
    </div>
</div>
<!-- Shop End -->

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Contact Javascript File -->
<script src="mail/jqBootstrapValidation.min.js"></script>
<script src="mail/contact.js"></script>

<!-- Template Javascript -->
<script src="./js/main.js"></script>
<script>
    $(document).ready(function () {
        $('.check').click(function () {
            $('.check').not(this).prop('checked', false);
        });
    });
    $(document).ready(function () {
        $('.check1').click(function () {
            $('.check1').not(this).prop('checked', false);
        });
    });
</script>

</body>
</html>
</body>
</html>
