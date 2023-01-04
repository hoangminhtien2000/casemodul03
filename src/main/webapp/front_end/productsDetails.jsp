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

<!------------------Product------------>

<section class="product">
    <div class="container">
        <div class="product-top row">
            <p>Trang chủ</p><span>&#10230;</span>
            <p>Nữ</p><span>&#10230;</span>
            <p>Hàng nữ mới về</p><span>&#10230;</span>
            <p>Áo thun Ms001</p>
        </div>
        <div class="product-content row">
            <div class="product-content-left row">
                <div class="product-content-left-big-img">
                    <img id="p_img" src="${detail.product_img}" alt="">
                </div>
                <div class="product-content-left-small-img">
                    <img src="/image/sp1.1.jpg" alt="">
                    <img src="/image/sp1.2.jpg" alt="">
                    <img src="/image/sp1.3.jpg" alt="">
                    <img src="/image/sp1.4.jpg" alt="">
                </div>
            </div>
            <div class="product-content-right">
                <div class="product-content-right-product-name">
                    <h1 id="p_name">${detail.product_name}</h1>
                    <p>MSP: 001</p>
                </div>
                <div class="product-content-right-product-price">
                    <p id="p_price">${detail.price}<sup>đ</sup></p>
                </div>
                <div class="product-content-right-product-color">
                    <p><span style="font-weight: bold">Màu sắc</span>${detail.color_name}<span
                            style="color: red">*</span>
                    </p>
                    <div class="product-content-right-product-color-img">
                        <img src="/image/red.jpg" alt="">
                    </div>
                </div>
                <div class="product-content-right-product-size">
                    <p style="font-weight: bold">Size:</p>
                    <div class="size">
                        <span><input type="radio" name="p_size" checked value="1">S</span>
                        <span><input type="radio" name="p_size" value="2">M</span>
                        <span><input type="radio" name="p_size" value="3">L</span>
                        <span><input type="radio" name="p_size" value="4">XL</span>
                        <span><input type="radio" name="p_size" value="5">XXL</span>
                    </div>
                </div>
                <div class="quantity">
                    <p style="font-weight: bold">Số lượng:</p>
                    <input id="p_quantity" type="number" min="0" value="1">
                </div>
                <%--                <p style="color: red">Vui lòng chọn size</p>--%>
                <div class="product-content-right-product-button">
                    <%--                    <button ><i class="fa-solid fa-cart-shopping"></i>--%>
                    <%--                        <p>Mua hàng</p></button>--%>
                    <a >
                        <button onclick="addCart()">Mua hàng</button>
                    </a>
                    <%--                    <button><p>Tìm tại cửa hàng</p></button>--%>
                </div>
                <div class="product-content-right-product-icon">
                    <div class="product-content-right-product-icon-item">
                        <i class="fa-solid fa-phone"></i>
                        <p>Hotline</p>
                    </div>
                    <div class="product-content-right-product-icon-item">
                        <i class="fa-regular fa-comment"></i>
                        <p>Chat</p>
                    </div>
                    <div class="product-content-right-product-icon-item">
                        <i class="fa-regular fa-envelope"></i>
                        <p>Email</p>
                    </div>
                </div>
                <div class="product-content-right-product-QR">
                    <img src="/image/qr.jpg" alt="">
                </div>
                <div class="product-content-right-bottom">
                    <div class="product-content-right-bottom-top">
                        &#8711;
                    </div>
                    <div class="product-content-right-bottom-content-big">
                        <div class="product-content-right-bottom-content-title row">
                            <div class="product-content-right-bottom-content-title-item chitiet">
                                <p>Chi tiết</p>
                            </div>
                            <div class="product-content-right-bottom-content-title-item baoquan">
                                <p>Bảo quản</p>
                            </div>
                            <div class="product-content-right-bottom-content-title-item">
                                <p>Tham khảo size</p>
                            </div>
                        </div>
                        <div class="product-content-right-bottom-content">
                            <div class="product-content-right-bottom-content-chitiet">
                                dddddddddddddddddddddddddddddddddddd<br>
                                sssssssssssssssssssssssssssssssssssss<br>
                                eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee<br>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium exercitationem<br>
                                fugit hic id quia! Accusamus asperiores aut corporis dignissimos dolore doloremque
                                eius<br>
                                fugiat illo nihil nisi, perferendis quis quos voluptas.
                            </div>
                            <div class="product-content-right-bottom-content-baoquan">
                                dddddddddddddddddddddddddddddddddddd<br>
                                sssssssssssssssssssssssssssssssssssss<br>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, eius maxime? A animi<br>
                                consectetur doloribus eligendi fuga iure maiores optio quaerat ullam voluptates.
                                Autem<br>
                                dignissimos officia perferendis repellat rerum veritatis.
                            </div>
                            <!--                            <div class="product-content-right-bottom-content-thamkhao">-->
                            <!--                                dddddddddddddddddddddddddddddddddddd<br>-->
                            <!--                                sssssssssssssssssssssssssssssssssssss<br>-->
                            <!--                                eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-->
                            <!--                            </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--      Product-related---------------->
<section class="product-related container">
    <div class="product-related-title">
        <p>Sản phẩm liên quan</p>
    </div>
    <div class="product-content row">
        <div class="product-related-item ">
            <img src="/image/sp1.jpg" alt="">
            <h1>Váy lưới trắng tinh như ngọc trinh</h1>
            <p>790.000<sup>đ</sup></p>
        </div>
        <div class="product-related-item ">
            <img src="/image/sp1.2.jpg" alt="">
            <h1>Váy lưới trắng tinh như ngọc trinh</h1>
            <p>790.000<sup>đ</sup></p>
        </div>
        <div class="product-related-item ">
            <img src="/image/sp1.3.jpg" alt="">
            <h1>Váy lưới trắng tinh như ngọc trinh</h1>
            <p>790.000<sup>đ</sup></p>
        </div>
        <div class="product-related-item ">
            <img src="/image/sp1.4.jpg" alt="">
            <h1>Váy lưới trắng tinh như ngọc trinh</h1>
            <p>790.000<sup>đ</sup></p>
        </div>
        <div class="product-related-item ">
            <img src="/image/sp1.2.jpg" alt="">
            <h1>Váy lưới trắng tinh như ngọc trinh</h1>
            <p>790.000<sup>đ</sup></p>
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
<script>
    let products = JSON.parse(localStorage.getItem('products'));
    function addCart() {
        let p_img = document.getElementById('p_img').src;
        let p_name = document.getElementById('p_name').innerText;
        let p_price = document.getElementById('p_price').innerText;
        let sizes = document.getElementsByName('p_size');
        let p_size;
        for (var i = 0; i < sizes.length; i++) {
            if (sizes[i].checked) {
                p_size = sizes[i].value;
            }
        }
        let p_quantity = document.getElementById('p_quantity').value;
        // console.log(p_img, p_name, p_price, p_size, quantity)
        // addToCart(p_img, p_name, p_price, p_size, quantity);
        let product = {p_img:p_img, p_name:p_name,p_price:p_price,p_size:p_size, p_quantity:p_quantity}
        let flag = false;
        for(let item in products){
            let p = products[item];
            if(p.p_name === p_name){
                p.p_quantity = (parseInt(p.p_quantity) + parseInt(p_quantity)).toString();
                flag = true;
                break;
            }
        }
        if(!flag){
            products.push(product);
        }
        localStorage.setItem("products", JSON.stringify(products));
        products = JSON.parse(localStorage.getItem('products'));
        // console.log("products "+products);
        window.location.href = "http://localhost:8080/cart";

    }





    const bigImg = document.querySelector(".product-content-left-big-img img");
    const smallImg = document.querySelectorAll(".product-content-left-small-img img");
    smallImg.forEach(function (imgItem, X) {
        imgItem.addEventListener("click", function () {
            bigImg.src = imgItem.src
        })
    })

    const baoquan = document.querySelector(".baoquan");
    const chitiet = document.querySelector(".chitiet");

    if (baoquan) {
        baoquan.addEventListener("click", function () {
            document.querySelector(".product-content-right-bottom-content-chitiet").style.display = "none"
            document.querySelector(".product-content-right-bottom-content-baoquan").style.display = "block"
        })
    }
    if (chitiet) {
        chitiet.addEventListener("click", function () {
            document.querySelector(".product-content-right-bottom-content-chitiet").style.display = "block"
            document.querySelector(".product-content-right-bottom-content-baoquan").style.display = "none"
        })
    }

    const butTon = document.querySelector(".product-content-right-bottom-top");
    if (butTon) {
        butTon.addEventListener("click", function () {
            document.querySelector(".product-content-right-bottom-content-big").classList.toggle("activeB")
        })
    }

</script>
</html>