<%-- 
    Document   : teamList
    Created on : Jun 20, 2023, 1:04:22 AM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="css/aos.css">
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/team.css">



    </head>

    <body>


        <div class="hero overlay" style="background-image: url('images/bg_3.jpg'); width: 100%; height: 1102.5px;"  >


            <header class="site-navbar py-4" role="banner">

                <div class="container">
                    <div class="d-flex align-items-center">
                        <div class="site-logo">
                            <a href="index.html">
                                <img src="images/logo.png" alt="Logo">
                            </a>
                        </div>
                        <div class="ml-auto">
                            <nav class="site-navigation position-relative text-right" role="navigation">
                                <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                                    <li ><a href="home.jsp" class="nav-link">HOME</a></li>
                                    <li><a href="tournament.jsp" class="nav-link">TOURNAMENT</a></li>
                                    <li><a href="teamList" class="nav-link">TEAM</a></li>
                                    <li><a href="blog.jsp" class="nav-link">BLOG</a></li>
                                    <li><a href="contact.jsp" class="nav-link">CONTACT</a></li>

                                </ul>
                            </nav> 
                        </div>
                    </div>
                </div>  
                <div class="">
                    <div class="container">
                        <form class="d-flex" role="search" >
                            <input class="form-control me-2" type="search" placeholder="Search team" aria-label="Search" required>
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
                <nav aria-label="..." class="nav_pagination container">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#">Previous</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#main1">1</a></li>
                        <li class="page-item"><a class="page-link" href="#main2">2</a></li>
                        <li class="page-item"><a class="page-link" href="#main3">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
                <div class="main_sanpham">
                    <div id="main1" class="main container">
                        <c:forEach items="${teamList}" var="a">
                    <div class="col-md-3 sanpham">
                        <div class="card mb-3">
                            <a href="teamProfile?team_ID=${a.team_id}"><img class="card-img-top" src="./images/bg_2.jpg" alt="Card image cap"></a>
                            <div class="card-body">
                                <h2 class=""><a href="">${a.team_name}</a></h2>
                                <a href="">Thành viên</a>
                                <div class="flex flex-jus-center">
                                    <div class="flex-item">
                                        <div class="competitor-members__more" style="background-image: url('')">
                                        </div>
                                    </div>
                                    <div class="flex-item">
                                        <div class="competitor-members__more" style="background-image: url('')">
                                        </div>
                                    </div>
                                    <div class="flex-item">
                                        <div class="competitor-members__more" style="background-image: url('')">
                                        </div>
                                    </div>
                                    <div class="flex-item">
                                        <a href="" class="competitor-members__more clickable">
                                            +17
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach> 
                    </div>
                </div>
            </header>
        </div>    


        <div class="container site-section">
            <div class="row">
                <div class="col-6 title-section">
                    <h2 class="heading">Team list</h2>
                </div>
            </div>
            <div class="row">
                
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
        <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.mb.YTPlayer.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
        <script src="./js/1.js"></script>
        <script src="js/main.js"></script>
        <script>
                                        $(document).ready(function () {
                                            $('.main').hide();
                                            $('.main:first').fadeIn();
                                            $('.pagination li').click(function () {
                                                // $('.p')
                                                var id_tab = $(this).children('.page-link').attr('href')
                                                $('.main').hide();
                                                $(id_tab).fadeIn();
                                                return false

                                            })

                                        })

        </script>


    </body>

</html>
