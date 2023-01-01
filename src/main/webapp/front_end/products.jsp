<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../font/fontawesome-free-6.2.1-web/fontawesome-free-6.2.1-web/css/fontawesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../font/fontawesome-free-6.2.1-web/fontawesome-free-6.2.1-web/scss/_icons.scss">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/js/all.min.js"/>


</head>
<body>
<section class="top">
    <div class="container">
        <div class="row">
            <header>
                <div class="top-logo">
                    <a href="index.html"> <img src="/image/logook.jpg" width="120" height="80" ></a>
                </div>
                <div class="top-menu-items">
                    <li><a href="">NỮ</a>
                        <ul class="top-menu-item">
                            <li><a href="">Hàng mới về</a></li>
                            <li><a href="">Colection</a></li>
                            <li><a href="">Áo</a>
                                <ul>
                                    <li><a href="">Áo sơ mi</a></li>
                                    <li><a href="">Áo thun</a></li>
                                    <li><a href="">Áo Vest</a></li>
                                    <li><a href="">Áo khoác</a></li>
                                    <li><a href="">Áo len</a></li>
                                </ul>
                            </li>
                            <li><a href="">Quần</a>
                                <ul>
                                    <li><a href="">Quần Jean</a></li>
                                    <li><a href="">Quần lửng</a></li>
                                    <li><a href="">Quần dài</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="">NAM</a></li>
                    <li><a href="">TRẺ EM</a></li>
                    <li><a href="">SALE</a></li>
                    <li><a href="">KHẨU TRANG</a></li>
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

<!------------------Category------------>
<section class="category">
    <div class="container">
        <div class="category-top row">
            <p>Trang chủ</p><span>&#10230;</span>
            <p>Nữ</p><span>&#10230;</span>
            <p>Hàng nữ mới về</p>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="category-left">
                <ul>
                    <li class="category-left-li"><a href="#">Nữ</a>
                        <ul>
                            <li><a href="">Hàng nữ mới về</a></li>
                            <li><a href="">Đồ đi biển</a></li>
                            <li><a href="">Quần Jean</a></li>
                            <li><a href="">Mát mẻ mùa hè</a></li>
                        </ul>
                    </li>
                    <li class="category-left-li"><a href="#">Nam</a>
                        <ul>
                            <li><a href="">Hàng nam mới về</a></li>
                            <li><a href="">Đồ đi biển</a></li>
                            <li><a href="">Quần Jean</a></li>
                            <li><a href="">Mát mẻ mùa hè</a></li>
                        </ul>
                    </li>
                    <li class="category-left-li"><a href="">Trẻ em</a></li>
                    <li class="category-left-li"><a href="">Bộ sưu tập</a></li>
                </ul>
            </div>
            <div class="category-right row">
                <div class="category-right-top-item">
                    <p>HÀNG NỮ MỚI VỀ</p>
                </div>
                <div class="category-right-top-item">
                    <button><span>Bộ lọc</span><i class="fa-solid fa-caret-down"></i></button>
                </div>
                <div class="category-right-top-item">
                    <select name="" id="">
                        <option value="">Sắp xếp</option>
                        <option value="">Giá cao đến thấp</option>
                        <option value="">Giá thấp đến cao</option>
                    </select>
                </div>
                <div class="category-right-content row">
                   <c:forEach items="${listP}" var="o">
                       <div class="category-right-content-item">
                           <img src="${o.url_img}" alt="">
                           <h1>${o.product_name}</h1>
                           <p>${o.price}<sup>đ</sup></p>
                       </div>
                   </c:forEach>
                </div>
                <div class="category-right-bottom row">
                    <div class="category-right-bottom-items">
                        <p>Hiển thị 2 <span>|</span>4 sản phẩm</p>
                    </div>
                    <div class="category-right-bottom-items">
                        <p><span>&#171;</span>1 2 3 4 5<span>&#187;</span>Trang cuối</p>
                    </div>
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


<!--footer-->

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
<script>
    const itemsliderbar = document.querySelectorAll(".category-left-li");
    itemsliderbar.forEach(function (menu,index){
        menu.addEventListener("click",function (){
            menu.classList.toggle("block");
        })
    })
</script>
</html>