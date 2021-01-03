<%-- 
    Document   : delete_course
    Created on : Nov 5, 2019, 4:42:41 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
    String uname=(String)session.getAttribute("email");  
    String cname = request.getParameter("coursename"); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project2204",
            "root", "admin");
    Statement st = con.createStatement();
    int i = st.executeUpdate("DELETE FROM course_regis WHERE course_name = '"+cname+"' AND student_name = '"+uname+"'" ); 
    if (i > 0) {
        response.sendRedirect("my_courses.jsp");
    } else {
        response.sendRedirect("login_success.jsp");
    }
%>


