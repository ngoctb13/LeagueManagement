

 <!DOCTYPE html>

 <html class="no-js" lang="en">
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
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
     <!-- <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png"> -->
     <!-- <link rel="icon" type="image/png" href="../assets/img/favicon.ico"> -->
     <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <!-- modernizr css -->
        <script src="assets_1/js/vendor/modernizr-2.8.3.min.js"></script>
     <title>Add Sponsor</title>
     <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
     <!--     Fonts and icons     -->
     <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
     <!-- CSS Files -->
     <link href="${base}/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
     <!-- CSS Just for demo purpose, don't include it in your project -->
     <!-- <link href="../assets/css/demo.css" rel="stylesheet" /> -->
 </head>
 <style>
    .row{
        width: 80%;
        margin: 40px 10%;
    }
 </style>
 <body>
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
             <div class="content">
                <div class="container-fluid" >
                    <form  action="addSponsor" method="" enctype="multipart/form-data">
                        <div class="row">
                            <label style="margin-top: 50px ;"></label>
                            
                            <div>
                                <img  alt="imagePreview" src="./images/logo_4.png" style="width: 300px;height: 300px; margin-bottom: 30px ; "
                                id="imagePreview">
                            </div>
                            <div class="col-xxl-6" style="padding-bottom: 20px;">
                                <input name="imageSponsor" type="file" class="form-control"  id="imageInput" onchange="previewImage(event)"></input>
                            </div> 
                        </div>
                        <div class="row">
                            <div class="col-xxl-6" style="padding-bottom: 20px;">
                                <div class="form-floating">
                                    <textarea class="form-control" name="linkSponsor"  id="floatingTextarea"></textarea>
                                    <label for="floatingTextarea">Enter the link of sponsor</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xxl-2">
                                <button class="btn btn-primary" type="submit"> Add</button>
                            </div>
                        </div>
                    </form>
                </div>
             </div>
 
          <script>
            function previewImage(event) {
                var input = event.target;
                var preview = document.getElementById('imagePreview');

                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                    preview.src = e.target.result;
                    };

                    reader.readAsDataURL(input.files[0]);
                }
                }
          </script>
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
        
 </html>