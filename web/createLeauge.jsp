<%@page import="java.util.Date"%>
<!doctype html>
<html class="no-js" lang="en">
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <%
        // Get the current date
        Date currentDate = new Date();
        // Convert the current date to a string in the format expected by the date input field
        String currentDateStr = String.format("%tF", currentDate);
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
                        <div class="col-lg-9  d-none d-lg-block">                          
                        </div>
                        <!-- nav and search button -->
                        <div class="col-lg-3 clearfix">
                            <div class="search-box">
                                <form action="#">
                                    <input type="text" name="search" placeholder="Search..." required>
                                    <i class="ti-search"></i>
                                </form>
                            </div>
                        </div>
                        <!-- mobile_menu -->
                        <div class="col-12 d-block d-lg-none">
                            <div id="mobile_menu"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- header area end -->
            <!-- page title area end -->
            <div class="main-content-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-2"></div>
                        <div class="col-lg-8 mt-5">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="header-title">Create tournament</h4>
                                    <form action="leaugeCreate" method="post" enctype="multipart/form-data">
                                        <div class="row">
                                            <div style="text-align:center">
                                                <span id="mes"></span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6 mt-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Tournament Name</label>
                                                    <input type="text" class="form-control" id="tour_name" name="tour_name" placeholder="Enter tournament name">                                          
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Tournament Hotline</label>
                                                            <input type="text" class="form-control" id="tour_phone" name="tour_phone" placeholder="Enter tournament hotline">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Quantity</label>
                                                            <input type="text" class="form-control" id="quantity" name="quantity" placeholder="Enter quantity of tour">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Tournament Location</label>
                                                    <input type="text" class="form-control" id="tour_address" name="tour_address" placeholder="Enter tournament location">
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="card">
                                                    <div class="card-body">                                                       
                                                        <img src="images/logo_4.png" class="avatar" alt="avatar">
                                                        <input type="file" name="avatar_leauge" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-date-input" class="col-form-label">Start Date</label>
                                            <input class="form-control" type="date" name="start_date" value="" id="start_date" min="<%= currentDateStr%>" onchange="setEndDateMin()">
                                            <div style="text-align:center">
                                                <span id="start_date_mes"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-date-input" class="col-form-label">End Date</label>
                                            <input class="form-control" type="date" name="end_date" value="" id="end_date" min="<%= currentDateStr%>">
                                            <div style="text-align:center">
                                                <span id="end_date_mes"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Description</label>
                                            <textarea name="description" class="form-control" aria-label="With textarea"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4">Submit</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- Statistics area end -->
                        <!-- Advertising area start -->

                    </div>
                </div>
            </div>
            <!-- main content area end -->
            <!-- footer area start-->

            <!-- footer area end-->
        </div>
        <!-- main wrapper start -->
        <!-- offset area start -->

        <!-- offset area end -->
        <!-- jquery latest version -->
        <script>          
            function setEndDateMin() {
                var startDateInput = document.getElementById("start_date");
                var endDateInput = document.getElementById("end_date");

                endDateInput.min = startDateInput.value;
            }
        </script>
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
