    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="model.User"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <title>Soccer &mdash; Website by Colorlib</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


      <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">

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

      <link rel="stylesheet" href="css/style.css.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
      <link rel="stylesheet" href="css/team.css">



    </head>

    <body>

      <style>
          .col-12{
                          position: relative;
                                                height: 1000px;

          }
            .header_Box{
                margin: 3% 4%;
                font-size: 20px;
            }
            .box{
                margin: 0 10%;
            }
            .header_Box_right{
                float: right;
            }
            #dataTables-example tr td,#dataTables-example tr th{
                color: #333
            }

           
        </style>
        <div class="col-12 content_box">
            <div class="header_Box">
                <p>
                    Requests you have sent
                </p>
                <div class="header_Box_right">
                    <div class="col-sm-6 clearfix">
                <div class="user-profile pull-right">
                    <img class="avatar user-thumb" src="assets_1/images/author/avatar.png" alt="avatar">
                    <h4 class="user-name dropdown-toggle" data-toggle="dropdown">${sessionScope.user.full_name} <i class="fa fa-angle-down"></i></h4>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="home.jsp">Home</a>
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="logout">Log Out</a>
                    </div>
                </div>
            </div>
                </div>
            </div>



               

            <div class="box box-primary">
                <div class="box-body">

                    <table width="100%" class="table table-hover" id="dataTables-example">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>Name</th>
                                                                            <th>Email</th>
                                                                            <th>Shirt number</th>
                                                                            <th>Position</th>
                                                                            <th>Status</th>
                                                                            <th></th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach items="${requestSent}" var="r" varStatus="status">
                                                                        <tr>
                                                                           <td>${teamNames[status.index]}</td>
                                                                           <td>${teamEmails[status.index]}</td>
                                                                            <td>${r.shirt_number}</td>
                                                                            <td>${r.position}</td>
                                                                            <td>${r.status}</td>
                                                                           
                                                                        </tr>
                                                                        </c:forEach>
                                                                    </tbody>
                                                                </table>

                </div>

            </div>

        </div>





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
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

      <script src="js/main.js"></script>
      

    </body>

    </html>
