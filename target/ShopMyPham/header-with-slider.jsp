<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.model.Slider" %>
<%@ page import="qht.shopmypham.com.vn.service.SliderSerivce" %><%--
  Created by IntelliJ IDEA.
  User: Bùi Dương Khả Quân
  Date: 11/19/2022
  Time: 12:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Topbar Start -->
<jsp:include page="header.jsp"></jsp:include>
<div
        id="header-carousel"
        class="carousel slide"
        data-ride="carousel"
>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img
                    class="img-fluid"
                    src="https://myphamhera.com/wp-content/uploads/2022/12/banner-khuyen-mai-noel-thang-12-2022-myphamheracom.jpg"
                    alt="Image"
            />
            <!-- <div
            class="carousel-caption d-flex flex-column align-items-center justify-content-center"
          >
            <div class="p-3" style="max-width: 700px">
              <h4
                class="text-light text-uppercase font-weight-medium mb-3"
              >
                10% Off Your First Order
              </h4>
              <h3 class="display-4 text-white font-weight-semi-bold mb-4">
                Fashionable Dress
              </h3>
              <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
            </div>
          </div> -->
        </div>
        <% List<Slider> sliderList = SliderSerivce.getAllSlider();;
            for (Slider slider : sliderList) {
        %>
        <div class="carousel-item">
            <img
                    class="img-fluid"
                    src="<%=slider.getImg()%>"
                    alt="Image"
            />
            <!-- <div
                class="carousel-caption d-flex flex-column align-items-center justify-content-center"
              >
                <div class="p-3" style="max-width: 700px">
                  <h4
                    class="text-light text-uppercase font-weight-medium mb-3"
                  >
                    10% Off Your First Order
                  </h4>
                  <h3
                    class="display-4 text-white font-weight-semi-bold mb-4"
                  >
                    Reasonable Price
                  </h3>
                  <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                </div>
              </div> -->
        </div>
        <%}%>

    </div>
    <a
            class="carousel-control-prev"
            href="#header-carousel"
            data-slide="prev"
    >
        <div class="btn btn-dark" style="width: 45px; height: 45px">
            <span class="carousel-control-prev-icon mb-n2"></span>
        </div>
    </a>
    <a
            class="carousel-control-next"
            href="#header-carousel"
            data-slide="next"
    >
        <div class="btn btn-dark" style="width: 45px; height: 45px">
            <span class="carousel-control-next-icon mb-n2"></span>
        </div>
    </a>
</div>
</div>
</div>

<!-- Navbar End -->
