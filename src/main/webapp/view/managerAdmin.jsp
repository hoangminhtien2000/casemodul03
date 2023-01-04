<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: admin--%>
<%--  Date: 03/01/2023--%>
<%--  Time: 2:28 CH--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<table>--%>
<%--    <tr>--%>
<%--        <td><a href="/accountList">Account</a></td>--%>
<%--        <td><a href="/productList">Product</a></td>--%>
<%--    </tr>--%>
<%--</table>--%>


<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        td{
            padding: 200px 250px;
        }
        tr td:first-child button{
            width: 200px;
            height: 50px;


        }

        tr td:nth-child(2) button{
            width: 200px;
            height: 50px;
        }
        td button a{
            text-decoration: none;

        }
        td button{
            background-color: #ddd;
            border: 2px solid black;
        }
        td button:hover{
            background-color: red;
            border: 2px solid black;

        }
    </style>

</head>

<body>
<table>
    <tr>
        <td><button><a href="/accountList">Manager Account</a></button></td>
        <td><button><a href="/productList">Manager Product</a></button></td>
    </tr>
</table>
</body>
</html>