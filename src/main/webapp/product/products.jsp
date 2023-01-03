<%--
  Created by IntelliJ IDEA.
  User: Hoàng Minh Tiến
  Date: 12/25/2022
  Time: 7:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Product</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container mt-3">
    <div class="row">
        <h2 class="col-9">Xin chào ${account.username}</h2>
        <c:if test="${sessionScope.account != null}">
            <a href="/logout" class="btn btn-danger col-3">Logout</a>
        </c:if>
    </div>

    <h2>Danh sách sản phẩm</h2>
    <a href="" class="btn btn-success">Create</a>
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>IMG</th>
            <th>PRICE</th>
            <th>QUANTITY</th>
<%--            <th>STATUS</th>--%>
            <th>SIZE</th>
            <th>COLOR</th>
            <th>TYPE</th>
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="p" items="${Inforproducts}">
            <tr>
                <td>${p.product_id}</td>
                <td>${p.product_name}</td>
                <td><img src="${p.url_img}" width="100px" height="100px"></td>
                <td>${p.price}</td>
<%--                <td>${p.status}</td>--%>
                <td>${p.quantity}</td>
                <td>${p.size_name}</td>
                <td>${p.color_name}</td>
                <td>${p.type_name}</td>
                <td><a href="" type="button" class="btn btn-warning">Edit</a></td>
                <td><a href="deletes?product_id=${p.product_id}&&url_img=${p.url_img}&&quantity=${p.quantity}" type="button" class="btn btn-danger">Delete</a></td>
<%--                <td><a href="deletes?product_id=${p.product_id}&&url_img=${p.url_img}" type="button" class="btn btn-danger">Delete</a></td>--%>
            </tr>
        </c:forEach>
        </tbody>

        <%--        <tbody>--%>
        <%--        <c:forEach var="p" items="${products}">--%>
        <%--            <tr>--%>
        <%--            <td>${p.product_id}</td>--%>
        <%--            <td>${p.product_name}</td>--%>

        <%--&lt;%&ndash;            <c:forEach var="i" items="${imgs}">&ndash;%&gt;--%>
        <%--&lt;%&ndash;                <c:if test="${i.product_id==product_id}">&ndash;%&gt;--%>
        <%--&lt;%&ndash;                    <td><img src="${i.url_img}" width="100px" height="100px"></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;                </c:if>&ndash;%&gt;--%>

        <%--                <td>${p.price}</td>--%>
        <%--                <c:if test="${p.status==1}">--%>
        <%--                    <td style="color: green">Còn hàng</td>--%>
        <%--                </c:if>--%>
        <%--                <c:if test="${p.status==0}">--%>
        <%--                    <td style="color: red">Hết hàng</td>--%>
        <%--                </c:if>--%>

        <%--&lt;%&ndash;                <c:forEach var="s" items="${sizes}">&ndash;%&gt;--%>
        <%--&lt;%&ndash;                    <c:if test="${s.size_id==p.size_id}">&ndash;%&gt;--%>
        <%--&lt;%&ndash;                        <td><${s.size_name}</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;                    </c:if>&ndash;%&gt;--%>

        <%--&lt;%&ndash;                    <c:forEach var="co" items="${colors}">&ndash;%&gt;--%>
        <%--&lt;%&ndash;                        <c:if test="${co.color_id==p.color_id}">&ndash;%&gt;--%>
        <%--&lt;%&ndash;                            <td><${co.color_name}</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;                        </c:if>&ndash;%&gt;--%>

        <%--&lt;%&ndash;                        <c:forEach var="t" items="${types}">&ndash;%&gt;--%>
        <%--&lt;%&ndash;                            <c:if test="${t.type_id==p.type_id}">&ndash;%&gt;--%>
        <%--&lt;%&ndash;                                <td><${t.type_name}</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;                            </c:if>&ndash;%&gt;--%>

        <%--&lt;%&ndash;                            <td><a href="edits?id=${p.id}" type="button" class="btn btn-warning">Edit</a></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;                            <td><a href="deletes?id=${p.id}" type="button" class="btn btn-danger">Delete</a></td>&ndash;%&gt;--%>
        <%--                            </tr>--%>
        <%--&lt;%&ndash;                        </c:forEach>&ndash;%&gt;--%>
        <%--&lt;%&ndash;                    </c:forEach>&ndash;%&gt;--%>
        <%--&lt;%&ndash;                </c:forEach>&ndash;%&gt;--%>
        <%--&lt;%&ndash;            </c:forEach>&ndash;%&gt;--%>
        <%--        </c:forEach>--%>
        <%--        </tbody>--%>

    </table>
</div>

</body>
</html>