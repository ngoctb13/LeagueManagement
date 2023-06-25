<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
    <jsp:include page="header.jsp"/>
    <body class="body-bg sub-page tournament-page">
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
                    <div class="list-block">
                        <c:set var="myArray" value="${list_tour}" />
                        <c:choose>
                            <c:when test="${fn:length(myArray) eq 0}">
                                <div class="font-weight-bold text-center my-3" style="font-size:20px"></div> 
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="item" items="${list_tour}">
                                    <div class="item-block">
                                        <div class="image-item"><img src="${pageContext.request.contextPath}/images/${empty item.avatar ? "no_img.jpeg" : item.avatar}"></div>
                                        <div class="body">
                                            <div class="title-body">${item.tour_name}</div>
                                            <div class="content">
                                                <div class="item-content">Team quantity: ${item.team_quantity}</div>
                                                <div class="item-content">Tel: ${item.phone_number}</div>
                                                <div class="item-content">Address: ${item.address}</div>
                                                <div class="item-content">Time: ${item.start_date}-${item.end_date}</div>
                                            </div>
                                        </div>
                                        <div class="action-body"><a href="leaugeProfile?id=${item.tour_id}">Show detail</a></div> 
                                    </div>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>                        
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
