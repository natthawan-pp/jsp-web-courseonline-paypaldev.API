<%-- 
    Document   : logout
    Created on : Sep 25, 2019, 3:31:39 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.setAttribute("email", null);
    session.invalidate();
    response.sendRedirect("index.html");
%>