<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>My Leauge Created</title>
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
        <script src="../assets_1/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>

        <div class="page-container">
            <!-- sidebar menu area start -->

            <div class="sidebar-menu">
                <div class="sidebar-header">
                    <div class="logo">
                        <a href="home.jsp"><img src="images/SOCCER.png" alt="logo"></a>
                    </div>
                </div>
                <div class="main-menu">
                    <div class="menu-inner">
                        <nav>
                            <ul class="metismenu" id="menu">
                                <li class="">
                                    <a href="javascript:void(0)" aria-expanded="true"><i class="ti-palette"></i><span>Team Management</span></a>
                                    <ul class="collapse">
                                        <li class=""><a href="teamList">Team List</a></li>   
                                        
                                        <li class=""><a href="leaugeMeJoin">Leauge Me Join</a></li>
                                        <li class=""><a href="InviteOfMyTeam">Invite Of My Team</a></li>
                                    </ul>
                                </li>
                                <li class="active"><a href="myLeauge">My Leauge Created</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>


            <!-- sidebar menu area end -->
            <!-- main content area start -->
            <div class="main-content">
                <!-- header area start -->

                <jsp:include page="../manage/layout/headerArea.jsp"/>

                <!-- header area end -->
                <!-- page title area start -->

                <jsp:include page="../manage/layout/titleArea.jsp"/>

                <!--                 page title area end 
                                <div class="main-content-inner">
                                    <div class="card-area">
                                        <div class="row">
                                            
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            League ID
                                                        </th>
                                                        <th>
                                                            League Name
                                                        </th>
                                                        <th>
                                                            Address
                                                        </th>
                                                        <th>
                                                            Phone Number
                                                        </th>
                                                        <th>
                                                            Quantity Team
                                                        </th> 
                                                        <th>
                                                            
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                <%--<c:forEach items="${requestScope.tourList}" var="t">--%>
                    <tr>

                        <td>
                ${t.tour_id}
            </td>
            <td>
                ${t.tour_name}
            </td>
            <td>
                ${t.address}
            </td>
            <td>
                ${t.phone_number}
            </td>
            <td>
                ${t.team_quantity}
            </td>
            <td>
                
                <a href="joinTour?tourId=${t.getTour_id()}" >Request</a> |
                <a href="Edit" >Edit</a> |
                <a href="MyTourDetail" >Details</a> |
                <a href="Delete" >Delete</a>
            </td>
        </tr>
                <%--</c:forEach>--%>
            </tbody>
        </table>
    </div>
</div>
</div>-->


                <!-- page title area end -->
                <div class="main-content-inner">
                    <div class="card-area">
                        <div class="row">
                            <c:forEach items="${requestScope.tourList}" var="t">
                                <div class="col-lg-4 col-md-6 mt-5">
                                    <div class="card card-bordered">
                                        <img class="card-img-top img-fluid" src="${t.avatar}" alt="image">
                                        <div class="card-body">
                                            <h5 class="title">League Name: ${t.tour_name}</h5>
                                            <h5 class="title">Address: ${t.address}</h5>
                                            <h5 class="title">Phone Number: ${t.phone_number}</h5>                                            
                                            <a href="leaugeProfile?tour_id=${t.tour_id}" class="btn btn-primary">Manage</a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <!-- main content area end -->
            <!-- footer area start-->

            <jsp:include page="../manage/layout/footer.jsp"/>

            <!-- footer area end-->
        </div>
        <!-- page container area end -->
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
        <!-- others plugins -->
        <script src="assets_1/js/plugins.js"></script>
        <script src="assets_1/js/scripts.js"></script>
    </body>

</html>
