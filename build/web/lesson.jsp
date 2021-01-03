<%-- 
    Document   : lesson
    Created on : Nov 5, 2019, 5:11:49 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Easycourse - Education </title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <!--<link rel="stylesheet" href="css/owl.theme.default.min.css">-->
        <link rel="stylesheet" href="css/style.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    </head>

    <body>
        <!-- MENU -->
        <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>
                    <a href="login_success.jsp" class="navbar-brand">Easycourse</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li class=""><a href="my_courses.jsp" class="smoothScroll">My Courses</a></li>  
                </ul>
            </div>
        </section> <br><br>

        <%
            String cname = request.getParameter("coursename");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project2204",
                    "root", "admin");
            Statement s = c.createStatement();
            Statement su = c.createStatement();
            String sql = " select * from lesson where course_name = '" + cname + "'";
            ResultSet rec = s.executeQuery(sql);
            ResultSet re = su.executeQuery(sql);
            int i = 1;
        %>


        <div class="row">
            <div role="tabpanel">

                <div class="col-md-4 col-sm-4">
                    <ul class="nav nav-pills brand-pills nav-stacked" role="tablist">
                        <%while ((rec != null) && (rec.next())) {%>
                        <li role="presentation" class="brand-nav"><a href="#tab<%=i%>" aria-controls="tab<%=i%>" role="tab" data-toggle="tab"><%=rec.getString("lesson_name")%></a></li>
                            <% i++; }  %>  
                    </ul>
                </div>
                    <% i=1;%>
                <div class="col-md-8 col-sm-8">
                    <div class="tab-content">
                         <%while (re.next()) { %>
                        <div role="tabpanel" class="tab-pane" id="tab<%=i%>">
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item" src="<%=re.getString("content")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            
                            </div>
                            <p><%=re.getString("lesson_name")%> </p>
                        </div>
                         <% i++; } %>  
                    </div>
                </div>
                            
            </div>
        </div>

        <!-- SCRIPTS -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/custom.js"></script>          

        
    </body>


</html>
