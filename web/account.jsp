<%-- 
    Document   : account
    Created on : Nov 2, 2019, 5:36:45 PM
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
                    <li><a href="my_courses.jsp" class="smoothScroll">My Courses</a></li>  
                    <li class="active"><a href="account.jsp" class="smoothScroll">Account</a></li>   
                    <li><a href='logout.jsp'><i class="fa fa-sign-out"></i>Log Out</a></li>   
                </ul>

            </div>
        </section> <br><br>

        <div class="container">
            <div class="row">
                <div role="tabpanel">
                    <div class="col-sm-3">
                        <ul class="nav nav-pills brand-pills nav-stacked" role="tablist">
                            <li role="presentation" class="brand-nav active"><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">ข้อมูลส่วนตัว</a></li>
                            <li role="presentation" class="brand-nav"><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">ประวัติการสั่งซื้อ</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-9">
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="tab1">

                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <%
                                        String mail = (String) session.getAttribute("email");
                                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                                        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project2204",
                                                "root", "admin");
                                        Statement s = c.createStatement();
                                        Statement st = c.createStatement();
                                        ResultSet rec = s.executeQuery("select * from user where email ='" + mail + "' ");
                                        ResultSet re = st.executeQuery("select * from purchase_history where user ='" + mail + "' ");
                                    %>

                                    <%while ((rec != null) && (rec.next())) {%>
                                    <div class="col-md-8">
                                        <div class="item">
                                            <form action="edit_account.jsp" method="post">
                                                <div class="form-group">
                                                    <label for="name">Account Name</label>
                                                    <input id="name" name="name" type="text" class="form-control validate" value="<%=rec.getString("fullname")%>">
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Account Email</label>
                                                    <input id="email" name="email" type="email" class="form-control validate" value="<%=rec.getString("email")%>">
                                                </div>
                                                <div class="form-group">
                                                    <label for="password">Password</label>
                                                    <input  id="password" name="password" type="password" class="form-control validate" value="<%=rec.getString("password")%>">
                                                </div>
                                                <div class="form-group">
                                                    <label for="password2">Re-enter Password</label>
                                                    <input placeholder="******" id="password2" name="password2" type="password" class="form-control validate">
                                                </div>
                                                <div class="row" style="text-align: center">  
                                                    <button type="submit" class="btn btn-primary">Save Change</button>
                                                </div>
                                                                <%}%>
                                            </form>
                                        </div>
                                    </div>                                   
                                </div>     
                            </div>

                            
                            <div role="tabpanel" class="tab-pane" id="tab2">
                                <table class="table">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th scope="col">Date</th>
                                            <th scope="col">Order ID</th>
                                            <th scope="col">Payment ID</th>
                                            <th scope="col">Course Name</th>
                                            <th scope="col">Amount</th>
                                            <th scope="col">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%while ((re != null) && (re.next())) {%>   
                                        <tr>
                                            <td><%=re.getDate("date")%></td>
                                            <td><%=re.getInt("order_id")%></td>
                                            <td><%=re.getString("payment_id")%></td>
                                            <td><%=re.getString("course_name")%></td>
                                            <td><%=re.getString("amount")%></td>
                                            <td><%=re.getString("status")%></td>
                                        <%}%>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                                        
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <br><br><br>
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
