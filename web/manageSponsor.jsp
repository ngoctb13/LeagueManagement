<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Tour"%>
<!DOCTYPE html>
<%
    Tour recentTour = (Tour) session.getAttribute("recentTour");
%>
<html class="no-js" lang="en">
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Nha Tai Tro</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <!-- modernizr css -->
        <script src="assets_1/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>
        <style>
            body{
                margin: 0;
                font-family: "Arial";

            }

            .container{
                max-width: 1200px;
                margin: auto;

            }

            .content_cart{
                margin-top: 100px;
            }

            .row{
                padding-bottom: 15px;
                margin-top: 15px;
                display: flex;
                justify-content: start;
                flex-wrap: wrap;
            }


            .product {

                display: block;
                margin-right: 10px;
                position: relative;
                width: calc(100% / 4);
                margin: 0 30px;
                margin-bottom: 30px;

            }
            h2{
                text-align: center;
            }
            .product .img1{
                height: 300px;
                width: 100%;
            }
            .img1  img{
                width: 100%;
                height: 300px;
            }

            input[type="text"] {
                padding: 4px 0;
                width: calc(100%);
                color: #ccc;
                cursor: pointer;
            }
            input[type="text"]:hover{
                color: #000
            }
            .btn-delete {
                position: absolute;
                top: -13px;
                right: -3px;
            }
            .btn-delete button{
                background-color: #fff;
                border: 0;
                padding: 10px 15px;
                color: #ee1e46;
                border-radius: 50%;

            }
            .btn-delete button:hover{
                border: 1px solid #ee1e46;
                cursor: pointer;
            }
            .btn-add a{
                background-image: linear-gradient(to right top,#9467c1,#8c69c2,#846ac2,#7b6cc2,#736dc2,#736dc2,#736dc2,#736dc2,#7c6cc2,#846ac2,#8d69c2,#9567c1)!important;
                border: none;
                background-image: none;
                border: 1px solid transparent;
                border-radius: 4px;
                cursor: pointer;
                display: inline-block;
                font-size: 14px;
                font-weight: 400;
                line-height: 1.428571429;
                margin-bottom: 0;
                padding: 5px;
                text-align: center;
                touch-action: manipulation;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
                vertical-align: middle;
                white-space: nowrap;
                margin: 30px;
                text-decoration: none;
                color: #fff;

            }
            .form-control{
                margin: 0;
            }

        </style>

        <!-- main header area start -->
        <jsp:include page="LeaugeLayout/header.jsp"/>
        <!-- main header area end -->
        <!-- header area start -->
        <div class="header-area header-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12  d-none d-lg-block">
                        <jsp:include page="LeaugeLayout/navbar.jsp"/>
                    </div>

                </div>
            </div>
        </div>
        <!-- header area end -->
        <!-- page title area end -->
        <div class="container">

            <div class="content">

                <h2 id="">Sponsor</h2>
                <div class="btn-add">
                    <a href="addSponsor.jsp?tour_id=<%=recentTour.getTour_id()%>" class="add-nhataitro"><i class="fa-solid fa-plus"></i> Add Sponsor</a>
                </div>
                <div class="row">
                    <c:forEach items="${sponsorList}" var="s">
                        <div class="product">
                            <a href="updateSponsor.jsp?sponsor_id=${s.sponsor_id}" class="img1">
                                <img id="imageContainer" src="./images/${s.image}">
                            </a>

                            <input value="${s.link}" type="text" name="" id="">
                            <div class="btn-delete">
                                <button type="button" onclick="showMess(${s.sponsor_id})"><i class="fa-solid fa-xmark"></i></button>
                            </div>
                        </div>
                    </c:forEach>

                    <!-- comment -->



                </div>



            </div>

        </div> 

        <script src="assets_1/js/vendor/jquery-2.2.4.min.js"></script>
        <!-- bootstrap 4 js -->
        <script src="assets_1/js/popper.min.js"></script>
        <script src="assets_1/js/bootstrap.min.js"></script>
        <script src="assets_1/js/owl.carousel.min.js"></script>
        <script src="assets_1/js/metisMenu.min.js"></script>
        <script src="assets_1/js/jquery.slimscroll.min.js"></script>
        <script src="assets_1/js/jquery.slicknav.min.js"></script>

        <!-- start chart js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
        <!-- start highcharts js -->
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script src="https://code.highcharts.com/modules/exporting.js"></script>
        <script src="https://code.highcharts.com/modules/export-data.js"></script>
        <!-- start amcharts -->
        <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
        <script src="https://www.amcharts.com/lib/3/ammap.js"></script>
        <script src="https://www.amcharts.com/lib/3/maps/js/worldLow.js"></script>
        <script src="https://www.amcharts.com/lib/3/serial.js"></script>
        <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
        <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
        <!-- all line chart activation -->
        <script src="assets_1/js/line-chart.js"></script>
        <!-- all pie chart -->
        <script src="assets_1/js/pie-chart.js"></script>
        <!-- all bar chart -->
        <script src="assets_1/js/bar-chart.js"></script>
        <!-- all map chart -->
        <script src="assets_1/js/maps.js"></script>
        <!-- others plugins -->
        <script src="assets_1/js/plugins.js"></script>
        <script src="assets_1/js/scripts.js"></script>
        <script src="./jquery-3.6.4.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script >


                                    // var themelement = $(".btn-add button").click(function(){
                                    //   var element = $("<div>").attr("class", "product"); 

                                    //   element.append(a); 
                                    //   element.append(input); 
                                    //   element.append(xoa); 
                                    //   a.append(img);
                                    //   xoa.append(btn_xoa);
                                    //   btn_xoa.append(icon);


                                    //   $(".row").append(element);
                                    //     });
                                    //     var a = $("<a>").attr("class", "img1"); 
                                    //     var img = $("<img>").attr("src", "./images/bg_3.jpg"); 
                                    //     var input = $("<input>").attr("type", "text"); 
                                    //     var xoa =  $("<div>").attr("class", "btn-delete"); 
                                    //     var btn_xoa =  $("<button>").attr("type", "button"); 
                                    //       icon = $("<i>").attr("class", "fa-solid fa-xmark"); 


                                    function showMess(sponsor_id) {
                                        var option = confirm('Are you sure to delete this sponsor?');
                                        if (option === true) {
                                            window.location.href = 'deleteSponsor?sponsor_id=' + sponsor_id;
                                        }
                                    }
        </script>
    </body>

</html>