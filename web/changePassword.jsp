<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="vi">

    <head>
        <title>Soccer &mdash; Website by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">

        <link rel="stylesheet" href="css/jquery.fancybox.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">

        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/style.css">



    </head>

    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="hero overlay" style="background-image: url('images/bg_3.jpg');">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-9 mx-auto text-center">
                            <h1 class="text-white">Change your password</h1>
                        </div>
                    </div>
                </div>
            </div>

            <div class="site-section">
                <p style="font-size: medium; text-align:center; color: green;">${feedback_status}</p>
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <c:if test="${message.equals('SUCCESS')}">
                            <div class="alert alert-info alert-dismissable">
                                <a class="panel-close close" data-dismiss="alert">×</a> 
                                <i class="fa fa-coffee"></i>
                                YOU HAVE CHANGED PASSWORD <strong>SUCCESSFULLY!</strong>.
                            </div>
                        </c:if>
                        <c:if test="${message.equals('FAILED')}">
                            <div class="alert alert-info alert-dismissable">
                                <a class="panel-close close" data-dismiss="alert">×</a> 
                                <i class="fa fa-coffee"></i>
                                YOUR CURRENT PASSWORD IS <strong>NOT CORRECT!</strong>.
                            </div>
                        </c:if>
                        <form action="changePassword" onsubmit="">
                            <div style="text-align:center">
                                <span id='message'></span>
                            </div>

                            <div class="form-group">
                                <label for="team_name" class="form-label">Current Password</label>
                                <input type="password" name="curent_password" class="form-control" placeholder="Enter your current password" required>
                            </div>
                            <div class="form-group">
                                <label for="team_name" class="form-label">New Password</label>
                                <input id="new_password" type="password" name="new_password" class="form-control" placeholder="Enter your new password" required onkeyup='check();'>
                            </div>
                            <div class="form-group">
                                <label for="team_name" class="form-label">Confirm Password</label>
                                <input id="confirm_password" type="password" name="confirm_password" class="form-control" placeholder="Confirm your password" required onkeyup='check();'>
                            </div> 
                            <div class="form-group">
                                <input type="submit" onclick="return check();" class="btn btn-primary py-3 px-5">
                            </div>
                        </form>  
                    </div>
                    <div class="col-lg-4 ml-auto">

                        <ul class="list-unstyled">
                            <li class="mb-2">
                                <strong class="text-white d-block">Address</strong>
                                Đại học FPT Hà Nội. <br> Khu Công nghệ cao Hòa Lạc, Km29 Đại lộ Thăng Long, huyện Thạch Thất, Hà Nội.
                            </li>
                            <li class="mb-2">
                                <strong class="text-white d-block">Email</strong>
                                <a href="#">daihocfpt@fpt.edu.vn</a>
                            </li>
                            <li class="mb-2">
                                <strong class="text-white d-block">
                                    Phone
                                </strong>
                                <a href="#">024 7300 5588</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <jsp:include page="footer.jsp"></jsp:include>
        <!-- .site-wrap -->
        <script type="text/javascript">
            var check = function () {
                if (document.getElementById('new_password').value ===
                        document.getElementById('confirm_password').value) {
                    document.getElementById('message').style.color = 'green';
                    document.getElementById('message').innerHTML = 'Matching';
                    return true;
                } else {
                    document.getElementById('message').style.color = 'red';
                    document.getElementById('message').innerHTML = 'Not Matching';
                    return false;
                }
            };
        </script>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/bootstrap-datepicker.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.mb.YTPlayer.min.js"></script>


        <script src="js/main.js"></script>

    </body>

</html>