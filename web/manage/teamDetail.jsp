<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>${gotTeam.team_name} Profile</title>
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

    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- preloader area start -->
        <div id="preloader">
            <div class="loader"></div>
        </div>
        <!-- preloader area end -->
        <!-- page container area start -->
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
                                        </div>
                                        <div class="col-lg-8">                                           
                                            <div class="tab-content" id="v-pills-tabContent">
                                                <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <c:if test="${status.equals('success')}">
                                                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                                                    <strong>Success!</strong> You have successfully updated.    
                                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                        <span class="fa fa-times"></span>
                                                                    </button>
                                                                </div>
                                                            </c:if>
                                                            <c:if test="${status.equals('failed')}">
                                                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                                                    <strong>Oh snap!</strong> Change a few things up and try submitting again.
                                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                        <span class="fa fa-times"></span>
                                                                    </button>
                                                                </div>
                                                            </c:if>
                                                        </div>

                                                        <div class="card">
                                                            <div class="card-body">
                                                                <h4 class="header-title">Team Profile</h4>
                                                                <p class="text-muted font-14 mb-4">Here to show all information about your team.</p>
                                                                <div class="form-group">
                                                                    <label for="example-text-input" class="col-form-label">Team Name</label>                                                      
                                                                    <input class="form-control" type="text" value="${gotTeam.team_name}" id="example-text-input" readonly="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="example-search-input" class="col-form-label">Telephone</label>
                                                                    <input class="form-control" type="text" value="${gotTeam.phone_number}" id="example-search-input" readonly="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="example-email-input" class="col-form-label">Email</label>
                                                                    <input class="form-control" type="email" value="${gotTeam.email}" id="example-email-input" readonly="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="example-url-input" class="col-form-label">Address</label>
                                                                    <input class="form-control" type="text" value="${gotTeam.address}" id="example-url-input" readonly="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="example-tel-input" class="col-form-label">Description</label>
                                                                    <input class="form-control" type="text" value="${gotTeam.description}" id="example-tel-input" readonly="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="example-text-input" class="col-form-label">Coach</label>                                                      
                                                                    <input class="form-control" type="text" value="${gotCoach.full_name}" id="example-text-input" readonly="">
                                                                </div>                                                           
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                                    <div class="row">

                                                        <div class="col-lg-6 mt-5">
                                                            <div class="card">
                                                                <div class="card-body">
                                                                    <div class="media mb-5">
                                                                        <img class="img-fluid mr-4" src="assets_1/images/media/media1.jpg" alt="image">
                                                                        <div class="media-body">
                                                                            <h4 class="mb-3">Media heading</h4> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                                                        </div>
                                                                    </div>                                                               
                                                                </div>                                                                                                                             
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 mt-5">
                                                            <div class="card">
                                                                <div class="card-body">
                                                                    <div class="media mb-5">
                                                                        <img class="img-fluid mr-4" src="assets_1/images/media/media1.jpg" alt="image">
                                                                        <div class="media-body">
                                                                            <h4 class="mb-3">Media heading</h4> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                                                        </div>
                                                                    </div>                                                               
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 mt-5">
                                                            <div class="card">
                                                                <div class="card-body">
                                                                    <div class="media mb-5">
                                                                        <img class="img-fluid mr-4" src="assets_1/images/media/media1.jpg" alt="image">
                                                                        <div class="media-body">
                                                                            <h4 class="mb-3">Media heading</h4> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                                                        </div>
                                                                    </div>                                                               
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 mt-5">
                                                            <div class="card">
                                                                <div class="card-body">
                                                                    <div class="media mb-5">
                                                                        <img class="img-fluid mr-4" src="assets_1/images/media/media1.jpg" alt="image">
                                                                        <div class="media-body">
                                                                            <h4 class="mb-3">Media heading</h4> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                                                        </div>
                                                                    </div>                                                               
                                                                </div>
                                                            </div>
                                                        </div>


                                                    </div>


                                                </div>
                                                <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                                    <div class="col-12">
                                                        <div class="card">
                                                            <div class="card-body">
                                                                <h4 class="header-title">Edit Team Profile</h4>
                                                                <p class="text-muted font-14 mb-4">Here to show the form which you can edit your team.</p>
                                                                <form action="teamUpdate?coach=${gotCoach.user_id}" method="POST">
                                                                    <div class="form-group">
                                                                        <label for="example-text-input" class="col-form-label">Team ID</label>                                                      
                                                                        <input name="team_id" class="form-control" type="text" value="${gotTeam.team_id}" id="example-text-input" readonly="">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="example-text-input" class="col-form-label">Team Name</label>                                                      
                                                                        <input name="team_name" class="form-control" type="text" value="${gotTeam.team_name}" id="example-text-input" required>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="example-search-input" class="col-form-label">Telephone</label>
                                                                        <input name="phone_number" class="form-control" type="text" value="${gotTeam.phone_number}" id="example-search-input" required>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="example-email-input" class="col-form-label">Email</label>
                                                                        <input name="email" class="form-control" type="email" value="${gotTeam.email}" id="example-email-input" required>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="example-url-input" class="col-form-label">Address</label>
                                                                        <input name="address" class="form-control" type="text" value="${gotTeam.address}" id="example-url-input" required>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="example-tel-input" class="col-form-label">Description</label>
                                                                        <input name="description" class="form-control" type="text" value="${gotTeam.description}" id="example-tel-input" required>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="example-text-input" class="col-form-label">Coach</label>                                                      
                                                                        <input name="coach_name" class="form-control" type="text" value="${gotCoach.full_name}" id="example-text-input" readonly="">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <button class="btn btn-success mb-3" type="submit">Button</button>
                                                                    </div>                                                                   
                                                                </form>
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
