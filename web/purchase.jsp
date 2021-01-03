<%-- 
    Document   : purchase
    Created on : Nov 15, 2019, 11:56:15 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
    String uname=(String)session.getAttribute("email");  
    String cname = request.getParameter("coursename"); 
    String payid = request.getParameter("paymentId"); 
    String amount = request.getParameter("amount");
    String status = "ชำระแล้ว";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project2204",
            "root", "admin");
    Statement st = con.createStatement();
    Statement su = con.createStatement();
    int i = st.executeUpdate("insert into purchase_history(payment_id, course_name, amount, status) "
            + "values("+ "'"+ payid + "','" + cname + "','" + amount + "','" + status + "')"); 
    PreparedStatement pstmt = con.prepareStatement("update purchase_history set user = '" + uname + "' , "
            + "date ='"+ new java.sql.Timestamp(new java.util.Date().getTime()) +"' where payment_id = '"+payid+" '");
   pstmt.executeUpdate();
   su.executeUpdate("INSERT INTO course_regis(course_name, student_name)SELECT * FROM (SELECT '"+ cname+"', '"+uname+"') "
            + "AS tmp WHERE NOT EXISTS (SELECT * FROM course_regis WHERE course_name = '"+cname+"' AND student_name = '"+uname+"' LIMIT 1)" ); 
    if (i > 0) {
        response.sendRedirect("my_courses.jsp");
    } else {
        response.sendRedirect("login_success.jsp");
    }
%>
