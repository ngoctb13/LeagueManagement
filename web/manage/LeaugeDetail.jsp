


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

            <jsp:include page="../manage/layout/sidebar.jsp"/>


            <!-- sidebar menu area end -->
            <!-- main content area start -->
            <div class="main-content">
                <!-- header area start -->

                <jsp:include page="../manage/layout/headerArea.jsp"/>

                <!-- header area end -->
                <!-- page title area start -->

                <jsp:include page="../manage/layout/titleArea.jsp"/>


                <c:set var="to0" value="${requestScope.tour0}" />

                <!-- page title area end -->
                <div class="main-content-inner">
                    <div class="row">
                        <!-- left align tab start -->
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-md-flex">
                                        <div class="nav flex-column nav-pills mr-4 mb-3 mb-sm-0" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                            <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Detail</a>
                                            <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Member</a>
                                            <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Edit</a>
                                            <a class="nav-link" id="v-pills-browser-tab" data-toggle="pill" href="#v-pills-browser" role="tab" aria-controls="v-pills-browser" aria-selected="false">Request</a>
                                            <a class="nav-link" id="v-pills-invitation-sent-tab" data-toggle="pill" href="#v-pills-invitation-sent" role="tab" aria-controls="v-pills-invitation-sent" aria-selected="false">Invitation Sent</a>
                                        </div>                                                                                        

                                        <div class="col-lg-10">                                           
                                            <div class="tab-content" id="v-pills-tabContent">
                                                <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                                    <div class="col-12">
                                                        <!--                                                        <div class="form-group">
                                                        <%--<c:if test="${status.equals('SUCCESS')}">--%>
                                                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                                                            <strong>Success!</strong> You have successfully updated.    
                                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                <span class="fa fa-times"></span>
                                                            </button>
                                                        </div>
                                                        <%--</c:if>--%>
                                                        <%--<c:if test="${status.equals('FAILED')}">--%>
                                                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                                            <strong>Oh snap!</strong> Change a few things up and try submitting again.
                                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                <span class="fa fa-times"></span>
                                                            </button>
                                                        </div>
                                                        <%--</c:if>--%>
                                                    </div>-->

                                                        <div class="card">
                                                            <div class="card-body">

                                                                <h4 class="header-title">League Profile</h4>
                                                                <p class="text-muted font-14 mb-4">Here to show all information about your tour.</p>
                                                                <div class="form-group">
                                                                    <label for="example-text-input" class="col-form-label">Tour ID</label>                                                      
                                                                    <input class="form-control" type="text" value="${to0.tour_id}" id="example-text-input" readonly="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="example-text-input" class="col-form-label">Tour Name</label>                                                      
                                                                    <input class="form-control" type="text" value="${to0.tour_name}" id="example-text-input" readonly="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="example-search-input" class="col-form-label">Address</label>
                                                                    <input class="form-control" type="text" value="${to0.address}" id="example-search-input" readonly="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="example-email-input" class="col-form-label">Phone Number</label>
                                                                    <input class="form-control" type="email" value="${to0.phone_number}" id="example-email-input" readonly="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="example-url-input" class="col-form-label">Start Date</label>
                                                                    <input class="form-control" type="text" value="${to0.start_date}" id="example-url-input" readonly="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="example-tel-input" class="col-form-label">End Date</label>
                                                                    <input class="form-control" type="text" value="${to0.end_date}" id="example-tel-input" readonly="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="example-text-input" class="col-form-label">Description</label>                                                      
                                                                    <input class="form-control" type="text" value="${to0.description}" id="example-text-input" readonly="">
                                                                </div>  
                                                                <div class="form-group">
                                                                    <label for="example-text-input" class="col-form-label">Host ID</label>                                                      
                                                                    <input class="form-control" type="text" value="${to0.host}" id="example-text-input" readonly="">
                                                                </div>  
                                                                <div class="form-group">
                                                                    <label for="example-text-input" class="col-form-label">Quantity Team</label>                                                      
                                                                    <input class="form-control" type="text" value="${to0.team_quantity}" id="example-text-input" readonly="">
                                                                </div>  
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                                    <div class="col-lg-6 mt-5">
                                                        <div class=" card_button" >
                                                            <form action="InviteTeamJoinTour" method="POST">
                                                                <input type="hidden" id="tour_name" name="tour_id" value="${to0.tour_id}" >
                                                                <div class="row">
                                                                    <div class="col-3">
                                                                        <label for="cars">Select your team: </label>
                                                                    </div>
                                                                    <div class="col-4">
                                                                        <select name="mySelect" id="cars">
                                                                            <c:forEach items="${requestScope.listTeam}" var="t">
                                                                                <option value="${t.team_id}">${t.team_name}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div> 
                                                                    <div class="col-5">  
                                                                        <button type="sumbit" >Invite Team</button>
                                                                    </div>
                                                                </div>                                        

                                                            </form>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="box box-primary">
                                                            <div class="box-body">
                                                                <table width="100%" class="table table-hover" id="dataTables-example">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>Request Id</th>
                                                                            <th>Team Id</th>
                                                                            <th>Team Name</th>
                                                                            <th></th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach items="${requestScope.list0}" var="t0">
                                                                            <tr>
                                                                                <td>${t0.request_id}</td>
                                                                                <td>${t0.team.team_id}</td>
                                                                                <td>${t0.team.team_name}</td>
                                                                                <td>
                                                                                    <a href="DeclineRequestJoinTour?id=${t0.request_id}" >Decline</a>
                                                                                </td>
                                                                            </tr>
                                                                        </c:forEach>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <style>
                                                        .card_button button{
                                                            padding: 10px;
                                                            width: 50%;
                                                            background-color: white;
                                                            color: black;
                                                            font-weight: bold;
                                                            border-radius: 10px ;
                                                        }
                                                        .card_button button:hover{
                                                            background-color: #007bff;
                                                            border: none;
                                                            color: white;
                                                        }
                                                    </style>
                                                </div>
                                                <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                                    <div class="col-12">
                                                        <div class="card">
                                                            <div class="card-body">
                                                                <%--<c:set var="tour0" value="${requestScope.tour0}" />--%>
                                                                <h4 class="header-title">Edit Tour Profile</h4>
                                                                <p class="text-muted font-14 mb-4">Here to show the form which you can edit your tour.</p>
                                                                <form action="EditTour?tourID=${tour0.tour_id}" method="POST">
                                                                    <div class="form-group">
                                                                        <label for="example-text-input" class="col-form-label">Tour ID</label>                                                      
                                                                        <input class="form-control" type="text" value="${tour0.tour_id}" id="example-text-input" readonly="">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="example-text-input" class="col-form-label">Tour Name</label>                                                      
                                                                        <input name="tourName" class="form-control" type="text" value="${tour0.tour_name}" id="example-text-input" required>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="example-search-input" class="col-form-label">Address</label>
                                                                        <input name="addressTour" class="form-control" type="text" value="${tour0.address}" id="example-search-input" required>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="example-email-input" class="col-form-label">Phone Number</label>
                                                                        <input name="phoneNumber" class="form-control" type="email" value="${tour0.phone_number}" id="example-email-input" >
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="example-url-input" class="col-form-label">Start Date</label>
                                                                        <input name="startDate" class="form-control" type="text" value="${tour0.start_date}" id="example-url-input" >
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="example-tel-input" class="col-form-label">End Date</label>
                                                                        <input name="endDate" class="form-control" type="text" value="${tour0.end_date}" id="example-tel-input" >
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="example-text-input" class="col-form-label">Description</label>                                                      
                                                                        <input name="descript" class="form-control" type="text" value="${tour0.description}" id="example-text-input" >
                                                                    </div>  
                                                                    <div class="form-group">
                                                                        <label for="example-text-input" class="col-form-label">Host ID</label>                                                      
                                                                        <input name="hostId" class="form-control" type="text" value="${tour0.host}" id="example-text-input" >
                                                                    </div>  
                                                                    <div class="form-group">
                                                                        <label for="example-text-input" class="col-form-label">Quantity Team</label>                                                      
                                                                        <input name="quanTeam" class="form-control" type="text" value="${tour0.team_quantity}" id="example-text-input" required>
                                                                    </div> 
                                                                    <div class="form-group">
                                                                        <button class="btn btn-success mb-3" type="submit">Button</button>
                                                                    </div>                                                                   
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="tab-pane fade" id="v-pills-browser" role="tabpanel" aria-labelledby="v-pills-browser-tab">
                                                    <div class="col-12">
                                                        <div class="box box-primary">
                                                            <div class="box-body">
                                                                <table width="100%" class="table table-hover" id="dataTables-example">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>Request Id</th>
                                                                            <th>Team Id</th>
                                                                            <th>Team Name</th>
                                                                            <th></th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach items="${requestScope.list1}" var="t1">
                                                                            <tr>
                                                                                <td>${t1.request_id}</td>
                                                                                <td>${t1.team.team_id}</td>
                                                                                <td>${t1.team.team_name}</td>
                                                                                <td>
                                                                                    <a href="AcceptRequestJoinTour?id=${t1.request_id}" >Accept</a>
                                                                                </td>
                                                                            </tr>
                                                                        </c:forEach>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade" id="v-pills-invitation-sent" role="tabpanel" aria-labelledby="v-pills-invitation-sent-tab">
                                                    <div class="col-12">
                                                        <div class="box box-primary">
                                                            <div class="box-body">
                                                                <table width="100%" class="table table-hover" id="dataTables-example">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>Request Id</th>
                                                                            <th>Team Id</th>
                                                                            <th>Team Name</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach items="${requestScope.listInvite}" var="invite">
                                                                            <tr>
                                                                                <td>${invite.invite_id}</td>
                                                                                <td>${invite.team.team_id}</td>
                                                                                <td>${invite.team.team_name}</td>
                                                                                
                                                                            </tr>
                                                                        </c:forEach>
                                                                    </tbody>
                                                                </table>
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
                        <!-- left align tab end -->
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
