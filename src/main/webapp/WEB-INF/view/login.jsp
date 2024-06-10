<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="bootstrap-5.3.2-dist/css/bootstrap.min.css">
    <style>
        html, body {
            height: 100%;
        }
        .gradient-custom {
            background: #6a11cb;
            background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));
            background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));
            min-height: 100%;
        }
        .card-custom {
            max-width: 400px; /* Giảm chiều rộng của form */
            padding: 20px; /* Giảm khoảng cách đệm */
            border-radius: 1rem;
        }
        .form-control-custom {
            padding: 10px; /* Giảm chiều cao của input */
        }
        .btn-custom {
            padding: 10px 20px; /* Giảm chiều cao của button */
        }
    </style>
</head>
<body>
<form action="<c:url value='/login' />" method="post">
    <!-- Email input -->
    <section class="vh-100 gradient-custom">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card bg-dark text-white card-custom">
                        <div class="card-body text-center">
                            <div class="mb-4">
                                <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                                <p class="text-white-50 mb-4">Please enter your login and password!</p>
                                <div class="form-outline form-white mb-3">
                                    <label class="form-label" for="username">Username</label>
                                    <input type="text" id="username" name="username" class="form-control form-control-lg form-control-custom" required />
                                </div>
                                <div class="form-outline form-white mb-3">
                                    <label class="form-label" for="password">Password</label>
                                    <input type="password" id="password" name="password" class="form-control form-control-lg form-control-custom" required />
                                </div>
                                <p class="small mb-3"><a class="text-white-50" href="#!">Forgot password?</a></p>
<%--                                <a href="/home/index"><button class="btn btn-outline-light btn-lg px-5 btn-custom" type="submit">Login</button></a>--%>
                                <div class="d-flex justify-content-center mt-3">
                                    <a href="/home/index" class="btn btn-outline-light btn-lg btn-custom" style="border-radius: 10px; padding: 10px 20px;">
                                        Đăng nhập
                                    </a>
                                </div>


                                <div class="d-flex justify-content-center text-center mt-4 pt-1">
                                    <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                                    <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                                    <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
                                </div>
                            </div>
                            <div>
                                <p class="mb-0">Don't have an account? <a href="#!" class="text-white-50 fw-bold">Sign Up</a></p>
                            </div>
                            <c:if test="${not empty error}">
                                <div class="alert alert-danger" role="alert">${error}</div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</form>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/c22bed0de0.js" crossorigin="anonymous"></script>
</body>
</html>
