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


        <div class="hero overlay" style="background-image: url('images/bg_3.jpg'); width: 100%; height: 1102.5px; background-color: #fff"  >


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
                                    <li><a href="listAllTeam" class="nav-link">TEAM</a></li>
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
