<%-- 
    Document   : register
    Created on : Sep 26, 2019, 8:53:04 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    String name = request.getParameter("fullname");    
    String mail = request.getParameter("email");    
    String pass = request.getParameter("password");    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project2204",
            "root", "admin");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into user(fullname, email, password) values("+ "'"+ name + "','" + mail + "','" + pass + "')"); 
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("register_success.jsp");
       //out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
       //response.sendRedirect("index.html");
    }
%>
