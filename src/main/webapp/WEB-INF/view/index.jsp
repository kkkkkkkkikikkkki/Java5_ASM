<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html>
<html>

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="bootstrap-5.3.2-dist/css/bootstrap.min.css">
 <style>  
 	.container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin-bottom: 20px;
}
.product {
    text-align: center;
    padding: 20px;
    box-sizing: border-box;
    width: 23%;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 15px;
    background-color: #ffffff;
    transition: transform 0.2s;
}
.product img {
    max-width: 100%;
    height: auto;
}
.product:hover {
    transform: scale(1.05);
}
.product a {
    text-decoration: none;
    color: black;
    font-weight: bold;
    display: block;
    margin-top: 10px;
    margin-bottom: 10px;
}
.actual-price {
    font-weight: bold;
    color: blue;
    font-size: 20px;
    margin-right: 10px;
}
.old-price {
    text-decoration: line-through;
    color: gray;
    font-size: 18px;
}
.btnmac-container {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 0px;
}
.btnmac {
    text-align: center;
    padding: 15px;
    border: 1px solid #ddd;
    border-radius: 8px;
    background-color: #f9f9f9;
    width: fit-content;
    transition: background-color 0.2s;
}
.btnmac:hover {
    background-color: #0000EE;
}

.btnmac a:hover{
    color: #ffffff;
}

.btnmac a {
    text-decoration: none;
    color: #0000EE;
    font-weight: bold;
}
h2 {
    text-align: center;
    font-weight: bold;
    margin-top: 20px;
}

.icon-link img {
    filter: invert(100%);
}

body {
    padding-top: 0px; /* Adjust this value based on the height of your navbar */
}
.navbar .icon-link img {
    margin-left: 40px;
    margin-top: 8px;
}

.search{
    position: relative;
    box-shadow: 0 0 40px rgba(51, 51, 51, .1);
      
    }

    .search input{

     height: 60px;
     text-indent: 25px;
     border: 2px solid #d6d4d4;


    }


    .search input:focus{

     box-shadow: none;
     border: 2px solid blue;


    }

    .search .fa-search{

     position: absolute;
     top: 20px;
     left: 16px;

    }

    .search button{

     position: absolute;
     top: 5px;
     right: 5px;
     height: 50px;
     width: 110px;
     background: blue;

    }
    footer{
     width: 100%;
     height: 500px;
     background-color: rgb(30, 30, 30);
    }
    .chu a{
     text-decoration: none;
     color: rgb(146, 146, 146);
    }
    .chu a:hover{
     text-decoration: underline;
    }
    li{
        display: inline-block;
        position: relative;
        color: #040404;
        font-family: sans-serif;
        /* font-size: 10px; */
        cursor: pointer;
        transition: 0.4s all ease;
    }
    
    li:hover{
        color: #4e3ee0;
        transition: 0.4s all ease;
    }
    
    li::after{
        content: '';
        position: absolute;
        width: 100%;
        transform: scaleX(0);
        height: 2px;
        bottom: -5px;
        left: 0;
        background-color: #0051ff;
        transform-origin: bottom right;
        transition: transform 0.5s ease-out;
    }
    
    li:hover::after{
        transform: scaleX(1);
        transform-origin: bottom left;
    }
 
 </style>
    
</head>
<body>
    <div class="container-fluid" style="background-color: #F5F5F5;">
        <nav class="navbar navbar-expand-lg fixed-top" style="background-color: #515154;">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href=""><img src="/image/0012445_Logo_ShopDunk.png" alt="" style="width: 150px;"></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#" style="color: #DDDDDD; margin-left: 60px;">iPhone</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#" style="color: #DDDDDD; margin-left: 40px;">iPad</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#" style="color: #DDDDDD; margin-left: 40px;">Mac</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#" style="color: #DDDDDD; margin-left: 40px;">Watch</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#" style="color: #DDDDDD; margin-left: 40px;">Máy cũ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#" style="color: #DDDDDD; margin-left: 40px;">Phụ kiện</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: #DDDDDD; margin-left: 40px;">
                                Dịch vụ
                            </a>
                            <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDropdownMenuLink" style="border-radius: 15px;">
                                <li><a class="dropdown-item" href="#">Bảo Hành Ủy Quyền Apple</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Trả Góp</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Thu Cũ Đổi Mới</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">WorkShop</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">MBTI</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Sim Thẻ</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Apple Care</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Bán Hàng Doanh Nghiệp</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#" style="color: #DDDDDD; margin-left: 40px;">Tin tức</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#" style="color: #DDDDDD; margin-left: 40px;">Khuyến mãi</a>
                        </li>
                        <li>
                            <a href="#" class="icon-link">
                                <img src="/image/8666693_search_icon.svg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="shoppingCart.html" class="icon-link">
                                <img src="/image/8666616_shopping_cart_icon.svg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#" class="icon-link">
                                <img src="/image/8666609_user_icon.svg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/image/Flag_of_Vietnam.svg.webp" alt="" style="width: 30px; margin-top: 10px; margin-left: 20px;">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/image/Flag_of_the_United_States.svg.png" alt="" style="width: 40px; margin-left: 10px; margin-top: 10px;">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="carousel">
            <div class="row">
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="image/15prmpc.png" class="d-block w-100" alt="">
                        </div>
                        <div class="carousel-item">
                            <img src="image/air5pc.png" class="d-block w-100" alt="">
                        </div>
                        <div class="carousel-item">
                            <img src="image/appro2pc.png" class="d-block w-100" alt="">
                        </div>
                        <div class="carousel-item">
                            <img src="image/2.jpg" class="d-block w-100" alt="">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>

 

        <h2 style="text-align: center; font-weight: bold; margin-top: 70px;">Tất cả sản phẩm</h2>

        			  <div class="row">
        <div class="container">
            <c:forEach var="product" items="${products}">
                <div class="product">
                    <img src="${product.image}" alt="${product.name}">
                    <a href="#">${product.name}</a>
                    <span class="price actual-price">${product.price}</span>
                    <input type="submit" value="Add">
                </div>
            </c:forEach>
        </div>
    

            <div class="pannel" style=" display: flex;
            justify-content: center;
            align-items: center;">
            <a href="">
                <img src="https://shopdunk.com/images/uploaded/Trang%20ch%E1%BB%A7/2.jpeg" alt="">
            </a>
        </div>

        <div class="row mt-4">
            <div class="col-4">
                <div class="sp1" style="text-align: center;">
                    <img src="https://shopdunk.com/images/thumbs/0026376_Tintuc_1600.png" width="100%" alt="" style="border-radius: 10px;">
                    <div style="margin-top: 20px;">
                        <a href="" style="text-decoration: none; color: black; font-weight: bold;">HÈ RỰC CHÁY - SALE CHẠM ĐÁY</a> <br>
                        <span class="price actual-price" style=" margin-right: 35px;">01/05/2024</span> 
                    </div>
                   
                </div>
            </div>
            <div class="col-4">
                <div class="sp1" style="text-align: center;">
                    <img src="https://shopdunk.com/images/thumbs/0026376_Tintuc_1600.png" width="100%" alt="" style="border-radius: 10px;">
                    <div style="margin-top: 20px;">
                        <a href="" style="text-decoration: none; color: black; font-weight: bold;">HÈ RỰC CHÁY - SALE CHẠM ĐÁY</a> <br>
                        <span class="price actual-price" style=" margin-right: 35px;">01/05/2024</span> 
                    </div>
                   
                </div>
            </div>
            <div class="col-4">
                <div class="sp1" style="text-align: center;">
                    <img src="https://shopdunk.com/images/thumbs/0026376_Tintuc_1600.png" width="100%" alt="" style="border-radius: 10px;">
                    <div style="margin-top: 20px;">
                        <a href="" style="text-decoration: none; color: black; font-weight: bold;">HÈ RỰC CHÁY - SALE CHẠM ĐÁY</a> <br>
                        <span class="price actual-price" style=" margin-right: 35px;">01/05/2024</span> 
                    </div>
                   
                </div>
            </div>
            <div class="btnmac">
                <a href="" style="text-decoration: none;">Xem tất cả tin tức ></a>
            </div>
            </div> 

            <div class="hinh">
                <h3
                style="text-align: center;
                padding-top: 20px;">Đăng ký nhận thông tin từ shopdunk</h3>
                <p style="text-align: center;">Thông tin sản phẩm mới nhất và chương trình khuyến mãi</p>
                <div class="row height d-flex justify-content-center align-items-center">

                    <div class="col-md-8">

                      <div class="search">
                        <i class="fa fa-search"></i>
                        <input type="text" class="form-control" placeholder="">
                        <button class="btn btn-primary">Search</button>
                      </div>
                      
                    </div>
                    
                  </div>
            </div>


        <div class="pannel" style=" display: flex;
            justify-content: center;
            align-items: center; margin-top: 100px;">
            <a href="">
                <img src="https://shopdunk.com/images/uploaded/Trang%20ch%E1%BB%A7/2.jpeg" alt="">
            </a>
        </div>

        <div class="row mt-4">
            <div class="col-4">
                <div class="sp1" style="text-align: center;">
                    <img src="https://shopdunk.com/images/thumbs/0026376_Tintuc_1600.png" width="100%" alt=""
                        style="border-radius: 10px;">
                    <div style="margin-top: 20px;">
                        <a href="" style="text-decoration: none; color: black; font-weight: bold;">HÈ RỰC CHÁY - SALE
                            CHẠM ĐÁY</a> <br>
                        <span class="price actual-price" style=" margin-right: 35px;">01/05/2024</span>
                    </div>

                </div>
            </div>
            <div class="col-4">
                <div class="sp1" style="text-align: center;">
                    <img src="https://shopdunk.com/images/thumbs/0026376_Tintuc_1600.png" width="100%" alt=""
                        style="border-radius: 10px;">
                    <div style="margin-top: 20px;">
                        <a href="" style="text-decoration: none; color: black; font-weight: bold;">HÈ RỰC CHÁY - SALE
                            CHẠM ĐÁY</a> <br>
                        <span class="price actual-price" style=" margin-right: 35px;">01/05/2024</span>
                    </div>

                </div>
            </div>
            <div class="col-4">
                <div class="sp1" style="text-align: center;">
                    <img src="https://shopdunk.com/images/thumbs/0026376_Tintuc_1600.png" width="100%" alt=""
                        style="border-radius: 10px;">
                    <div style="margin-top: 20px;">
                        <a href="" style="text-decoration: none; color: black; font-weight: bold;">HÈ RỰC CHÁY - SALE
                            CHẠM ĐÁY</a> <br>
                        <span class="price actual-price" style=" margin-right: 35px;">01/05/2024</span>
                    </div>

                </div>
            </div>
            <div class="btnmac-container text-center" style="margin-top: 100px;">
                <div class="btnmac">
                    <a href="#">Xem tất cả tin tức &gt;</a>
                </div>
            </div>
        </div>

        <div class="hinh">
            <h3 style="text-align: center;
                padding-top: 20px;">Đăng ký nhận thông tin từ shopdunk</h3>
            <p style="text-align: center;">Thông tin sản phẩm mới nhất và chương trình khuyến mãi</p>
            <div class="row height d-flex justify-content-center align-items-center">

                <div class="col-md-8">

                    <div class="search">
                        <i class="fa fa-search"></i>
                        <input type="text" class="form-control" placeholder="" style="caret-color: #770000;">
                        <button class="btn btn-primary">Search</button>
                    </div>

                </div>

            </div>
        </div>
        <footer>
            <div class="row" style="margin-top: 100px;">
                <div class="col-3">
                    <img src="/image/0012445_Logo_ShopDunk.png" width="184px" height="48px"
                        alt="" style="margin-top: 70px; margin-left: 50px;">
                    <p style="color: white; margin-left: 50px; margin-top: 20px;">Năm 2020, ShopDunk trở thành đại lý ủy
                        quyền của Apple. Chúng tôi phát triển chuỗi cửa hàng tiêu chuẩn và Apple Mono Store nhằm mang
                        đến trải nghiệm tốt nhất về sản phẩm và dịch vụ của Apple cho người dùng Việt Nam.</p>
                </div>
                <div class="col-2">
                    <p style="margin-top: 70px; text-align: center; color: white;">Thông tin</p>
                    <div class="chu" style="display: flex;
                flex-direction: column;
                text-align: center;">
                        <a href="">Tin tức</a>
                        <a href="">Giới thiệu</a>
                        <a href="">Check IMEI</a>
                        <a href="">Phương thức thanh toán</a>
                        <a href="">Thuê điểm bán lẻ</a>
                        <a href="">Bảo hành và sửa chữa</a>
                        <a href="">Tuyển dụng</a>
                        <a href="">Đánh giá chất lượng, khiếu nại</a>
                        <a href="">Tra cứu hóa đơn điện tử</a>
                    </div>
                </div>
                <div class="col-2" style="margin-left: 100px;">
                    <p style="margin-top: 70px; text-align: center; color: white;">Thông tin</p>
                    <div class="chu" style="display: flex;
                flex-direction: column;
                text-align: center;">
                        <a href="">Tin tức</a>
                        <a href="">Giới thiệu</a>
                        <a href="">Check IMEI</a>
                        <a href="">Phương thức thanh toán</a>
                        <a href="">Thuê điểm bán lẻ</a>
                        <a href="">Bảo hành và sửa chữa</a>
                        <a href="">Tuyển dụng</a>
                        <a href="">Đánh giá chất lượng, khiếu nại</a>
                        <a href="">Tra cứu hóa đơn điện tử</a>
                    </div>
                </div>
                <div class="col-2" style="margin-left: 100px;">
                    <p style="margin-top: 70px; text-align: center; color: white;">Thông tin</p>
                    <div class="chu" style="display: flex;
                flex-direction: column;
                text-align: center;">
                        <a href="">Tin tức</a>
                        <a href="">Giới thiệu</a>
                        <a href="">Check IMEI</a>
                        <a href="">Phương thức thanh toán</a>
                        <a href="">Thuê điểm bán lẻ</a>
                        <a href="">Bảo hành và sửa chữa</a>
                        <a href="">Tuyển dụng</a>
                        <a href="">Đánh giá chất lượng, khiếu nại</a>
                        <a href="">Tra cứu hóa đơn điện tử</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    </div>



    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
    <script src="node_modules/angular/angular.min.js"></script>
    <script src="bootstrap-5.3.2-dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/c22bed0de0.js" crossorigin="anonymous"></script>
    <script src="node_modules/angular/angular.route.min.js"></script>
    <script src="js/app.js"></script>
</body>

</html>
