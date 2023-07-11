<%-- 
    Document   : header
    Created on : Jun 21, 2023, 3:42:57 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="mainheader-area">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-3">
                <div class="logo">
                    <a href="index.html"><img src="images/SOCCER.png" alt="logo"></a>
                </div>
            </div>
            <!-- profile info & task notification -->
            <div class="col-md-9 clearfix text-right">                        
                <div class="clearfix d-md-inline-block d-block">
                    <div class="user-profile m-0">
                        <img class="avatar user-thumb" src="assets_1/images/author/avatar.png" alt="avatar">
                        <h4 class="user-name dropdown-toggle" data-toggle="dropdown">${sessionScope.user.full_name} <i class="fa fa-angle-down"></i></h4>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="home.jsp">Home</a>
                            <a class="dropdown-item" href="leaugeList">My Leauge</a>
                            <a class="dropdown-item" href="logout">Log Out</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
