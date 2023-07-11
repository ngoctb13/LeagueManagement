<%-- 
    Document   : sidebar
    Created on : May 27, 2023, 11:45:47 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="sidebar-menu">
    <div class="sidebar-header">
        <div class="logo">
            <a href="home.jsp"><img src="images/SOCCER.png" alt="logo"></a>
        </div>
    </div>
    <div class="main-menu">
        <div class="menu-inner">
            <nav>
                <ul class="metismenu" id="menu">
                    <li class="active">
                        <a href="javascript:void(0)" aria-expanded="true"><i class="ti-palette"></i><span>Team Management</span></a>
                        <ul class="collapse">
                            <li class=""><a href="teamList">Team List</a></li>                         
                        </ul>
                    </li>
                    <li class=""><a href="myLeauge">My Leauge Created</a></li>
                    <li class=""><a href="leaugeMeJoin">Leauge Me Join</a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
