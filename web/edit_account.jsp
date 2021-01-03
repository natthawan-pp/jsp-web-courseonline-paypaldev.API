<%-- 
    Document   : edit_account
    Created on : Nov 2, 2019, 9:15:48 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
    String fullname = request.getParameter("name");    
    String mail = request.getParameter("email");    
    String pass = request.getParameter("password");    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project2204",
            "root", "admin");
    Statement st = con.createStatement();
    PreparedStatement ps = null;
    String sql = "UPDATE user SET fullname = '"+fullname+"', email = '"+mail+"', password = '"+pass+"' WHERE email = '"+mail+"'"; 
    ps = con.prepareStatement(sql);
    int i = ps.executeUpdate();
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("account.jsp");
       //out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
       response.sendRedirect("account.jsp");
    }
%>
