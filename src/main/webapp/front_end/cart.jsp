<%--
  Created by IntelliJ IDEA.
  User: MAI
  Date: 1/2/2023
  Time: 1:53 PM
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

<!-----------------------Cart------------------>
<section class="cart">
    <div class="container">
        <div class="cart-top-wrap">
            <div class="cart-top">
                <div class="cart-top-cart cart-top-item">
                    <i class="fa-solid fa-cart-shopping "></i>
                </div>
                <div class="cart-top-address cart-top-item">
                    <i class="fa-sharp fa-solid fa-location-dot "></i>
                </div>
                <div class="cart-top-payment cart-top-item">
                    <i class="fa-brands fa-amazon-pay "></i>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="cart-content row">
            <div class="cart-content-left">
                <table>
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Màu</th>
                        <th>Size</th>
                        <th>SL</th>
                        <th>Thành tiền</th>
                        <th>Xóa</th>
                    </tr>
                    <tbody id="displayElement">
                    <%--                    <tr id="list_buy">--%>
                    <%--                        <td><img src="/image/sp1.2.jpg" alt=""></td>--%>
                    <%--                        <td>Áo lưới trắng</td>--%>
                    <%--                        <td><img src="/image/red.jpg" alt=""></td>--%>
                    <%--                        <td><p>L</p></td>--%>
                    <%--                        <td><input type="number" min="0" value="1"></td>--%>
                    <%--                        <td><p>499<sup>đ</sup></p></td>--%>
                    <%--                        <td>--%>
                    <%--                            <span>X</span>--%>
                    <%--                        </td>--%>
                    <%--                    </tr>--%>
                    </tbody>

                </table>
            </div>
            <div class="cart-content-right">
                <table>
                    <tr>
                        <th colspan="2">TỔNG TIỀN GIỎ HÀNG</th>
                    </tr>
                    <tr>
                        <td>Tổng sản phẩm</td>
                        <td><p id="tongSP">0</p></td>
                    </tr>
                    <tr>
                        <td>Tổng tiền hàng</td>
                        <td><p id="tongTien">0<sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <%--                        <td>Tạm tính</td>--%>
                        <%--                        <td><p style="color: black;font-weight: bold" >0<sup>đ</sup></p></td>--%>
                    </tr>
                </table>
                <div class="cart-content-right-text">
                    <p>Miễn phí ship khi đơn hàng lớn hơn 1 Jack</p>
                    <p style="color: red;font-weight: bold">Mua thêm <span
                            style="font-size: 18px">1000<sup>đ</sup></span> để được miễn phí ship</p>
                </div>
                <div class="cart-content-right-button">
                    <a href="/product">
                        <button>TIẾP TỤC MUA</button>
                    </a>
                    <a href="/delivery">
                        <button>THANH TOÁN</button>
                    </a>
                </div>
                <div class="cart-content-right-dangnhap">
                    <p>Tài khoản của cửa hàng:</p><br>
                    <p>Hãy<a href="" style="color: red">đăng nhâp</a>tài khoản của bạn để tích điểm</p>
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
<script>
    document.addEventListener("DOMContentLoaded", function (event) {
        let products = JSON.parse(localStorage.getItem('products'));
        // console.log("length: "+products.toString());
        // debugger;
        for (let item in products) {
            addToCart(products[item]);
        }

    });

    function mapSize(sizeId) {
        if (sizeId == 1) {
            return "S";
        }
        if (sizeId == 2) {
            return "M";
        }
        if (sizeId == 3) {
            return "L";
        }
        if (sizeId == 4) {
            return "XL";
        }
        if (sizeId == 5) {
            return "XXl";
        }
    }
    let numOfProduct = 0;
    function addToCart(product) {
        numOfProduct ++;
        let price = parseFloat(product.p_price) * parseFloat(product.p_quantity);
        let size = mapSize(product.p_size)

        let cartItem = document.querySelectorAll(".list_buy");
        for (let i = 0; i < cartItem.length; i++) {
            let productT = document.querySelectorAll(".title");
            if (productT[i].innerText == product.p_name) {
                alert("Sản phẩm đã đươc thêm")
                return
            }
        }
        let idGia = 'gia' + numOfProduct
        let idSl = 'idSL' + numOfProduct
        let trcontent = ' <tr class="list_buy"> <td><img src="' + product.p_img + '" alt=""></td> <td><span class="title">' + product.p_name + '<span></td> <td><img src="/image/red.jpg" alt=""></td> <td><p>' + size + '</p></td> <td><input id="' + idSl + '" type="number" min="0" value="' + product.p_quantity + '" onchange="updateQuantity(' + price/product.p_quantity + ',' + +numOfProduct + ')"></td> <td><p><p class="gia" id="' + idGia + '">' + price + '</p><sup>đ</sup></p></td> <td> <span class="delete">X</span> </td> </tr>'
        document.getElementById("displayElement").innerHTML += trcontent

        cartTotal();
        deleteCart();

    }
    function updateQuantity(price, numOfProduct) {
        console.log(price)
        console.log(numOfProduct)
        let sl = +document.getElementById('idSL' + numOfProduct).value
        console.log(sl)
        document.getElementById('gia' + numOfProduct).innerText = price * sl
    }

    function cartTotal() {
        let cartItem = document.querySelectorAll(".list_buy");

        let tongSP = 0;
        let tongTien = 0;

        for (let i = 0; i < cartItem.length; i++) {
            let inputValue = cartItem[i].getElementsByTagName("input")[0].value;

            let tien = cartItem[i].getElementsByTagName("p")[2].innerText;
            tongTien += +tien
            tongSP += +inputValue

        }

        document.getElementById("tongSP").innerHTML = tongSP
        document.getElementById("tongTien").innerHTML = tongTien
        inputChange();

    }

    function deleteCart() {
        let cartItem = document.querySelectorAll(".list_buy");
        for (let i = 0; i < cartItem.length; i++) {
            let productT = document.querySelectorAll(".delete");
            productT[i].addEventListener("click", function (event) {
                let cartDelete = event.target;
                let cartItemR = cartDelete.parentElement.parentElement
                cartItemR.remove();
                cartTotal();
            })
        }
    }


    function inputChange(){
        let cartItem = document.querySelectorAll(".list_buy");
        for (let i = 0; i < cartItem.length; i++) {
            let inputValue = cartItem[i].querySelector("input");
           inputValue.addEventListener("change",function (){
               cartTotal();
           })
        }
    }


</script>
</html>
