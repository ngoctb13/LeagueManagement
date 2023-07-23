<%-- 
    Document   : navbar
    Created on : Jun 21, 2023, 12:11:00 AM
    Author     : Admin
--%>
<%@page import="model.User"%>
<%@page import="dao.TourDAO"%>
<%@page import="model.Tour"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%
    Tour recentTour = (Tour) session.getAttribute("recentTour");
    User curUser = (User) session.getAttribute("user");
%>
<div class="horizontal-menu">
    <nav>
        <ul id="nav_menu">
            <li>
                <a href="leaugeProfile?tour_id=<%=recentTour.getTour_id()%>"><i class="ti-dashboard"></i><span>Dashboard</span></a>               
            </li>
            <li class="">
                <a href="RegisteredTeamList?tourID=<%=recentTour.getTour_id()%>"><i class="ti-layout-sidebar-left"></i><span>Registered Team List</span></a>               
            </li>
            <li>
                <a href="participantList?tour_id=<%=recentTour.getTour_id()%>"><i class="ti-pie-chart"></i><span>Participant List</span></a>
            </li>
            <li>
                <a href="matches?tour_id=<%=recentTour.getTour_id()%>"><i class="ti-pie-chart"></i><span>Matches</span></a>
            </li>
            <li>
                <a href="leagueSchedule?tour_id=<%=recentTour.getTour_id()%>"><i class="ti-pie-chart"></i><span>Schedule</span></a>
            </li>
            <%if(curUser.getUser_id() == recentTour.getHost()) {%>            
                <li>
                <a href="javascript:void(0)"><i class="ti-pie-chart"></i><span>Setting</span></a>
                <ul class="submenu">
                    <li><a href="leaugeSetting.jsp?tour_id=<%=recentTour.getTour_id()%>">Leauge Update</a></li>
                    <li><a href="#">Authorization</a></li>
                    <li><a href="sponsorList?tour_id=<%=recentTour.getTour_id()%>">Sponsor</a></li>
                    <li><a href="arrangeMatch?tour_id=<%=recentTour.getTour_id()%>">Arrange Matches</a></li>
                    <li><a href="listMatch?tour_id=<%=recentTour.getTour_id()%>">Setting Schedule</a></li>
                </ul>
            </li>
            <%}%>
                       
        </ul>
    </nav>
</div>
