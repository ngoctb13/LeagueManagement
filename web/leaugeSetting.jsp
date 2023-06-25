<%@page import="dao.TourDAO"%>
<%@page import="model.Tour"%>
<!doctype html>
<html class="no-js" lang="en">
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>srtdash - SEO Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/png" href="assets_1/images/icon/favicon.ico">
        <link rel="stylesheet" href="assets_1/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets_1/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets_1/css/themify-icons.css">
        <link rel="stylesheet" href="assets_1/css/metisMenu.css">
        <link rel="stylesheet" href="assets_1/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets_1/css/slicknav.min.css">
        <!-- amchart css -->
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
        <!-- others css -->
        <link rel="stylesheet" href="assets_1/css/typography.css">
        <link rel="stylesheet" href="assets_1/css/default-css.css">
        <link rel="stylesheet" href="assets_1/css/styles.css">
        <link rel="stylesheet" href="assets_1/css/responsive.css">
        <!-- modernizr css -->
        <script src="assets_1/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <style>
        .cover {
            object-fit: cover;
        }
    </style>
    <%
        TourDAO dao = new TourDAO();
        int tour_id = Integer.parseInt(request.getParameter("tour_id"));
        Tour gotTour = dao.getTourByID(tour_id);
    %>
    <body class="body-bg">
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- preloader area start -->
        <div id="preloader">
            <div class="loader"></div>
        </div>
        <!-- preloader area end -->
        <!-- main wrapper start -->
        <div class="horizontal-main-wrapper">
            <!-- main header area start -->
            <jsp:include page="LeaugeLayout/header.jsp"/>
            <!-- main header area end -->
            <!-- header area start -->
            <div class="header-area header-bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12  d-none d-lg-block">
                            <jsp:include page="LeaugeLayout/navbar.jsp"/>
                        </div>

                    </div>
                </div>
            </div>
            <!-- header area end -->
            <!-- page title area end -->
            <div class="main-content-inner">

                <div class="row col-10">
                    <!-- seo fact area start -->                   
                    <!-- seo fact area end -->
                    <!-- Social Campain area start -->                    
                    <!-- Social Campain area end -->
                    <!-- Statistics area start -->                        
                    <div class="col-4"></div>
                    <div class="col-lg-6 mt-4">
                        <div class="cover card">
                            <div class="card-body"">                               
                                <img src="https://myleague.vn/content/images/sport/football/cover.png?id=200" style="height: 300px; width: 1500px">

                                <div class="col-12 mt-5">
                                    <div class="col-lg-12 mt-5">
                                        <form action="leaugeSetting" method="post" enctype="multipart/form-data">
                                            <div class="card">
                                                <div class="card-body">
                                                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                        <li class="nav-item">
                                                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Information</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Format</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Introduction</a>
                                                        </li>
                                                    </ul>
                                                    <div class="tab-content mt-3" id="myTabContent">
                                                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                                            <div class="row">
                                                                <div class="col-lg-4 mt-5">
                                                                    <div class="card">
                                                                        <div class="card-body">
                                                                            <img src="images/<%=gotTour.getAvatar()%>" class="avatar" alt="avatar">
                                                                            <input type="file" name="avatar_leauge" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-8 mt-5">
                                                                    <div class="card">
                                                                        <div class="card-body">
                                                                            <div class="form-group">
                                                                                <label for="exampleInputEmail1">Tournament Name</label>
                                                                                <input type="text" class="form-control" id="tour_name" name="tour_name" value="<%=gotTour.getTour_name()%>">                                          
                                                                            </div>

                                                                            <div class="row">
                                                                                <div class="col-md-12">
                                                                                    <div class="form-group">
                                                                                        <label for="exampleInputEmail1">Tournament Hotline</label>
                                                                                        <input type="text" class="form-control" id="tour_phone" name="tour_phone" value="<%=gotTour.getPhone_number()%>">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="exampleInputEmail1">Tournament Location</label>
                                                                                <input type="text" class="form-control" id="tour_address" name="tour_address" value="<%=gotTour.getAddress()%>">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                                            <div class="form-group">
                                                                <label for="exampleInputEmail1">Competition Type</label>
                                                                <input type="text" class="form-control" value="Loai Truc Tiep">                                          
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="example-date-input" class="col-form-label">Start Date</label>
                                                                        <input class="form-control" type="date" name="start_date" value="<%=gotTour.getStart_date()%>" id="start_date">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="example-date-input" class="col-form-label">End Date</label>
                                                                        <input class="form-control" type="date" name="end_date" value="<%=gotTour.getEnd_date()%>" id="end_date">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="exampleInputEmail1">Number Of Team</label>
                                                                <input type="text" class="form-control" id="quantity" name="quantity" value="<%=gotTour.getTeam_quantity()%>">
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                                                            <div class="form-group col-lg-12 mt-4">
                                                                <label for="exampleInputEmail1">Description Of Leauge:</label>
                                                                <textarea name="description" class="form-control" rows="10" aria-label="With textarea"><%=gotTour.getDescription()%></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4">Submit</button>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- main content area end -->
        <!-- footer area start-->

        <!-- footer area end-->
        <!-- main wrapper start -->
        <!-- offset area start -->

        <!-- offset area end -->
        <!-- jquery latest version -->
        <script src="assets_1/js/vendor/jquery-2.2.4.min.js"></script>
        <!-- bootstrap 4 js -->
        <script src="assets_1/js/popper.min.js"></script>
        <script src="assets_1/js/bootstrap.min.js"></script>
        <script src="assets_1/js/owl.carousel.min.js"></script>
        <script src="assets_1/js/metisMenu.min.js"></script>
        <script src="assets_1/js/jquery.slimscroll.min.js"></script>
        <script src="assets_1/js/jquery.slicknav.min.js"></script>

        <!-- start chart js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
        <!-- start highcharts js -->
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script src="https://code.highcharts.com/modules/exporting.js"></script>
        <script src="https://code.highcharts.com/modules/export-data.js"></script>
        <!-- start amcharts -->
        <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
        <script src="https://www.amcharts.com/lib/3/ammap.js"></script>
        <script src="https://www.amcharts.com/lib/3/maps/js/worldLow.js"></script>
        <script src="https://www.amcharts.com/lib/3/serial.js"></script>
        <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
        <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
        <!-- all line chart activation -->
        <script src="assets_1/js/line-chart.js"></script>
        <!-- all pie chart -->
        <script src="assets_1/js/pie-chart.js"></script>
        <!-- all bar chart -->
        <script src="assets_1/js/bar-chart.js"></script>
        <!-- all map chart -->
        <script src="assets_1/js/maps.js"></script>
        <!-- others plugins -->
        <script src="assets_1/js/plugins.js"></script>
        <script src="assets_1/js/scripts.js"></script>
    </body>

</html>
