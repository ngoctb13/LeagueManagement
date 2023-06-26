<%@page import="model.User"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="vi">

    <head>
        <title>Soccer</title>
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

        <link rel="stylesheet" href="css/style.css"
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


            <header class="site-navbar py-4" role="banner">

                <div class="container">
                    <div class="d-flex align-items-center">
                        <div class="site-log o">
                            <a href="home.jsp">
                                <img src="images/logo.png" alt="Logo">
                            </a>
                        </div>
                        <div class="ml-auto">
                            <nav class="site-navigation position-relative text-right" role="navigation">
                                <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                                    <c:if test="${sessionScope.user != null}">                                       
                                        <li class="active"><a href="home.jsp" class="nav-link">Home</a></li>
                                        <li><a href="#" class="nav-link">Tournament</a></li>
                                        <li><a href="listAllTeam" class="nav-link">Team</a></li>
                                        <li><a href="blog.jsp" class="nav-link">Blog</a></li>
                                        <li><a href="contact.jsp" class="nav-link">Contact</a></li>                           
                                        <a href="#" data-toggle="dropdown" role="button" class="nav-link dropdown-toggle">
                                            ${sessionScope.user.full_name}
                                        </a>
                                        <c:if test="${sessionScope.user.role == 2}">
                                            <ul role="menu" class="dropdown-menu py-3 px-4 mr-3">                                                
                                                <li><a href="profile.jsp"><span class="edu-icon edu-user-rounded author-log-ic"></span>My Profile</a>
                                                </li>
                                                <li><a href="#"><span class="edu-icon edu-user-rounded author-log-ic"></span>Manage Your Tour</a>
                                                </li>
                                                <li><a href="teamList"><span class="edu-icon edu-user-rounded author-log-ic"></span>Manage Your Team</a>
                                                </li>
                                                <li><a href="invitationList"><span class="edu-icon edu-user-rounded author-log-ic"></span>Invitation</a>
                                                </li>
                                                <li><a href="changePassword.jsp"><span class="edu-icon edu-money author-log-ic"></span>Change Password</a>
                                                </li>                                      
                                                <li><a href="logout"><span class="edu-icon edu-locked author-log-ic"></span>Log Out</a>
                                                </li>
                                            </ul>
                                        </c:if>
                                        <c:if test="${sessionScope.user.role == 1}">
                                            <ul role="menu" class="dropdown-menu py-3 px-4 mr-3">
                                                <li><a href="dashboard?action=default"><span class="edu-icon edu-home-admin author-log-ic"></span>Dashboard</a>
                                                </li>
                                                <li><a href="profile.jsp"><span class="edu-icon edu-user-rounded author-log-ic"></span>My Profile</a>
                                                </li>
                                                <li><a href="#"><span class="edu-icon edu-user-rounded author-log-ic"></span>Manage Your Tour</a>
                                                </li>
                                                <li><a href="teamList"><span class="edu-icon edu-user-rounded author-log-ic"></span>Manage Your Team</a>
                                                </li>
                                                <li><a href="changePassword.jsp"><span class="edu-icon edu-money author-log-ic"></span>Change Password</a>
                                                </li>                                      
                                                <li><a href="logout"><span class="edu-icon edu-locked author-log-ic"></span>Log Out</a>
                                                </li>
                                            </ul>
                                        </c:if>
                                        
                                    </c:if>
                                    <c:if test="${sessionScope.user == null}">
                                        <li class="active"><a href="home.jsp" class="nav-link">Home</a></li>
                                        <li><a href="tournament.jsp" class="nav-link">Tournament</a></li>
                                        <li><a href="listAllTeam" class="nav-link">Team</a></li>
                                        <li><a href="blog.jsp" class="nav-link">Blog</a></li>
                                        <li><a href="contact.jsp" class="nav-link">Contact</a></li>                                 
                                        <li><a href="login.jsp" class="btn btn-primary py-3 px-4 mr-3">Sign in</a></li>
                                        <li><a href="register.jsp" class="btn btn-primary py-3 px-4 mr-3">Sign up</a></li>
                                        </c:if>
                                </ul>
                            </nav>

                            <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right text-white"><span
                                    class="icon-menu h3 text-white"></span></a>
                        </div>
                    </div>
                </div>

            </header>
    </body>
</html>
