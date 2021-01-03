<%-- 
    Document   : login
    Created on : Sep 25, 2019, 4:15:25 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
    String mail = request.getParameter("email");
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project2204",
            "root", "admin");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user where email ='" + mail + "' and password ='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("email", mail);
        out.println("welcome " + mail);
        response.sendRedirect("login_success.jsp");
        PreparedStatement pstmt = con.prepareStatement("insert into user_logtime (username,login_time) values ('" + mail + "' ,?)");
        pstmt.setTimestamp(1, new java.sql.Timestamp(new java.util.Date().getTime()));
        pstmt.executeUpdate();
    } else {
        response.sendRedirect("login_fail.jsp");
        request.setAttribute("message","The email or password you entered is invalid");
        //request.getRequestDispatcher("index.html").forward(request, response);
    }
%>

