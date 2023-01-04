<%--
  Created by IntelliJ IDEA.
  User: johntoan98gmail.com
  Date: 23/12/2022
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        td {
            padding: 3px 550px;
        }

        td input {
            width: 200px;
            height: 30px;
            background-color: #ddd;
            border: 2px solid #000000;


        }

        h2 {
            text-align: center;
        }

        td button {
            width: 100px;
            height: 40px;
            background-color: #ddd;
            border: 2px solid black;
        }

        td button:hover {
            background-color: red;
            border: 2px solid black;

        }
    </style>

</head>

<body>
<h2>Create Product</h2>
<form method="post" action="/createProduct">
    <table>
        <tr>
            <td><input name="id" type="hidden" value="${p.id}"></td>
        </tr>
        <tr>
            <td><input name="product_name" placeholder="nhập name"></td>
        </tr>
        <tr>
            <td><input name="price" placeholder="nhập price"></td>
        </tr>
        <tr>
            <td><select id="size_id" name="size_id" style="width: 170px">
                <option value="1" selected>SIZE</option>
                <option value="1">S</option>
                <option value="2">M</option>
                <option value="3">L</option>
                <option value="4">XL</option>
                <option value="5">XXL</option>
            </select></td>
        </tr>
        <tr>
            <td>
                <select id="color_id" name="color_id" style="width: 170px">
                    <option value="1" selected>COLOR</option>
                    <option value="1">Black</option>
                    <option value="2">White</option>
                    <option value="3">Pink</option>
                    <option value="4">Red</option>
                    <option value="5">Purple</option>
                    <option value="6">Brown</option>
                </select></td>
        </tr>
        <tr>
            <td><select id="type_id" name="type_id" style="width: 170px">
                <option value="1" selected>TYPE</option>
                <option value="1">Sexy</option>
                <option value="2">Quần sọt</option>
                <option value="3">Váy</option>
                <option value="4">Lưng cao</option>
                <option value="5">Kèm áo choàng</option>
            </select></td>
        </tr>
        <tr>
            <td><input name="url_img" placeholder="nhập img"></td>
        </tr>
        <tr>
            <td><input name="quantity" placeholder="nhập quantity"><br></td>
        </tr>
        <tr>
            <td><button type="submit">Create</button></td>
        </tr>
    </table>



</form>
</body>
</html>