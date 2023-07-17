<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <div class="col-lg-5 mx-auto text-center">
                            <h1 class="text-white">Build Your Team</h1>
                        </div>
                    </div>
                </div>
            </div>

            <div class="site-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <h3 class="text-white">Create Team</h3>
                            <p>Vui lòng nhập thông tin hợp lệ cho các trường được yêu cầu.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8">
                            <form action="teamManagement">
                                <div class="form-group">
                                    <label for="team_name" class="form-label">Team Name</label>
                                    <input type="text" name="team_name" class="form-control" placeholder="Enter your team name" required>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="text" name="email" class="form-control" placeholder="Enter your team email" required>
                                </div>
                                <div class="form-group">
                                    <label for="address" class="form-label">Address</label>
                                    <input type="text" name="address" class="form-control" placeholder="Enter your team address" required>
                                </div>
                                <div class="form-group">
                                    <label for="phone_number" class="form-label">Phone number</label>
                                    <input type="text" name="phone_number" class="form-control" placeholder="Enter your team phone number" required>
                                </div>
                                <div class="form-group">
                                    <label for="description" class="form-label">Description</label>
                                    <input type="text" name="description" class="form-control" placeholder="Enter your team description" required>
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-primary py-3 px-5">
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