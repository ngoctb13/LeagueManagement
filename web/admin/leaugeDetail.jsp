<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!-- 
* Bootstrap Simple Admin Template
* Version: 2.1
* Author: Alexis Luna
* Website: https://github.com/alexis-luna/bootstrap-simple-admin-template
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Forms | Bootstrap Simple Admin Template</title>
        <link href="assets/vendor/fontawesome/css/fontawesome.min.css" rel="stylesheet">
        <link href="assets/vendor/fontawesome/css/solid.min.css" rel="stylesheet">
        <link href="assets/vendor/fontawesome/css/brands.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/master.css" rel="stylesheet">
    </head>

    <body>
        <div class="wrapper">
            <!-- sidebar navigation component -->
            <jsp:include page="../admin/layout/sidebar.jsp"/>



            <!-- end of sidebar component -->
            <div id="body" class="active">
                <!-- navbar navigation component -->
                <jsp:include page="../admin/layout/head.jsp"/>



                <!-- end of navbar navigation -->
                <div class="content">
                    <div class="container">
                        <div class="page-title">
                            <h3>Thông tin giải đấu</h3>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="item-block d-flex">
                                        <div class="image-item"><img src="${pageContext.request.contextPath}/images/${empty tour.avatar ? "no_img.jpeg" : tour.avatar}"></div>
                                        <div class="body">
                                            <div class="title-body mx-3">${tour.tour_name}</div>
                                            <div class="content">
                                                <div class="item-content">Team quantity: ${tour.team_quantity}</div>
                                                <div class="item-content">Tel: ${tour.phone_number}</div>
                                                <div class="item-content">Address: ${tour.address}</div>
                                                <div class="item-content">Time: ${tour.start_date}-${tour.end_date}</div>
                                                <div class="item-content">Description: ${tour.description}</div>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div> 
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        <script src="assets/vendor/jquery/jquery.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/form-validator.js"></script>
        <script src="assets/js/script.js"></script>
    </body>

</html>