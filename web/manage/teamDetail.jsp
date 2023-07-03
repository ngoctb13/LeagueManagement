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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="assets_1/css/responsive.css">
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
        <style>
            .modal1,.modal5,.modal9{
                position: fixed;
                height: 100%;
                width: 100%;
                background: rgb(0, 0, 0, 0.6);
                z-index: 3;
            }
            .modal_inner form{
                width: 50%;
                margin: 10% auto;
                text-align: center;
                justify-content: center;
                border: 1px solid #de536f;
                background-color: #de536f ;
                border-radius: 15px;
            }
            .modal_inner form table{
                width: 100%;
            }
            .modal_inner form table tr th{
                width: 30%;
                color: white;
            }
            .modal_inner label{
                color: white;
                font-size: 17px;
                font-weight: bold;
            }
            .modal_inner form table tr td{
                width: 70%;
                margin-right: 10px;
            }
            .modal_inner form table tr td input, .modal_inner form input {
                padding: 10px;
                border-radius: 10px;
                border: none;
                width: 90%;
                margin: 10px 0;

            }
            .hide{
                display: none;
            }
            .icon_exit{
                width: 100%;
            }
            .icon_exit span{
                padding: 10px;
                float: right;
                margin: 10px 10px 0 10px;
            }
            .icon_exit span:hover{
                border: 1px dashed #333;
                border-radius: 5px;
                cursor: pointer;
            }
        </style>
        <div class="form-group">
                        <c:if test="${ms.equals('SUCCESS')}">
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <strong>Success!</strong> You have Sent Invitation.    
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span class="fa fa-times"></span>
                                </button>
                            </div>
                        </c:if>
                        <c:if test="${ms.equals('FAILED')}">
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                <strong>FAILED!</strong> You have not sent invitation.
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span class="fa fa-times"></span>
                                </button>
                            </div>
                        </c:if>
                    </div>

        <div id="inviteModal" class="modal1 hide">
            <div class="modal_inner">

                <form action="inviteMember" method="">
                    <div class="modal_header3">
                        <div class="icon_exit"><span class="fa fa-times">
                            </span>
                        </div>
                        <table class="table">
                            <tr>
                                <th>
                                    <label for="emailInput">Enter user's email please:</label>
                                </th>
                                <td>
                                    <input type="text" name="email" id="emailInput" required="required">
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <label for="messageInput">Messages:</label>
                                </th>
                                <td>
                                    <input type="text" name="message" id="messageInput" required="required">
                                </td>
                            </tr>
                        </table>
                        <input type="submit" value="Invite" style="width: 30%;">
                    </div>
                    
                </form>
            </div>
        </div>
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
                                            <a class="nav-link" id="v-pills-browser-tab" data-toggle="pill" href="#v-pills-browser" role="tab" aria-controls="v-pills-browser" aria-selected="false">Request</a>
                                            <a class="nav-link" id="v-pills-invitation-sent-tab" data-toggle="pill" href="#v-pills-invitation-sent" role="tab" aria-controls="v-pills-invitation-sent" aria-selected="false">Invitation Sent</a>
                                        </div>                                                                                        

                                        <div class="col-lg-10">                                           
                                            <div class="tab-content" id="v-pills-tabContent">
                                                <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <c:if test="${status.equals('SUCCESS')}">
                                                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                                                    <strong>Success!</strong> You have successfully updated.    
                                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                        <span class="fa fa-times"></span>
                                                                    </button>
                                                                </div>
                                                            </c:if>
                                                            <c:if test="${status.equals('FAILED')}">
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
                                                    <div class="col-12">
                                                        <div class="box box-primary">
                                                            <div class="box-body">
                                                                <table width="100%" class="table table-hover" id="dataTables-example">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>Name</th>
                                                                            <th>Email</th>
                                                                            <th>Shirt Number</th>
                                                                            <th>Position</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach items="${playerList}" var="p" varStatus="a">
                                                                        <tr>
                                                                            <td>}</td>
                                                                            <td>}</td>
                                                                            <td>${p.shirt_number}</td>
                                                                            <td>${p.position}</td>
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

                                                        <div class="col-lg-6 mt-5">
                                                            <div class=" card_button" >
                                                                <button onclick="addMember()">
                                                                    Invite Member
                                                                </button>  
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
                                                <div class="tab-pane fade" id="v-pills-browser" role="tabpanel" aria-labelledby="v-pills-browser-tab">
                                                    <div class="col-12">
                                                        <div class="box box-primary">
                                                            <div class="box-body">
                                                                <table width="100%" class="table table-hover" id="dataTables-example">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>Name</th>
                                                                            <th>Shirt number</th>
                                                                            <th>Position</th>
                                                                            <th>Status</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach items="${TeamRequest}" var="rq" varStatus="a">
                                                                            <c:if test="${rq.status.equals('PENDING')}">
                                                                        <tr>
                                                                            <td>${userName[a.index]}</td>
                                                                            <td>${rq.shirt_number}</td>
                                                                            <td>${rq.position}</td>
                                                                            <td>${rq.status}</td>
                                                                            <td class="text-end">
                                                                                <a href="responseTeamRequest?requestID=${rq.requestID}" class="btn btn-outline-info btn-rounded">Accept</a>
                                                                                <a href="declineTeamRequest?requestID=${rq.requestID}" class="btn btn-outline-danger btn-rounded">Decline</a>
                                                                            </td>
                                                                        </tr>
                                                                            </c:if>
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
                                                                            <th>Name</th>
                                                                            <th>Message</th>
                                                                            <th>Status</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach items="${invitationSent}" var="s"  varStatus="a">
                                                                        <tr>
                                                                            <td>${user_name[a.index]}</td>
                                                                            <td>${s.mess}</td>
                                                                            <td>${s.status}</td>
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
        <script>
                                                                    var modal = document.querySelector('.modal1');
                                                                    var hienthi = document.querySelector('.card_button button');
                                                                    var andi = document.querySelector('.icon_exit span');

                                                                    function toggModal() {
                                                                        modal.classList.toggle('hide');
                                                                    }

                                                                    hienthi.addEventListener('click', toggModal);
                                                                    andi.addEventListener('click', toggModal);

        </script>
    </body>

</html>
