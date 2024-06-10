<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
    <link rel="stylesheet" href="bootstrap-5.3.2-dist/css/bootstrap.min.css">

    <style>
        @media ( min-width: 1025px) {
            .h-custom {
                height: 100vh !important;
            }
        }

        .number-input input[type="number"] {
            -webkit-appearance: textfield;
            -moz-appearance: textfield;
            appearance: textfield;
        }

        .number-input input[type=number]::-webkit-inner-spin-button,
        .number-input input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
        }

        .number-input button {
            -webkit-appearance: none;
            background-color: transparent;
            border: none;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            margin: 0;
            position: relative;
        }

        .number-input button:before, .number-input button:after {
            display: inline-block;
            position: absolute;
            content: '';
            height: 2px;
            transform: translate(-50%, -50%);
        }

        .number-input button.plus:after {
            transform: translate(-50%, -50%) rotate(90deg);
        }

        .number-input input[type=number] {
            text-align: center;
        }

        .number-input.number-input {
            border: 1px solid #ced4da;
            width: 10rem;
            border-radius: .25rem;
        }

        .number-input.number-input button {
            width: 2.6rem;
            height: .7rem;
        }

        .number-input.number-input button.minus {
            padding-left: 10px;
        }

        .number-input.number-input button:before, .number-input.number-input button:after {
            width: .7rem;
            background-color: #495057;
        }

        .number-input.number-input input[type=number] {
            max-width: 4rem;
            padding: .5rem;
            border: 1px solid #ced4da;
            border-width: 0 1px;
            font-size: 1rem;
            height: 2rem;
            color: #495057;
        }

        /*@media not all and (min-resolution:.001dpcm) { */
        /*	supports (-webkit-appearance: none) and (stroke-color:transparent) { .number-input*/
        /*		.def-number-input.safari_only button:before, .number-input.def-number-input.safari_onlybutton*/
        /*		:after {*/
        /*margin-top : -.3rem;*/

        /*}*/
        /*}*/

        /*}*/
        .shopping-cart .def-number-input.number-input {
            border: none;
        }

        .shopping-cart .def-number-input.number-input input[type=number] {
            max-width: 2rem;
            border: none;
        }

        .shopping-cart .def-number-input.number-input input[type=number].black-text,
        .shopping-cart .def-number-input.number-input input.btn.btn-link[type=number],
        .shopping-cart .def-number-input.number-input input.md-toast-close-button[type=number]:hover,
        .shopping-cart .def-number-input.number-input input.md-toast-close-button[type=number]:focus {
            color: #212529 !important;
        }

        .shopping-cart .def-number-input.number-input button {
            width: 1rem;
        }

        .shopping-cart .def-number-input.number-input button:before,
        .shopping-cart .def-number-input.number-input button:after {
            width: .5rem;
        }

        .shopping-cart .def-number-input.number-input button.minus:before,
        .shopping-cart .def-number-input.number-input button.minus:after {
            background-color: #9e9e9e;
        }

        .shopping-cart .def-number-input.number-input button.plus:before,
        .shopping-cart .def-number-input.number-input button.plus:after {
            background-color: #4285f4;
        }
    </style>
</head>
<body>
<section class="h-100 h-custom" style="background-color: #eee;">
    <div class="container h-100 py-5">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col">
                <div class="card shopping-cart" style="border-radius: 15px;">
                    <div class="card-body text-black">

                        <div class="row">
                            <div class="col-lg-6 px-5 py-4">

                                <h3 class="mb-5 pt-2 text-center fw-bold text-uppercase">Sản Phẩm Của Bạn</h3>

                                    <div class="d-flex align-items-center mb-5">
                                        <div class="flex-shrink-0">
                                            <img src="${product.image}"
                                                 class="img-fluid" style="width: 150px;" alt="${product.name}">
                                        </div>
                                        <div class="flex-grow-1 ms-3">
                                            <a href="#!" class="float-end text-black"><i class="fas fa-times"></i></a>
                                            <h5 class="text-primary">${product.name}</h5>
                                            <div class="d-flex align-items-center">
                                                <p class="fw-bold mb-0 me-5 pe-3">$<span class="product-price">${product.price}</span></p>
                                                <div class="def-number-input number-input safari_only">
                                                    <button data-mdb-button-init
                                                            onclick="updateTotalPrice()"
                                                            class="minus"></button>
                                                    <input class="quantity fw-bold text-black" min="0" name="quantity"
                                                           value="1" type="number" oninput="updateTotalPrice()">
                                                    <button data-mdb-button-init
                                                            onclick="updateTotalPrice()"
                                                            class="plus"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>




                                <hr class="mb-4" style="height: 2px; background-color: #1266f1; opacity: 1;">


                                <div class="d-flex justify-content-between p-2 mb-2" style="background-color: #e1f5fe;">
                                    <h5 class="fw-bold mb-0">Tổng Tiền</h5>
                                    <h5 class="fw-bold mb-0">$<span id="total-price">${product.price}</span></h5>
                                </div>

                            </div>
                            <div class="col-lg-6 px-5 py-4">

                                <h3 class="mb-5 pt-2 text-center fw-bold text-uppercase">Thông tin</h3>

                                <form class="mb-5">


                                    <div data-mdb-input-init class="form-outline mb-5">
                                        <label class="form-label" for="typeName">Họ và tên</label>
                                        <input type="text" id="typeName" class="form-control form-control-lg" siez="17"
                                               value=""/>
                                    </div>

                                    <div data-mdb-input-init class="form-outline mb-5">
                                        <label class="form-label" for="typeText">Số Điện Thoại</label>
                                        <input type="text" id="typeText" class="form-control form-control-lg" siez="17"
                                               value="" minlength="19" maxlength="19"/>
                                    </div>

                                    <div data-mdb-input-init class="form-outline mb-5">
                                        <label class="form-label" for="typeName">Địa Chỉ </label>
                                        <input type="text" id="typeAdrres" class="form-control form-control-lg"
                                               siez="17"
                                               value=""/>
                                    </div>

                                    <%--                  <p class="mb-5">Bản thân nỗi đau phải được theo đuổi, sự thèm muốn của <a--%>
                                    <%--                      href="#!">người mù bởi người khôn ngoan </a>.</p>--%>

                                    <button type="button" data-mdb-button-init data-mdb-ripple-init
                                            class="btn btn-primary btn-block btn-lg">Mua Ngay
                                    </button>

                                    <h5 class="fw-bold mb-5" style="position: absolute; bottom: 0;">
                                        <a href="#!"><i class="fas fa-angle-left me-2"></i>Quay Lại Mua Sắm</a>
                                    </h5>

                                </form>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
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

<script>
    function updateTotalPrice() {
        const quantityInput = document.querySelector('.quantity');
        const priceElement = document.querySelector('.product-price');
        const totalPriceElement = document.getElementById('total-price');

        const quantity = parseInt(quantityInput.value);
        const price = parseFloat(priceElement.textContent);

        const totalPrice = quantity * price;
        totalPriceElement.textContent = totalPrice.toFixed(2);
    }

    document.querySelectorAll('.number-input button').forEach(button => {
        button.addEventListener('click', function() {
            const quantityInput = this.parentNode.querySelector('.quantity');
            if (this.classList.contains('minus')) {
                quantityInput.stepDown();
            } else {
                quantityInput.stepUp();
            }
            updateTotalPrice();
        });
    });
</script>
</body>
</html>
