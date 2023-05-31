<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--son dep trai-->
<html lang="vi">
    <head>
        <title>Sign in</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style1.css">

    </head>
    
    <body class="img js-fullheight" style="background-image: url(images/bg_3.jpg);">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <div class="site-logo">
                            <a href="home.jsp">
                                <img src="images/logo.png" alt="Logo">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <h3 class="mb-4 text-center">Have an account?</h3>
                            <p style="font-size: medium; text-align:center; color: green;">${RegistrationSuccess}</p>
                            <p style="font-size: medium; text-align:center; color: red;">${loginError}</p>
                            <p style="font-size: medium; text-align:center; color: ${color};">${status}</p>
                            <p style="font-size: medium; text-align:center; color: ${color};">${delete_request_status}</p>
                            <form action="login" method="POST" class="signin-form">
                                <div class="form-group">
                                    <input type="text" value="${cookie['cEmail'].getValue()}" name="email" class="form-control" placeholder="Email" required>
                                </div>
                                <div class="form-group">
                                    <input id="password-field" value="${cookie['pass'].getValue()}" name="password" type="password" class="form-control" placeholder="Password" required>
                                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary submit px-3">Sign In</button>
                                </div>
                                <div class="form-group d-md-flex">
                                    <div class="w-50">
                                        <label class="checkbox-wrap checkbox-primary">Remember Me
                                            <input id="check" type="checkbox" name="remember" class="check">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                    <div class="w-50 text-md-right">
                                        <a href="forgotPassword.jsp" style="color: #fff">Forgot Password</a>
                                    </div>
                                </div>                             
                            </form>
                            <p class="w-100 text-center">&mdash; Or Create Your Account &mdash;</p>
                            <div class="form-group">
                                <a href="register.jsp" class="form-control btn btn-primary submit px-3" role="button">Sign Up</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="js/jquery1.min.js"></script>
        <script src="js/popper1.js"></script>
        <script src="js/bootstrap1.min.js"></script>
        <script src="js/main1.js"></script>

    </body>
</html>


