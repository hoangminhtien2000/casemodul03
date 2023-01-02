<%--
  Created by IntelliJ IDEA.
  User: MAI
  Date: 1/2/2023
  Time: 11:49 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../font/fontawesome-free-6.2.1-web/fontawesome-free-6.2.1-web/css/fontawesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../font/fontawesome-free-6.2.1-web/fontawesome-free-6.2.1-web/scss/_icons.scss">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/js/all.min.js"/>
    <link rel="stylesheet" href="../css/style.css">

</head>
<body>
<section class="top">
    <div class="container">
        <div class="row">
            <header>
                <div class="top-logo">
                    <img src="/image/logook.jpg" width="120" height="80">
                </div>
                <div class="top-menu-items">
                    <li><a href="/product">SẢN PHẨM</a>
<%--                        <ul class="top-menu-item">--%>
<%--                            <li><a href="">Hàng mới về</a></li>--%>
<%--                            <li><a href="">Colection</a></li>--%>
<%--                            <li><a href="">Áo</a>--%>
<%--                                <ul>--%>
<%--                                    <li><a href="">Áo sơ mi</a></li>--%>
<%--                                    <li><a href="">Áo thun</a></li>--%>
<%--                                    <li><a href="">Áo Vest</a></li>--%>
<%--                                    <li><a href="">Áo khoác</a></li>--%>
<%--                                    <li><a href="">Áo len</a></li>--%>
<%--                                </ul>--%>
<%--                            </li>--%>
<%--                            <li><a href="">Quần</a>--%>
<%--                                <ul>--%>
<%--                                    <li><a href="">Quần Jean</a></li>--%>
<%--                                    <li><a href="">Quần lửng</a></li>--%>
<%--                                    <li><a href="">Quần dài</a></li>--%>
<%--                                </ul>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
                    </li>
<%--                    <li><a href="">NAM</a></li>--%>
<%--                    <li><a href="">TRẺ EM</a></li>--%>
                    <li><a href="">CHƯƠNG TRÌNH KHUẾN MẠI</a></li>
<%--                    <li><a href="">KHẨU TRANG</a></li>--%>
                    <li><a href="">BST</a></li>
                    <li><a href="">THÔNG TIN</a></li>


                </div>
                <div class="top-menu-icons">
                    <li><input placeholder="tìm kiếm" type="text">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </li>
                    <li>
                        <i class="fa-solid fa-user"></i>
                    </li>
                    <li>
                        <i class="fa-solid fa-cart-shopping"></i>
                    </li>
                    <li></li>

                </div>
            </header>

        </div>
    </div>

</section>

<!-----------------------Delivery------------------>
<section class="delivery">
    <div class="container">
        <div class="delivery-top-wrap">
            <div class="delivery-top">
                <div class="delivery-top-delivery delivery-top-item">
                    <i class="fa-solid fa-cart-shopping "></i>
                </div>
                <div class="delivery-top-address delivery-top-item">
                    <i class="fa-sharp fa-solid fa-location-dot "></i>
                </div>
                <div class="delivery-top-payment delivery-top-item">
                    <i class="fa-brands fa-amazon-pay "></i>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="delivery-content row">
            <div class="delivery-content-left">
                <p>Vui lòng chọn địa chỉ giao hàng</p>
                <div class="delivery-content-left-dangnhap row">
                    <i class="fa-solid fa-right-to-bracket"></i>
                    <p>Đăng nhập nếu bạn có tài khoản của cửa hàng</p>
                </div>
                <div class="delivery-content-left-khachle row">
                    <input checked name="loaikhach" type="radio"">
                    <p><span>Khách lẻ: </span>nếu bạn không muốn lưu lại thông tin</p>
                </div>
                <div class="delivery-content-left-dangky row">
                    <input name="loaikhach" type="radio">
                    <p><span>Đăng ký: </span>tạo tài khoản với thông tin bên dưới</p>
                </div>
                <div class="delivery-content-left-input-top row">
                    <div class="delivery-content-left-input-top-item">
                        <label for="">Họ tên<span style="color: red">*</span></label>
                        <input type="text">
                    </div>
                    <div class="delivery-content-left-input-top-item">
                        <label for="">Điện thoại<span style="color: red">*</span></label>
                        <input type="text">
                    </div>
                    <div class="delivery-content-left-input-top-item">
                        <label for="">Tỉnh/TP<span style="color: red">*</span></label>
                        <input type="text">
                    </div>
                    <div class="delivery-content-left-input-top-item">
                        <label for="">Quận/Huyện<span style="color: red">*</span></label>
                        <input type="text">
                    </div>
                </div>
                <div class="delivery-content-left-input-bottom">
                    <label for="">Địa chỉ<span style="color: red">*</span></label>
                    <input type="text">
                </div>
                <div class="delivery-content-left-button row">
                    <a href="/cart"><span>&#171;</span><p>Quay lại giỏ hàng</p></a>
                    <a href="/payment"><button><p style="font-weight: bold">THANH TOÁN VÀ GIAO HÀNG</p></button></a>
                </div>
            </div>
            <div class="delivery-content-right">
                <table>
                    <tr>
                        <th>Tên sản phẩm</th>
                        <th>Giảm giá</th>
                        <th>Số lượng</th>
                        <th>Thành tiền</th>
                    </tr>
                    <tr>
                        <td>Áo lưới xinh tươi</td>
                        <td>-30%</td>
                        <td>1</td>
                        <td><p>1400.000<sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td>Quần lưới xinh tươi</td>
                        <td>-10%</td>
                        <td>2</td>
                        <td><p>2400.000<sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" colspan="3">Tổng</td>
                        <td style="font-weight: bold"><p>2400.000<sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" colspan="3">Thuế VAT</td>
                        <td style="font-weight: bold"><p>2400.000<sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold" colspan="3">Tổng tiền hàng</td>
                        <td style="font-weight: bold"><p>2400.000<sup>đ</sup></p></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</section>

<!--app-connection-->

<section class="app-container">
    <p>Tải ứng dụng</p>
    <div class="app-google">
        <img src="/image/app1.webp" alt="">
    </div>
    <p>Nhận thông báo từ cửa hàng</p>
    <input type="text" placeholder="Nhập email của bạn">
</section>


<!--footer-------------------------------->

<div class="foot-top">
    <li><a href=""><img src="/image/bikinii.webp" alt=""></a></li>
    <li><a href="">Liên hệ</a></li>
    <li><a href="">Tuyển dụng</a></li>
    <li><a href="">Giới thiệu</a></li>
    <li>
        <a href=""><i class="fa-brands fa-facebook"></i></a>
        <a href=""><i class="fa-brands fa-tiktok"></i></a>
        <a href=""><i class="fa-brands fa-twitter"></i></a>
    </li>
</div>
<div class="footer-center">
    <p>Team 5 Neverdie!</p><br>
    <p>Địa chỉ: Tầng 3, Lô T04, HD Moon, Mỹ Đình, Hà Nội</p>
</div>
</body>
</html>
