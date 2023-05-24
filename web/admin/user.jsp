<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                            <h3>Users                
                            </h3>
                        </div>
                        <div class="box box-primary">
                            <div class="box-body">
                                <table width="100%" class="table table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Full Name</th>
                                            <th>Phone Number</th>
                                            <th>Email</th>
                                            <th>Address</th>
                                            <th>Role</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${userList}" var="a">
                                            <tr>
                                                <td>${a.user_id}</td>
                                                <td>${a.full_name}</td>
                                                <td>${a.phone_number}</td>
                                                <td>${a.email}</td>                                               
                                                <td>${a.address}</td>
                                                <c:if test="${a.role == 1}">
                                                    <td>Admin</td>
                                                </c:if>
                                                <c:if test="${a.role == 2}">
                                                    <td>User</td>
                                                </c:if>
                                                <td class="text-end">
                                                    <a href="user?action=detail&email=${a.email}" class="btn btn-outline-info btn-rounded"><i class="fas fa-pen"></i></a>
                                                    <a href="user?action=delete&email=${a.email}" class="btn btn-outline-danger btn-rounded"><i class="fas fa-trash"></i></a>
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

