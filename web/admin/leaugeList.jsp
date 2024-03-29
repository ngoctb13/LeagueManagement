<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<!-- 
* Bootstrap Simple Admin Template
* Version: 2.1
* Author: Alexis Luna
* Website: https://github.com/alexis-luna/bootstrap-simple-admin-template
-->
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Users | Bootstrap Simple Admin Template</title>
        <link href="assets/vendor/fontawesome/css/fontawesome.min.css" rel="stylesheet">
        <link href="assets/vendor/fontawesome/css/solid.min.css" rel="stylesheet">
        <link href="assets/vendor/fontawesome/css/brands.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/datatables/datatables.min.css" rel="stylesheet">
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
                            <h3>League Manager                
                            </h3>
                        </div>
                        <div class="box box-primary">
                            <div class="box-body">
                                <table width="100%" class="table table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Tour name</th>
                                            <th>Tel</th>
                                            <th>Address</th>
                                            <th>Start date</th>
                                            <th>End date</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${list_tour}" var="tour">
                                            <tr>
                                                <td>${tour.tour_id}</td>
                                                <td>${tour.tour_name}</td>
                                                <td>${tour.phone_number}</td>
                                                <td>${tour.address}</td>                                               
                                                <td>${tour.start_date}</td>
                                                <td>${tour.end_date}</td>
                                                <td>
                                                    <a href="leaugeDetail?id=${tour.tour_id}" class="btn btn-outline-info btn-rounded"><i class="fas fa-pen"></i></a>
                                                </td>
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
        <script src="assets/vendor/jquery/jquery.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/datatables/datatables.min.js"></script>
        <script src="assets/js/initiate-datatables.js"></script>
        <script src="assets/js/script.js"></script>
    </body>

</html>