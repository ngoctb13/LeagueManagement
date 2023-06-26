<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="vi">

    <head>
        <title>Soccer &mdash; Website by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">

        <link rel="stylesheet" href="css/jquery.fancybox.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">

        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/style.css">



    </head>

    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="hero overlay" style="background-image: url('images/bg_3.jpg');">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-9 mx-auto text-center">
                            <h1 class="text-white">Your Profile</h1>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                   
            <!-- left column -->
            <div class="col-md-3" style="padding-top: 50px;">
                <div class="text-center">
                    <div class="anh" style="width: 100%; height: 100%;">
                        <img src="${sessionScope.user.avatar_link}" id="img" class="avatar img-circle img-thumbnail"
                            alt="avatar" style="width: 100%; height: 100%;">
                    </div>
                    <h6>Upload a different photo...</h6>
                    <form action="uploadAvatar" method="POST" enctype="multipart/form-data">
                        <input type="file" name="avatarFile" id="addImage" accept="image/png, image/jpeg"
                            onchange="chooseFile(file)" class="form-control">
                        <button type="submit" class="btn btn-primary">Upload</button>
                    </form>
                </div>
            </div>

            <div class="col-md-9 personal-info" style="padding-top: 50px;">
        <script>
            var imageInput = document.getElementById("addImage");
            var selectedImage = document.getElementById("img");

            // Add an event listener to the input file element
            imageInput.addEventListener("change", function(event) {
            var file = event.target.files[0]; // Get the selected file

            if (file) {
                var reader = new FileReader(); // Create a FileReader object

                reader.onload = function(e) {
                selectedImage.src = e.target.result; // Set the source of the image element to the selected file
                selectedImage.style.display = "block"; // Display the image element
                };

                reader.readAsDataURL(file); // Read the selected file as a Data URL
            }
            });
        </script> 

                <div class="col-md-9 personal-info" style="padding-top: 50px;">
                    <!--                        <div class="alert alert-info alert-dismissable">
                                                <a class="panel-close close" data-dismiss="alert">×</a> 
                                                <i class="fa fa-coffee"></i>
                                                This is an <strong>.alert</strong>. Use this to show important messages to the user.
                                            </div>-->
                    <c:if test="${status.equals('SUCCESS')}">
                        <div class="alert alert-info alert-dismissable">
                            <a class="panel-close close" data-dismiss="alert">×</a> 
                            <i class="fa fa-coffee"></i>
                            UPDATE PROFILE <strong>SUCCESSFULLY!</strong>.
                        </div>
                    </c:if>
                    <c:if test="${status.equals('FAILED')}">
                        <div class="alert alert-info alert-dismissable">
                            <a class="panel-close close" data-dismiss="alert">×</a> 
                            <i class="fa fa-coffee"></i>
                            UPDATE PROFILE <strong>FAILED!</strong>.
                        </div>
                    </c:if>
                    <form action="userUpdate" class="form-horizontal"  role="form" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Email:</label>
                            <div class="col-lg-8">
                                <input id="user_email" name="email" class="form-control" type="text" value="${sessionScope.user.email}" required onkeyup="emailValidate()">
                                <div style="text-align:center">
                                    <span id="email-erorr"></span>
                                </div>
                            </div>
                        </div> 

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Your Name:</label>
                            <div class="col-lg-8">
                                <input id="full_name" name="full_name" class="form-control" type="text" value="${sessionScope.user.full_name}" required onkeyup="validateName()">
                                <div style="text-align:center">
                                    <span id="name-erorr"></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Your Phone Number:</label>
                            <div class="col-lg-8">
                                <input id="phone_number" name="phone_number" class="form-control" type="text" value="${sessionScope.user.phone_number}" required onkeyup="validatePhoneNumber()">
                                <div style="text-align:center">
                                    <span id="phone-erorr"></span>
                                </div>
                            </div>  
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Address:</label>
                            <div class="col-lg-8">
                                <input name="address" class="form-control" type="text" value="${sessionScope.user.address}" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Your Avatar Link</label>
                            <div class="col-lg-8">
                                <input name="avatar_link" class="form-control" type="text" value="${sessionScope.user.avatar_link}" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-3" style="padding-top: 10px;">
                                <button type="submit" onclick="return (emailValidate() && validatePassword() && validateName() && validatePhoneNumber())" class="btn btn-primary py-2 px-5">Update</button>
                            </div>
                        </div>                               
                    </form>
                    <div class="col-lg-3" style="padding-top: 10px;">
                        <a href="deleteAccountRequest.jsp">
                            <button  class="btn btn-primary py-2 px-5">Delete Your Account</button>
                        </a> 
                    </div>
                </div>
            </div>
        </div>




        <jsp:include page="footer.jsp"></jsp:include>
        <!-- .site-wrap -->
        <script type="text/javascript">
            function emailValidate() {
                var email = document.getElementById("user_email");
                var text = document.getElementById("email-erorr");
                var pattern = /^\S+@\S+\.\S+$/;


                if (!email.value.match(pattern)) {
                    text.innerHTML = "Please enter a valid email!";
                    text.style.color = "#ff0000";
                    return false;
                } else {
                    text.innerHTML = "";
                    return true;
                }
                if (email.value === "") {
                    text.innerHTML = "";
                }
            }

            function validatePassword() {
                var password = document.getElementById("password").value;
                var text = document.getElementById("password-erorr");
                if (password.length > 20) {
                    text.innerHTML = "Password should not exceed 20 characters.";
                    text.style.color = "#ff0000";
                    return false;
                } else {
                    text.innerHTML = "";
                    return true;
                }
            }
            function validateName() {
                var full_name = document.getElementById("full_name").value;
                var text = document.getElementById("name-erorr");
                if (full_name.length > 50 || !full_name.match(/^[a-zA-Z\s]+$/)) {
                    text.innerHTML = "Full name must be alphanumeric character and should not exceed 50 characters.";
                    text.style.color = "#ff0000";
                    return false;
                } else {
                    text.innerHTML = "";
                    return true;
                }
            }
            function validatePhoneNumber() {
                var phone_number = document.getElementById("phone_number").value;
                var text = document.getElementById("phone-erorr");
                
                if (phone_number.length !== 10) {
                    text.innerHTML = "Phone number must be 10 digits!";
                    text.style.color = "#ff0000";
                    return false;
                } else {
                    text.innerHTML = "";
                    return true;
                }
            }
        </script>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/bootstrap-datepicker.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.mb.YTPlayer.min.js"></script>


        <script src="js/main.js"></script>

    </body>

</html>