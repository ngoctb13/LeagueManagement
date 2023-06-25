<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
    <jsp:include page="header.jsp"/>
    <body class="body-bg sub-page tournament-detail-page">
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- preloader area start -->
        <!--        <div id="preloader">
                    <div class="loader"></div>
                </div>-->
        <!-- preloader area end -->
        <!-- main wrapper start -->
        <div class="horizontal-main-wrapper">
            <!-- main header area start -->
            <!-- main header area end -->
            <!-- header area start -->
            <!-- header area end -->
            <!-- page title area end -->
            <div class="main-content-inner my-4">
                <div class="container">
                    <div class="item-block">
                        <div class="image-item"><img src="${pageContext.request.contextPath}/images/${empty tour.avatar ? "no_img.jpeg" : tour.avatar}"></div>
                        <div class="body">
                            <div class="title-body">${tour.tour_name}</div>
                            <div class="content">
                                <div class="item-content">Team quantity: ${tour.team_quantity}</div>
                                <div class="item-content">Tel: ${tour.phone_number}</div>
                                <div class="item-content">Address: ${tour.address}</div>
                                <div class="item-content">Time: ${tour.start_date}-${tour.end_date}</div>
                                <div class="item-content">Description: ${tour.description}</div>
                            </div>
                        </div>
                    </div> 
                </div> 
            </div>
            <!-- main content area end -->
            <!-- footer area start-->

            <!-- footer area end-->
        </div>
    </body>
    <jsp:include page="footer.jsp"/>
</html>
