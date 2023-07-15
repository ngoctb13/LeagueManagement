<%-- 
    Document   : notice.jsp
    Created on : Jul 10, 2023, 2:16:25 PM
    Author     : asus
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:include page="header.jsp"/>
        <div style="padding-top: 200px;padding-left: 100px;">
            <h1>${requestScope.notice}</h1>
        </div>

    </body>
</html>
