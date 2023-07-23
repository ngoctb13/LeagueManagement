<%@page import="model.Team"%>
<%@page import="model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/style1.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="css/team.css">



    </head>
    <%
        Team recentTeam = (Team) session.getAttribute("recentTeam");
    %>
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
                border: none;

            }
            .modal_inner label{
                color: white;
                font-size: 17px;
                font-weight: bold;

            }
            .modal_inner form table tr td{
                width: 70%;
                margin-right: 10px;
                border: none;

            }
            .modal_inner form table tr td input, .modal_inner form input,select  {
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
            .row_card{
                padding: 0;
            }
            .container.main_product {
                justify-content: center;
                align-items: center;
            }
        </style>

        <div class="modal1 hide">

            <div class="modal_inner">

                <form id="myForm" action="joinTeamRequest" method=""><div class="modal_header3" onsubmit="validateAndSubmit()" >
                        <div class="icon_exit"><span class="fa fa-times"></span></div>
                        <table class="table">
                            <tr>
                                <th><label for="" >Enter Shirt Number You Want: </label></th>
                                <td><input type="text" name="shirt_number" id="" value= "" required="Not empty"></td>
                            </tr>
                            <tr>
                                <th><label for="">Enter Position You Want: </label></th>
                                <td><input type="text" name="position" id="" value= "" required="Not empty"></td>
                            </tr>
                            <tr>
                                <th><label for="">Please select Level: </label></th>
                                <td>
                                    <select name="level" id="level">
                                        <option value="hide" hidden></option>
                                        <option value="Professional">Professional</option>
                                        <option value="Semi Professional">Semi Professional</option>
                                        <option value="High level">High level</option>
                                        <option value="Intermediate">Intermediate</option>
                                        <option value="Recreational">Recreational</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">Please select Age: </label></th>
                                <td>
                                    <select name="age" id="age">
                                        <option value="hide" hidden></option>
                                        <option value="15-20">15-20</option>
                                        <option value="21-25">21-25</option>
                                        <option value="25-30">25-30</option>
                                        <option value=">30">>30</option>
                                    </select>
                                </td>
                            </tr>
                        </table>    
                        <input type="submit" name="" id="" value= "Submit"  style="width: 30%;">

                    </div> 
                </form>
            </div>
        </div>
        <c:if test="${error.equals('fail')}">
            <div class="alert alert-info alert-dismissable">
                <i class="fa fa-coffee"></i>
                Sent request failed! <strong> Please choose your level and your age!</strong>.
            </div>
        </c:if>
        <c:if test="${error.equals('ok')}">
            <div class="alert alert-info alert-dismissable">
                <i class="fa fa-coffee"></i>
                Sent request<strong> successfully!</strong>.
            </div>
        </c:if>
        
       
        

        <div class="site-wrap">
            

            <div class="site-mobile-menu site-navbar-target">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div>


            <jsp:include page="header.jsp"></jsp:include>


                <div class="hero overlay" style="background-image: url('images/bg_3.jpg');">
                    <div class="container main_product">
                        <div class="img1 col-md-5">
                            <img src="./images/bg_2.jpg" alt="">
                        </div>
                        <div class="info col-md-5" >  
                            <h2>${gotTeam.team_name}</h2>
                        <form action="">
                            <table class="table">
                                <tr>
                                    <th><i class="fa-solid fa-user"></i></th>
                                    <td> Người liên hệ:</td>
                                    <td>${gotCoach.full_name}</td>
                                </tr>
                                <tr>
                                    <th scope="row"><i class="fa-solid fa-phone"></i></th>
                                    <td> Số điện thoại:</td>
                                    <td>${gotTeam.phone_number}</td>
                                </tr>
                                <tr>
                                    <th scope="row"><i class="fa-solid fa-envelope"></i></th>
                                    <td>Email:</td>
                                    <td> ${gotTeam.email}</td>
                                </tr>
                                <tr>
                                    <th scope="row"><i class="fa-solid fa-people-group"></i></th>
                                    <td >Thành viên:</td>
                                    <td> 20 Người</td>
                                </tr>


                            </table>
                        </form>
                    </div>


                    <div class="container btn_thamgiadoibong" id = "joinButton" >

                        <div class="row">
                            <div  style="z-index: 0;" class="thamgiadoi">
                                <button type="submit" >Tham gia đội</button>
                            </div>
                        </div>

                    </div>



                </div>

            </div>  


            <div class="site-section">
                <div class="container">
                    <div class="row">
                        <div class="col-6 title-section">
                            <h2 class="heading">Star Players / Videos</h2>
                        </div>
                        <div class="col-6 text-right">
                            <div class="custom-nav">
                                <a href="#" class="js-custom-prev-v2"><span class="icon-keyboard_arrow_left"></span></a>
                                <span></span>
                                <a href="#" class="js-custom-next-v2"><span class="icon-keyboard_arrow_right"></span></a>
                            </div>
                        </div>
                    </div>


                    <div class="owl-4-slider owl-carousel">
                        <div class="item">
                            <div class="video-media">
                                <img src="images/img_1.jpg" alt="Image" class="img-fluid">
                                <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
                                    <span class="icon mr-3">
                                        <span class="icon-play"></span>
                                    </span>
                                    <div class="caption">
                                        <span class="meta">#10 / Forward</span>
                                        <h3 class="m-0">Phillip Hobbs</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="video-media">
                                <img src="images/img_2.jpg" alt="Image" class="img-fluid">
                                <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
                                    <span class="icon mr-3">
                                        <span class="icon-play"></span>
                                    </span>
                                    <div class="caption">
                                        <span class="meta">#7 / Forward</span>
                                        <h3 class="m-0">Garry Norris</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="video-media">
                                <img src="images/img_3.jpg" alt="Image" class="img-fluid">
                                <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
                                    <span class="icon mr-3">
                                        <span class="icon-play"></span>
                                    </span>
                                    <div class="caption">
                                        <span class="meta">#4 / Forward</span>
                                        <h3 class="m-0">Romolu Harper</h3>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <div class="item">
                            <div class="video-media">
                                <img src="images/img_1.jpg" alt="Image" class="img-fluid">
                                <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
                                    <span class="icon mr-3">
                                        <span class="icon-play"></span>
                                    </span>
                                    <div class="caption">
                                        <span class="meta">#4 / Forward</span>
                                        <h3 class="m-0">Phillip Hobbs</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="video-media">
                                <img src="images/img_2.jpg" alt="Image" class="img-fluid">
                                <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
                                    <span class="icon mr-3">
                                        <span class="icon-play"></span>
                                    </span>
                                    <div class="caption">
                                        <span class="meta">#1 / GoalKeeper</span>
                                        <h3 class="m-0">Garry Norris</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="video-media">
                                <img src="images/img_3.jpg" alt="Image" class="img-fluid">
                                <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
                                    <span class="icon mr-3">
                                        <span class="icon-play"></span>
                                    </span>
                                    <div class="caption">
                                        <span class="meta">#8 / Forward</span>
                                        <h3 class="m-0">Romolu Harper</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>



            <footer class="footer-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="widget mb-3">
                                <h3>News</h3>
                                <ul class="list-unstyled links">
                                    <li><a href="#">All</a></li>
                                    <li><a href="#">Club News</a></li>
                                    <li><a href="#">Media Center</a></li>
                                    <li><a href="#">Video</a></li>
                                    <li><a href="#">RSS</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="widget mb-3">
                                <h3>Tickets</h3>
                                <ul class="list-unstyled links">
                                    <li><a href="#">Online Ticket</a></li>
                                    <li><a href="#">Payment and Prices</a></li>
                                    <li><a href="#">Contact &amp; Booking</a></li>
                                    <li><a href="#">Tickets</a></li>
                                    <li><a href="#">Coupon</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="widget mb-3">
                                <h3>Matches</h3>
                                <ul class="list-unstyled links">
                                    <li><a href="#">Standings</a></li>
                                    <li><a href="#">World Cup</a></li>
                                    <li><a href="#">La Lega</a></li>
                                    <li><a href="#">Hyper Cup</a></li>
                                    <li><a href="#">World League</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="widget mb-3">
                                <h3>Social</h3>
                                <ul class="list-unstyled links">
                                    <li><a href="#">Twitter</a></li>
                                    <li><a href="#">Facebook</a></li>
                                    <li><a href="#">Instagram</a></li>
                                    <li><a href="#">Youtube</a></li>
                                </ul>
                            </div>
                        </div>

                    </div>

                    <div class="row text-center">
                        <div class="col-md-12">
                            <div class=" pt-5">
                                <p>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;
                                    <script>
                                        document.write(new Date().getFullYear());
                                    </script> All rights reserved | This template is made with <i class="icon-heart"
                                                                                                  aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </p>
                            </div>
                        </div>

                    </div>
                </div>
            </footer>



        </div>
        <!-- .site-wrap -->

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



        <script>
                                        var form = document.getElementById("myForm");
                                        var team_id = '<%= session.getAttribute("team_id")%>';
                                        var hiddenInput = document.createElement("input");
                                        hiddenInput.type = "hidden";
                                        hiddenInput.name = "team_id";
                                        hiddenInput.value = team_id;
                                        form.appendChild(hiddenInput);
        </script>
        <script>
            var modal = document.querySelector('.modal1')
            var hienthi = document.querySelector('.thamgiadoi button')
            var andi = document.querySelector('.icon_exit span')

            function toggModal() {
                modal.classList.toggle('hide')
            }

            hienthi.addEventListener('click', toggModal);
            andi.addEventListener('click', toggModal);

        </script>
        <script>
            // Hàm xử lý khi form submit
            function validateAndSubmit() {
                var selectedLevel = document.getElementById("level").value;

                // Kiểm tra xem level có phải là "hidden"
                if (selectedLevel === "hidden") {
                    // Hiển thị thông báo alert yêu cầu chọn lại level
                    alert("Please choose a valid level.");
                    return false; // Chặn việc gửi yêu cầu form
                }
                // Nếu level hợp lệ, form sẽ được gửi lên server và xử lý bởi Servlet
                return true;
            }
        </script>
    </body>

</html>