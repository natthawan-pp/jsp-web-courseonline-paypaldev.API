<%-- 
    Document   : my_courses
    Created on : Nov 2, 2019, 4:09:13 PM
    Author     : lenovo
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>


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
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>


    <body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

        <!-- PRE LOADER -->
        <section class="preloader">
            <div class="spinner">
                <span class="spinner-rotate"></span>  
            </div>
        </section>

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
                    <li><a href="login_success.jsp" class="smoothScroll">All Courses</a></li>
                    <li class="active"><a href="my_courses.jsp" class="smoothScroll">My Courses</a></li>  
                    <li><a href="account.jsp" class="smoothScroll">Account</a></li>   
                    <li><a href='logout.jsp'><i class="fa fa-sign-out"></i>Log Out</a></li>   
                </ul>

            </div>
        </section> <br><br><br><br>

        <%
            String mail = (String) session.getAttribute("email");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project2204",
                    "root", "admin");
            Statement s = c.createStatement();
            ResultSet rec = s.executeQuery("SELECT cr.course_name, cr.student_name, c.course_name , c.course_duration, c.course_price, c.course_description, c.instructor_name "
                    + "FROM course_regis as cr, course as c WHERE student_name = '" + mail + "' AND cr.course_name = c.course_name GROUP BY cr.course_name");
        %>

        <!--        select * from course_regis where student_name ='" + mail + "' 
        SELECT course_regis.course_name FROM course_regis  JOIN course ON course_regis.course_name = course.course_name -->
        <!--SELECT course_name, course_duration, course_price, course_descriptoion,instroctor_name FROM course_regis, course WHERE course_regis.course_name = course.course_name GROUP BY course_name-->


        <div class="container">
            <%while ((rec != null) && (rec.next())) {%>
            <div class="row">
                <div class="list-group">
                    <a class="list-group-item list-group-item-action flex-column align-items-start ">
                        <form action="delete_course.jsp?<%=rec.getString("course_name")%>" method="post">
                            <input type="hidden" name="coursename" value="<%=rec.getString("course_name")%>">
                            <div style="text-align: right"><button type="submit" class="btn btn-danger" ><i class="fa fa-trash"></i></button></div>
                        </form>     
                        <div class="d-flex w-100 justify-content-between">
                            <h3 class="mb-1"><%=rec.getString("course_name")%></h3>
                            <small><%=rec.getString("course_duration")%></small>
                        </div>
                        <p class="mb-1"><%=rec.getString("course_description")%></p>
                        <small><%=rec.getString("instructor_name")%></small> 
                        <input type="hidden" name="coursename" value="<%=rec.getString("course_name")%>">
                        <form action="lesson.jsp?<%=rec.getString("course_name")%>" method="post">
                            <input type="hidden" name="coursename" value="<%=rec.getString("course_name")%>">
                            <div style="text-align: center"><button type="submit" class="btn btn-info" >Start Learn</button></div>
                        </form>      
                    </a>
                </div>
            </div>
            <%}%>
        </div>

        <br><br><br><br>
        <!-- SCRIPTS -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/custom.js"></script>

    </body>

    <!-- FOOTER -->
    <footer id="footer">

    </footer>
</html>