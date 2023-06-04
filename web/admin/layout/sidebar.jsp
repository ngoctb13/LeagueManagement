<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav id="sidebar" class="active">
    <div class="sidebar-header">
        <img src="images/SOCCER.png" alt="bootraper logo" class="app-logo">
    </div>
    <ul class="list-unstyled components text-secondary">
        
        
        
        <li>
            <a href="dashboard?action=default"><i class="fas fa-home"></i> Dashboard</a>
        </li>
        
        
        
        <li>
            <a href="#usermanagementmenu" data-bs-toggle="collapse" aria-expanded="false" class="dropdown-toggle no-caret-down"><i class="fas fa-layer-group"></i> User Management</a>
            <ul class="collapse list-unstyled" id="usermanagementmenu">
                <li>
                    <a href="user?action=all"><i class="fas fa-angle-right"></i> User List</a>
                </li>
                <li>
                    <a href="user?action=feedback"><i class="fas fa-angle-right"></i> Feedback</a>
                </li>
                <li>
                    <a href="user?action=deleterequest"><i class="fas fa-angle-right"></i> Delete Request</a>
                </li>              
            </ul>
        </li>

        
        <li>    
            <a href="#"><i class="fas fa-cog"></i>Settings</a>
        </li>
    </ul>
</nav>