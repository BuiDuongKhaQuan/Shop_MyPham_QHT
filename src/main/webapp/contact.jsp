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
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Liên Hệ</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">liên hệ</p>
        </div>
    </div>
</div>
<!-- Page Header End -->

<!-- Contact Start -->
<div class="container-fluid pt-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5">
            <span class="px-2">Liên hệ cho bất kỳ thắc mắc nào</span>
        </h2>
    </div>
    <div class="row px-xl-5">
        <div class="col-lg-7 mb-5">
            <div class="contact-form">
                <div id="success"></div>
                <form
                        name="sentMessage"
                        id="contactForm"
                        novalidate="novalidate"
                >
                    <div class="control-group">
                        <input
                                type="text"
                                class="form-control from-border"
                                id="name"
                                placeholder="Họ và tên"
                                required="required"
                                data-validation-required-message="Please enter your name"
                        />
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="control-group">
                        <input
                                type="email"
                                class="form-control from-border"
                                id="email"
                                placeholder="Email"
                                required="required"
                                data-validation-required-message="Please enter your email"
                        />
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="control-group">
                        <input
                                type="text"
                                class="form-control from-border"
                                id="subject"
                                placeholder="Chủ đề"
                                required="required"
                                data-validation-required-message="Please enter a subject"
                        />
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="control-group">
                    <textarea
                            class="form-control from-border"
                            rows="6"
                            id="message"
                            placeholder="Để lại ý kiến hoặc thắc mắc của bạn"
                            required="required"
                            data-validation-required-message="Please enter your message"
                    ></textarea>
                        <p class="help-block text-danger"></p>
                    </div>
                    <div>
                        <button
                                class="btn btn-primary py-2 px-4"
                                type="submit"
                                id="sendMessageButton"
                        >
                            Gửi
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-lg-5 mb-5">
            <h5 class="font-weight-semi-bold mb-3">Liên hệ</h5>
            <p>
                Của hàng chúng tôi rất hân hạnh được phục vụ quý khách, mọi thắc
                mắc của quý khách vui lòng để lại, bộ phận chăm sóc khách hàng
                của chúng tôi sẽ sớm phản hồi tới bạn.
            </p>
            <div class="d-flex flex-column mb-3">
                <h5 class="font-weight-semi-bold mb-3">Cửa hàng 1</h5>
                <p class="mb-2">
                    <i class="fa fa-map-marker-alt text-primary mr-3"></i>789 Linh
                    Trung, Thủ Đức, TP HCM
                </p>
                <p class="mb-2">
                    <i class="fa fa-envelope text-primary mr-3"></i>qht@gmail.com
                </p>
                <p class="mb-2">
                    <i class="fa fa-phone-alt text-primary mr-3"></i>+84 328
                    316787
                </p>
            </div>
            <div class="d-flex flex-column">
                <h5 class="font-weight-semi-bold mb-3">Cửa hàng 2</h5>
                <p class="mb-2">
                    <i class="fa fa-map-marker-alt text-primary mr-3"></i>789 Linh
                    Trung, Thủ Đức, TP HCM
                </p>
                <p class="mb-2">
                    <i class="fa fa-envelope text-primary mr-3"></i>qht@gmail.com
                </p>
                <p class="mb-0">
                    <i class="fa fa-phone-alt text-primary mr-3"></i>+84 328
                    316787
                </p>
            </div>
        </div>
    </div>
</div>
<!-- Contact End -->
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
