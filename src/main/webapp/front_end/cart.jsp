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
                    <tr id="list_buy">
                        <td><img src="/image/sp1.2.jpg" alt=""></td>
                        <td>Áo lưới trắng</td>
                        <td><img src="/image/red.jpg" alt=""></td>
                        <td><p>L</p></td>
                        <td><input type="number" min="0" value="1"></td>
                        <td><p>499.000<sup>đ</sup></p></td>
                        <td>
                            <span>X</span>
                        </td>
                    </tr>
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
                        <td>2</td>
                    </tr>
                    <tr>
                        <td>Tổng tiền hàng</td>
                        <td><p>1400.000<sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td>Tạm tính</td>
                        <td><p style="color: black;font-weight: bold">1400.000<sup>đ</sup></p></td>
                    </tr>
                </table>
                <div class="cart-content-right-text">
                    <p>Miễn phí ship khi đơn hàng lớn hơn 1 Jack</p>
                    <p style="color: red;font-weight: bold">Mua thêm <span
                            style="font-size: 18px">1000<sup>đ</sup></span> để được miễn phí ship</p>
                </div>
                <div class="cart-content-right-button">
                    <button>TIẾP TỤC MUA</button>
                    <button>THANH TOÁN</button>
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
    document.addEventListener("DOMContentLoaded", function(event) {
        let products = JSON.parse(localStorage.getItem('products'));
        console.log("length: "+products.toString());
        // debugger;
        for(let item in products){
            addToCart(products[item]);
        }

    });
    // function addCart() {
    //     let p_img = document.getElementById('p_img').src;
    //     let p_name = document.getElementById('p_name').innerText;
    //     let p_price = document.getElementById('p_price').innerText;
    //     let sizes = document.getElementsByName('p_size');
    //     let p_size;
    //     for (var i = 0; i < sizes.length; i++) {
    //         if (sizes[i].checked) {
    //             p_size = sizes[i].value;
    //         }
    //     }
    //     let quantity = document.getElementById('p_quantity').value;
    //     console.log(p_img, p_name, p_price, p_size, quantity)
    //     addToCart(p_img, p_name, p_price, p_size, quantity);
    // }
    //
    // function addToCart(p_img, p_name, p_price, p_size, quantity) {
    //     let addtr = document.createElement("list_buy");
    //     let trcontent = p_img;
    //     addtr.innerHTML = trcontent;
    //     let cartTable = document.querySelector("tbody");
    //     console.log(cartTable)
    //     // cartTable.append(addtr);
    // }


    function addToCart(product) {
        let price = parseFloat(product.p_price) * parseFloat(product.p_quantity);
        let size = mapSize(product.p_size)
        let addtr = document.createElement("tr");
        let trcontent = ' <tr id="list_buy"> <td><img src="'+product.p_img+'" alt=""></td> <td>'+product.p_name+'</td> <td><img src="/image/red.jpg" alt=""></td> <td><p>'+size+'</p></td> <td><input type="number" min="0" value="'+product.p_quantity+'"></td> <td><p>'+price+'<sup>đ</sup></p></td> <td> <span>X</span> </td> </tr>'
        addtr.innerHTML = trcontent;
        let cartTable = document.querySelector("tbody");
        cartTable.append(addtr);

        <%--let data = "";--%>
        <%--for(let item in products){--%>
        <%--    let product = products[item];--%>
        <%--    let price = product.p_price * product.p_quantity;--%>
        <%--    let size = mapSize(product.p_size)--%>
        <%--    data += `<tr id="list_buy">--%>
        <%--                <td><img src="/image/sp1.2.jpg" alt=""></td>--%>
        <%--                <td>${product.p_name}</td>--%>
        <%--                <td><img src="/image/red.jpg" alt=""></td>--%>
        <%--                <td><p>${size}</p></td>--%>
        <%--                <td><input type="number" min="0" value="1"></td>--%>
        <%--                <td><p>${price}<sup>đ</sup></p></td>--%>
        <%--                <td>--%>
        <%--                    <span>X</span>--%>
        <%--                </td>--%>
        <%--            </tr>`--%>
        <%--}--%>
        <%--document.getElementById("displayElement").innerHTML = data;--%>
        <%--localStorage.setItem('products',JSON.stringify(products));--%>
    }
    function mapSize(sizeId){
        if(sizeId ==1){
            return "S";
        }
        if(sizeId ==2){
            return "M";
        }
        if(sizeId ==3){
            return "L";
        }
        if(sizeId ==4){
            return "XL";
        }
        if(sizeId ==5){
            return "XXl";
        }
    }

</script>
</html>
