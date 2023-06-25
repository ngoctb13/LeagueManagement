<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Soccer &mdash; Website by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">

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
        <link rel="stylesheet" href="css/style1.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="css/team.css">



    </head>

    <body>

        <div class="site-wrap">

            <div class="site-mobile-menu site-navbar-target">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div>


            <jsp:include page="header.jsp"></jsp:include>


                <div class="hero overlay" style="background-image: url('images/bg_3.jpg');">
                    <div class="container main_product">
                        <div class="img1 col-md-5">
                            <img src="./images/bg_2.jpg" alt="">
                        </div>
                        <div class="info col-md-5" >  
                            <h2>${gotTeam.team_name}</h2>
                        <form action="">
                            <table class="table">
                                <tr>
                                    <th><i class="fa-solid fa-user"></i></th>
                                    <td> Người liên hệ :</td>
                                    <td>${gotCoach.full_name}</td>
                                </tr>
                                <tr>
                                    <th scope="row"><i class="fa-solid fa-phone"></i></th>
                                    <td> Số điện thoại :</td>
                                    <td>${gotTeam.phone_number}</td>
                                </tr>
                                <tr>
                                    <th scope="row"><i class="fa-solid fa-envelope"></i></th>
                                    <td>Email :</td>
                                    <td> ${gotTeam.email}</td>
                                </tr>
                                <tr>
                                    <th scope="row"><i class="fa-solid fa-people-group"></i></th>
                                    <td >Thành viên :</td>
                                    <td> 20 Người</td>
                                </tr>


                            </table>
                        </form>
                    </div>

                    
                        <div class="container btn_thamgiadoibong" id = "joinButton" >
                            <form action="joinTeamRequest" method="" >
                            <div class="row">
                                <div  style="z-index: 0;">
                                    <button type="submit" onclick="changeText()">Tham gia đội</button>
                                </div>
                            </div>
                                </form>
                        </div>
                    


                </div>

            </div>  


            <div class="site-section">
                <div class="container">
                    <div class="row">
                        <div class="col-6 title-section">
                            <h2 class="heading">Star Players / Videos</h2>
                        </div>
                        <div class="col-6 text-right">
                            <div class="custom-nav">
                                <a href="#" class="js-custom-prev-v2"><span class="icon-keyboard_arrow_left"></span></a>
                                <span></span>
                                <a href="#" class="js-custom-next-v2"><span class="icon-keyboard_arrow_right"></span></a>
                            </div>
                        </div>
                    </div>


                    <div class="owl-4-slider owl-carousel">
                        <div class="item">
                            <div class="video-media">
                                <img src="images/img_1.jpg" alt="Image" class="img-fluid">
                                <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
                                    <span class="icon mr-3">
                                        <span class="icon-play"></span>
                                    </span>
                                    <div class="caption">
                                        <span class="meta">#10 / Forward</span>
                                        <h3 class="m-0">Phillip Hobbs</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="video-media">
                                <img src="images/img_2.jpg" alt="Image" class="img-fluid">
                                <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
                                    <span class="icon mr-3">
                                        <span class="icon-play"></span>
                                    </span>
                                    <div class="caption">
                                        <span class="meta">#7 / Forward</span>
                                        <h3 class="m-0">Garry Norris</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="video-media">
                                <img src="images/img_3.jpg" alt="Image" class="img-fluid">
                                <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
                                    <span class="icon mr-3">
                                        <span class="icon-play"></span>
                                    </span>
                                    <div class="caption">
                                        <span class="meta">#4 / Forward</span>
                                        <h3 class="m-0">Romolu Harper</h3>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <div class="item">
                            <div class="video-media">
                                <img src="images/img_1.jpg" alt="Image" class="img-fluid">
                                <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
                                    <span class="icon mr-3">
                                        <span class="icon-play"></span>
                                    </span>
                                    <div class="caption">
                                        <span class="meta">#4 / Forward</span>
                                        <h3 class="m-0">Phillip Hobbs</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="video-media">
                                <img src="images/img_2.jpg" alt="Image" class="img-fluid">
                                <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
                                    <span class="icon mr-3">
                                        <span class="icon-play"></span>
                                    </span>
                                    <div class="caption">
                                        <span class="meta">#1 / GoalKeeper</span>
                                        <h3 class="m-0">Garry Norris</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="video-media">
                                <img src="images/img_3.jpg" alt="Image" class="img-fluid">
                                <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
                                    <span class="icon mr-3">
                                        <span class="icon-play"></span>
                                    </span>
                                    <div class="caption">
                                        <span class="meta">#8 / Forward</span>
                                        <h3 class="m-0">Romolu Harper</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>



            <footer class="footer-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="widget mb-3">
                                <h3>News</h3>
                                <ul class="list-unstyled links">
                                    <li><a href="#">All</a></li>
                                    <li><a href="#">Club News</a></li>
                                    <li><a href="#">Media Center</a></li>
                                    <li><a href="#">Video</a></li>
                                    <li><a href="#">RSS</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="widget mb-3">
                                <h3>Tickets</h3>
                                <ul class="list-unstyled links">
                                    <li><a href="#">Online Ticket</a></li>
                                    <li><a href="#">Payment and Prices</a></li>
                                    <li><a href="#">Contact &amp; Booking</a></li>
                                    <li><a href="#">Tickets</a></li>
                                    <li><a href="#">Coupon</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="widget mb-3">
                                <h3>Matches</h3>
                                <ul class="list-unstyled links">
                                    <li><a href="#">Standings</a></li>
                                    <li><a href="#">World Cup</a></li>
                                    <li><a href="#">La Lega</a></li>
                                    <li><a href="#">Hyper Cup</a></li>
                                    <li><a href="#">World League</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="widget mb-3">
                                <h3>Social</h3>
                                <ul class="list-unstyled links">
                                    <li><a href="#">Twitter</a></li>
                                    <li><a href="#">Facebook</a></li>
                                    <li><a href="#">Instagram</a></li>
                                    <li><a href="#">Youtube</a></li>
                                </ul>
                            </div>
                        </div>

                    </div>

                    <div class="row text-center">
                        <div class="col-md-12">
                            <div class=" pt-5">
                                <p>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;
                                    <script>
                                        document.write(new Date().getFullYear());
                                    </script> All rights reserved | This template is made with <i class="icon-heart"
                                                                                                  aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </p>
                            </div>
                        </div>

                    </div>
                </div>
            </footer>



        </div>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>


        <script src="js/main.js"></script>
        <script>
                                        function changeText() {
                                            var button = document.getElementById("joinButton");
                                            button.innerHTML = "Đã gửi yêu cầu";
                                            button.disabled = true; // (Optional) Disable the button after clicking
                                        }
        </script>

    </body>

</html>