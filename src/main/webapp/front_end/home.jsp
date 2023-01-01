<%--
  Created by IntelliJ IDEA.
  User: MAI
  Date: 1/1/2023
  Time: 10:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../font/fontawesome-free-6.2.1-web/fontawesome-free-6.2.1-web/css/fontawesome.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="../font/fontawesome-free-6.2.1-web/fontawesome-free-6.2.1-web/scss/_icons.scss">
  <link rel="stylesheet" href="home.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/js/all.min.js" />


</head>
<body>
<header>
  <div class="logo">
    <img src="/image/logook.jpg" width="120" height="80">
  </div>
  <div class="menu">
    <li><a href="category.html">NỮ</a>
      <ul class="sub-menu">
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
  <div class="others">
    <li><input placeholder="tìm kiếm" type="text"><i class="fa-solid fa-magnifying-glass"></i></li>
    <li><i class="fa-solid fa-user"></i></li>
    <li><i class="fa-solid fa-cart-shopping"></i></li>
    <li></li>

  </div>
</header>
<section id="Slider">
  <div class="aspect-radio">
    <img src="/image/slide1.jpg">
    <img src="/image/slide2.jpg">
    <img src="/image/slide3.jpg">
    <img src="/image/slide4.jpg">

  </div>
  <div class="dot-container">
    <div class="dot active"></div>
    <div class="dot"></div>
    <div class="dot"></div>
    <div class="dot"></div>

  </div>
</section>

<!--app-connection-->

<section class="app-container">
  <p>Tải ứng dụng</p>
  <div class="app-google">
    <img  src="/image/app1.webp" alt="">
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
  const header = document.querySelector("header");
  window.addEventListener("scroll",function (){
    x = window.pageYOffset;
    if(x > 0){
      header.classList.add("sticky")
    }else {
      header.classList.remove("sticky")
    }
  })


  const imgPosition = document.querySelectorAll(".aspect-radio img");
  const imgContainer = document.querySelector(".aspect-radio");
  const dotItem = document.querySelectorAll(".dot");
  let imgNumber = imgPosition.length;
  let index = 0;

  imgPosition.forEach(function (image,index){
    image.style.left = index*100 + "%";
    dotItem[index].addEventListener("click",function (){
      slider(index);
    })

  });
  function imgSlide(){
    index++;
    if(index >= imgNumber){
      index = 0;
    }
    slider(index);
  }
  function slider(index){
    imgContainer.style.left = "-" + index*100 + "%";
    const dotActive = document.querySelector('.active');
    dotActive.classList.remove("active");
    dotItem[index].classList.add("active");
  }
  setInterval(imgSlide,3000);
</script>
</html>