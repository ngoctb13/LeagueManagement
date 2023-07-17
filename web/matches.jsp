<%@page import="model.Tour"%>
<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <style>
        .cover {
            object-fit: cover;
        }
    </style>

    <%
        Tour recentTour = (Tour) session.getAttribute("recentTour");
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
                <div class="container">   
                    <div class="modal fade" id="exampleModalLong">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">New match</h5>
                                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                                </div>
                                <div class="modal-body">
                                    <form action="createMatch?tour_id=<%=recentTour.getTour_id()%>">
                                        <div class="single-table">
                                            <div class="table-responsive">
                                                <table class="table text-center">
                                                    <thead class="text-uppercase">
                                                        <tr>
                                                            <th><select name="homeTeam">
                                                                    <option value="">Select Home Team</option>
                                                                    <c:forEach var="team" items="${teamList}">
                                                                        <option value="${team.team_id}" ${team.team_id == match.hometeam.team_id ? 'selected' : ''}>${team.team_name}</option>
                                                                    </c:forEach>
                                                                </select> - <select name="awayTeam">
                                                                    <option value="">Select Away Team</option>
                                                                    <c:forEach var="team" items="${teamList}">
                                                                        <option value="${team.team_id}" ${team.team_id == match.awayteam.team_id ? 'selected' : ''}>${team.team_name}</option>
                                                                    </c:forEach>
                                                                </select></th>
                                                        </tr>
                                                        <tr>
                                                            <th><input type="date" name="match_date" value="" id="match_date"> - <input type="time" name="match_time" value="" id="match_time"></th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="modal-footer">  
                                            <button type="sumbit" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row col-10">                       
                    <div class="col-3"></div>
                    <div class="col-lg-8 mt-4">
                        <div class="row">
                            <div class="col-xl-1 col-lg-2 col-md-3 col-sm-6 mb-4">
                                <button type="button" class="btn btn-primary btn-flat btn-lg mt-3" data-toggle="modal" data-target="#exampleModalLong">Create new match</button>
                            </div>
                        </div>
                        <!--hihihihihih-->
                        <form action="updateMatchesSchedule">
                            <c:forEach var="match" items="${matches}">                            
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Arrange League Schedule</h4>
                                        <div class="single-table">
                                            <div class="table-responsive">
                                                <table class="table text-center">
                                                    <thead class="text-uppercase">
                                                        <tr>
                                                            <th><select name="homeTeam_${match.match_id}">
                                                                    <option value="">Select Home Team</option>
                                                                    <c:forEach var="team" items="${teamList}">
                                                                        <option value="${team.team_id}" ${team.team_id == match.hometeam.team_id ? 'selected' : ''}>${team.team_name}</option>
                                                                    </c:forEach>
                                                                </select> - <select name="awayTeam_${match.match_id}">
                                                                    <option value="">Select Away Team</option>
                                                                    <c:forEach var="team" items="${teamList}">
                                                                        <option value="${team.team_id}" ${team.team_id == match.awayteam.team_id ? 'selected' : ''}>${team.team_name}</option>
                                                                    </c:forEach>
                                                                </select></th>
                                                        </tr>
                                                        <tr>
                                                            <th><input type="text" name="home_score_${match.match_id}" value="${match.home_score}"> - <input type="text" name="away_score_${match.match_id}" value="${match.away_score}"></th>
                                                        </tr>
                                                        <tr>
                                                            <th><input type="date" name="match_date_${match.match_id}" value="${match.match_date}"> - <input type="time" name="match_time_${match.match_id}" value="${match.match_time}"></th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>  
                            </c:forEach> 
                            <div class="row" style="margin-left: 1125px">
                                <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4">Submit</button>
                            </div>

                        </form>
                    </div>
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
