<%-- 
    Document   : navbar
    Created on : Jun 21, 2023, 12:11:00 AM
    Author     : Admin
--%>
<%@page import="dao.TourDAO"%>
<%@page import="model.Tour"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%
    Tour recentTour = (Tour) session.getAttribute("recentTour");    
%>
<div class="horizontal-menu">
    <nav>
        <ul id="nav_menu">
            <li>
                <a href="leaugeProfile?tour_id=<%=recentTour.getTour_id()%>"><i class="ti-dashboard"></i><span>Dashboard</span></a>               
            </li>
            <li class="">
                <a href="#"><i class="ti-layout-sidebar-left"></i><span>Registered Team List</span></a>               
            </li>
            <li>
                <a href="participantList?tour_id=<%=recentTour.getTour_id()%>"><i class="ti-pie-chart"></i><span>Participant List</span></a>
            </li>
            <li>
                <a href="#"><i class="ti-pie-chart"></i><span>Matches</span></a>
            </li>
            <li>
                <a href="#"><i class="ti-pie-chart"></i><span>Standings</span></a>
            </li>
            <li>
                <a href="javascript:void(0)"><i class="ti-pie-chart"></i><span>Setting</span></a>
                <ul class="submenu">
                    <li><a href="leaugeSetting.jsp?tour_id=<%=recentTour.getTour_id()%>">Leauge Update</a></li>
                    <li><a href="#">Authorization</a></li>
                    <li><a href="manageSponsor.jsp?tour_id=<%=recentTour.getTour_id()%>">Sponsor</a></li>
                </ul>
            </li>           
        </ul>
    </nav>
</div>
