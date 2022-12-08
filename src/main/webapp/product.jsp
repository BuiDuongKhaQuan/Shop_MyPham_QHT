<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Bùi Dương Khả Quân
  Date: 12/6/2022
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    NumberFormat nf = NumberFormat.getInstance();
    nf.setMinimumFractionDigits(0);
    List<Product> listProduct = (List<Product>) request.getAttribute("listProduct");
    for (Product p : listProduct) {
%>
<div class="col-lg-14 col-md-13 col-sm-13 pb-1">
    <div class="card product-item border-0 mb-4">
        <div
                class="card-header product-img position-relative overflow-hidden bg-transparent border p-0"
        >
            <img
                    class="img-fluid w-100"
                    src="<%= p.getImg1()%>"
                    alt=""
                    style="height: 310px;"
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
            <a href="cartcontroller?command=insertItem&product_id=<%=p.getId()%>"
               class="btn btn-sm text-dark p-0">
                <i class="fas fa-shopping-cart text-primary mr-1"></i>
            </a>
        </div>
    </div>
</div>
<%}%>
