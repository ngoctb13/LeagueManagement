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
                            <h3>Thông tin tài khoản</h3>
                        </div>
                        <div class="row">




                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header"></div>
                                    <div class="card-body">
                                        <h5 class="card-title"></h5>
                                        <form action="updateUser" class="needs-validation" novalidate accept-charset="utf-8">
                                            <div class="mb-3">
                                                <label for="address" class="form-label">User ID</label>
                                                <input id="user_id" name="id" type="text" class="form-control" value="${user.user_id}" readonly="">
                                                <div class="valid-feedback">Looks good!</div>
                                                <div class="invalid-feedback">Please enter your name.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="address" class="form-label">Full Name</label>
                                                <input id="full_name" name="full_name" type="text" class="form-control" value="${user.full_name}" required="">
                                                <div class="valid-feedback">Looks good!</div>
                                                <div class="invalid-feedback">Please enter your name.</div>
                                            </div>
                                            <div class="row g-2">
                                                <div class="mb-3 col-md-6">
                                                    <label for="email" class="form-label">Email</label>
                                                    <input readonly="readonly" id="email" name="email" type="text" class="form-control" value="${user.email}" readonly="">
                                                    <small class="form-text text-muted">Enter a valid email address.</small>
                                                    <div class="valid-feedback">Looks good!</div>
                                                    <div class="invalid-feedback">Please enter your email address.</div>
                                                </div>
                                                <div class="mb-3 col-md-6">
                                                    <label for="password" class="form-label">Password</label>
                                                    <input id="password" name="password" type="text" class="form-control" value="${user.password}" required="">
                                                    <small class="form-text text-muted">Your password must be 8-20 characters long, contain letters and numbers only.</small>
                                                    <div class="valid-feedback">Looks good!</div>
                                                    <div class="invalid-feedback">Please enter your password.</div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="address" class="form-label">Phone Number</label>
                                                <input id="phone_number" name="phone_number" type="text" class="form-control" value="${user.phone_number}" required="">
                                                <div class="valid-feedback">Looks good!</div>
                                                <div class="invalid-feedback">Please enter your phone number.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="address" class="form-label">Address</label>
                                                <input id="address" name="address" type="text" class="form-control" value="${user.address}" required="">
                                                <div class="valid-feedback">Looks good!</div>
                                                <div class="invalid-feedback">Please enter your address.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="address" class="form-label">Avatar Link</label>
                                                <input id="avatar_link" name="avatar_link" type="text" class="form-control" value="${user.avatar_link}" required="">
                                                <div class="valid-feedback">Looks good!</div>
                                                <div class="invalid-feedback">Please enter your avatar link.</div>
                                            </div>
                                            <div class="mb-3 col-md-4">
                                                <label for="role" class="form-label">Role</label>
                                                <select name="role" class="form-select" required>
                                                    <option value="" selected>Choose...</option>
                                                    <c:forEach items="${role}" var="r">
                                                        <option <c:if test="${user.role == r.role_id}">selected</c:if> value="${r.role_id}">${r.role_name}</option>
                                                    </c:forEach>
                                                </select>
                                                <div class="valid-feedback">Looks good!</div>
                                                <div class="invalid-feedback">Please select a Role.</div>
                                            </div>

                                            <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Save</button>
                                        </form>
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