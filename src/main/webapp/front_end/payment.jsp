<%--
  Created by IntelliJ IDEA.
  User: MAI
  Date: 1/3/2023
  Time: 12:04 AM
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
                    <li><a href="">CHƯƠNG TRÌNH KHUYẾN MẠI</a></li>
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

<!-----------------------Payment------------------>
<section class="payment">
    <div class="container">
        <div class="payment-top-wrap">
            <div class="payment-top">
                <div class="payment-top-delivery payment-top-item">
                    <i class="fa-solid fa-cart-shopping "></i>
                </div>
                <div class="payment-top-address payment-top-item">
                    <i class="fa-sharp fa-solid fa-location-dot "></i>
                </div>
                <div class="payment-top-payment payment-top-item">
                    <i class="fa-brands fa-amazon-pay "></i>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="payment-content row">
            <div class="payment-content-left">
                <div class="payment-content-left-method-delivery">
                    <p style="font-weight: bold">Phương thức giáo hàng</p>
                    <div class="payment-content-left-method-delivery-item">
                        <input  checked type="radio">
                        <label>Giao hàng chuyển phát nhanh</label>
                    </div>
                </div>
                <div class="payment-content-left-method-payment">
                    <p style="font-weight: bold">Phương thức thanh toán</p>
                    <p>Mọi giao dịch đều được bảo mật</p>
                    <div class="payment-content-left-method-payment-item">
                        <input  name="method-payment" type="radio">
                        <label>Thanh toán bằng thẻ tín dụng</label>
                    </div>
                    <div class="payment-content-left-method-payment-item-img">
                        <img src="/image/visa.png" style="height: 50px;width: 200px" alt="">
                    </div>
                    <div class="payment-content-left-method-payment-item">
                        <input  checked name="method-payment"  type="radio">
                        <label>Thanh toán bằng thẻ ATM</label>
                    </div>
                    <div class="payment-content-left-method-payment-item-img">
                        <img src="/image/techcombank.png" style="width: 200px;height: 150px" alt="">
                    </div>
                    <div class="payment-content-left-method-payment-item">
                        <input  name="method-payment" type="radio">
                        <label>Thanh toán Momo</label>
                    </div>
                    <div class="payment-content-left-method-payment-item-img">
                        <img src="/image/momo.png" style="width: 300px;height: 100px;"  alt="">
                    </div>
                    <div class="payment-content-left-method-payment-item">
                        <input name="method-payment" type="radio">
                        <label>Thanh toán tại nơi giao hàng</label>
                    </div>

                </div>
            </div>
            <div class="payment-content-right">
                <div class="payment-content-right-button">
                    <input type="text" placeholder="Mã giảm giá">
                    <button><i class="fa-solid fa-check"></i></button>
                </div>
                <div class="payment-content-right-button">
                    <input type="text" placeholder="Mã cộng tác viên">
                    <button><i class="fa-solid fa-check"></i></button>
                </div>
                <div class="payment-content-right-mnv">
                    <select>
                        <option>Chọn mã nhân viên thân thiết</option>
                        <option>001</option>
                        <option>002</option>
                        <option>003</option>
                        <option>004</option>
                    </select>
                </div>
                <div class="payment-content-right-payment">
                    <button>TIẾP TỤC THANH TOÁN</button>
                </div>
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
