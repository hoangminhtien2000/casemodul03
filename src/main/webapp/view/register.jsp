
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>

<%--    <%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, Helvetica, sans-serif;--%>
<%--            background-color: black;--%>
<%--        }--%>

<%--        * {--%>
<%--            box-sizing: border-box;--%>
<%--        }--%>

<%--        /* Add padding to containers */--%>
<%--        .container {--%>
<%--            padding: 16px;--%>
<%--            background-color: white;--%>
<%--        }--%>

<%--        /* Full-width input fields */--%>
<%--        input[type=text], input[type=password] {--%>
<%--            width: 100%;--%>
<%--            padding: 15px;--%>
<%--            margin: 5px 0 22px 0;--%>
<%--            display: inline-block;--%>
<%--            border: none;--%>
<%--            background: #f1f1f1;--%>
<%--        }--%>

<%--        input[type=text]:focus, input[type=password]:focus {--%>
<%--            background-color: #ddd;--%>
<%--            outline: none;--%>
<%--        }--%>

<%--        /* Overwrite default styles of hr */--%>
<%--        hr {--%>
<%--            border: 1px solid #f1f1f1;--%>
<%--            margin-bottom: 25px;--%>
<%--        }--%>

<%--        /* Set a style for the submit button */--%>
<%--        .registerbtn {--%>
<%--            background-color: #04AA6D;--%>
<%--            color: white;--%>
<%--            padding: 16px 20px;--%>
<%--            margin: 8px 0;--%>
<%--            border: none;--%>
<%--            cursor: pointer;--%>
<%--            width: 100%;--%>
<%--            opacity: 0.9;--%>
<%--        }--%>

<%--        .registerbtn:hover {--%>
<%--            opacity: 1;--%>
<%--        }--%>

<%--        /* Add a blue text color to links */--%>
<%--        a {--%>
<%--            color: dodgerblue;--%>
<%--        }--%>

<%--        /* Set a grey background color and center the text of the "sign in" section */--%>
<%--        .signin {--%>
<%--            background-color: #f1f1f1;--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<form action="/register" method="post">--%>
<%--    <div class="container">--%>
<%--        <h1>Register</h1>--%>
<%--        <p>Please fill in this form to create an account.</p>--%>
<%--        <hr>--%>

<%--        <label for="email"><b>Email</b></label>--%>
<%--        <input type="text" placeholder="Enter Email" name="email" id="email" required>--%>

<%--        <label for="password"><b>Password</b></label>--%>
<%--        <input type="password" placeholder="Enter Password" name="password" id="password" required>--%>

<%--        <label for="psw-repeat"><b>Repeat Password</b></label>--%>
<%--        <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>--%>
<%--        <label for="email"><b>First Name</b></label>--%>
<%--        <input type="text" placeholder="Enter First Name" name="first_name" id="first_name" required>--%>
<%--        <label for="email"><b>Last Name</b></label>--%>
<%--        <input type="text" placeholder="Enter Last Name" name="last_name" id="last_name" required>--%>
<%--        <label for="email"><b>Phone Number</b></label>--%>
<%--        <input type="text" placeholder="Enter Phone Number" name="phonenumber" id="phonenumber" required>--%>
<%--        <label for="email"><b>Address</b></label>--%>
<%--        <input type="text" placeholder="Enter Address" name="address" id="address" required>--%>
<%--        <hr>--%>
<%--        <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>--%>
<%--        <button type="submit" class="registerbtn">Register</button>--%>
<%--    </div>--%>

<%--    <div class="container signin">--%>
<%--        <p>Already have an account? <a href="/login">Sign in</a>.</p>--%>
<%--    </div>--%>
<%--</form>--%>

<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>


    <style>
        tr td {
            padding: 5px 0px;
        }

        td:last-child {
            padding-left: 200px;

        }

        td:first-child {
            padding-left: 200px;
            color: red;

        }

        td input {
            width: 500px;
            height: 40px;
            background-color: #ddd;
            border: 2px solid #ddd;
        }
        .registerbtn{
            width: 100px;
            height: 40px;
            background-color: #ddd;
            border: 2px solid black;
            border-radius: 5px;
        }
        .registerbtn:hover{
            background-color: red;
            color: black;
        }


    </style>
</head>

<body>
<form action="/register" method="post">
    <div class="container">
        <h1 style="text-align: center">Register</h1>
        <p style="text-align: center">Vui lòng nhập thông tin!</p>
        <hr>
        <table>
            <tr>
                <td><label for="email"><b>Email</b></label></td>
                <td><input type="text" placeholder="Enter Email" name="email" id="email" required><br></td>
            </tr>
            <tr>
                <td><label for="password"><b>Password</b></label></td>
                <td><input type="password" placeholder="Enter Password" name="password" id="password" required></td>
            </tr>
            <tr>
                <td><label for="psw-repeat"><b>Repeat Password</b></label></td>
                <td><input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
                </td>
            </tr>
            <tr>
                <td><label for="email"><b>First Name</b></label></td>
                <td><input type="text" placeholder="Enter First Name" name="first_name" id="first_name" required></td>
            </tr>
            <tr>
                <td><label for="email"><b>Last Name</b></label></td>
                <td><input type="text" placeholder="Enter Last Name" name="last_name" id="last_name" required></td>
            </tr>
            <tr>
                <td><label for="email"><b>Phone Number</b></label></td>
                <td><input type="text" placeholder="Enter Phone Number" name="phonenumber" id="phonenumber" required>
                </td>
            </tr>
            <tr>
                <td><label for="email"><b>Address</b></label></td>
                <td><input type="text" placeholder="Enter Address" name="address" id="address" required></td>
            </tr>
            <tr>
                <td></td>
                <td> <button type="submit" class="registerbtn" >Register</button></td>
            </tr>

        </table>


        <hr>


        <div class="container signin" >
            <p style="text-align:  center">Đăng nhập bằng Account? <a href="/login">Sign in</a>.</p>
        </div>
    </div>


</form>
</body>
</html>