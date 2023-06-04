<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <div class="col-lg-9 mx-auto text-center">
                            <h1 class="text-white">Your Profile</h1>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-3" style="padding-top: 50px;">
                        <div class="text-center">
                            <img src="${sessionScope.user.avatar_link}" class="avatar img-circle img-thumbnail" alt="avatar">
                        <h6>Upload a different photo...</h6>

                        <input type="file" class="form-control">
                    </div>
                </div>

                <div class="col-md-9 personal-info" style="padding-top: 50px;">
                    <!--                        <div class="alert alert-info alert-dismissable">
                                                <a class="panel-close close" data-dismiss="alert">×</a> 
                                                <i class="fa fa-coffee"></i>
                                                This is an <strong>.alert</strong>. Use this to show important messages to the user.
                                            </div>-->
                    <c:if test="${status.equals('SUCCESS')}">
                        <div class="alert alert-info alert-dismissable">
                            <a class="panel-close close" data-dismiss="alert">×</a> 
                            <i class="fa fa-coffee"></i>
                            UPDATE PROFILE <strong>SUCCESSFULLY!</strong>.
                        </div>
                    </c:if>
                    <c:if test="${status.equals('FAILED')}">
                        <div class="alert alert-info alert-dismissable">
                            <a class="panel-close close" data-dismiss="alert">×</a> 
                            <i class="fa fa-coffee"></i>
                            UPDATE PROFILE <strong>FAILED!</strong>.
                        </div>
                    </c:if>
                    <form action="userUpdate" class="form-horizontal"  role="form">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Email:</label>
                            <div class="col-lg-8">
                                <input name="email" class="form-control" type="text" value="${sessionScope.user.email}">
                            </div>
                        </div> 

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Your Name:</label>
                            <div class="col-lg-8">
                                <input name="full_name" class="form-control" type="text" value="${sessionScope.user.full_name}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Your Phone Number:</label>
                            <div class="col-lg-8">
                                <input name="phone_number" class="form-control" type="text" value="${sessionScope.user.phone_number}">
                            </div>  
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Address:</label>
                            <div class="col-lg-8">
                                <input name="address" class="form-control" type="text" value="${sessionScope.user.address}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Your Avatar Link</label>
                            <div class="col-lg-8">
                                <input name="avatar_link" class="form-control" type="text" value="${sessionScope.user.avatar_link}">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-3" style="padding-top: 10px;">
                                <button type="submit" class="btn btn-primary py-2 px-5">Update</button>
                            </div>
                        </div>                               
                    </form>
                    <div class="col-lg-3" style="padding-top: 10px;">
                        <a href="deleteAccountRequest.jsp">
                            <button  class="btn btn-primary py-2 px-5">Delete Your Account</button>
                        </a> 
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