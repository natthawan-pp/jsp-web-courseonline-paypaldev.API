package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class account_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Easycourse - Education </title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"keywords\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <body id=\"top\" data-spy=\"scroll\" data-target=\".navbar-collapse\" data-offset=\"50\">\n");
      out.write("\n");
      out.write("        <!-- PRE LOADER -->\n");
      out.write("        <section class=\"preloader\">\n");
      out.write("            <div class=\"spinner\">\n");
      out.write("                <span class=\"spinner-rotate\"></span>  \n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- MENU -->\n");
      out.write("        <section class=\"navbar custom-navbar navbar-fixed-top\" role=\"navigation\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                        <span class=\"icon icon-bar\"></span>\n");
      out.write("                        <span class=\"icon icon-bar\"></span>\n");
      out.write("                        <span class=\"icon icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <a href=\"login_success.jsp\" class=\"navbar-brand\">Easycourse</a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                    <li><a href=\"login_success.jsp\" class=\"smoothScroll\">All Courses</a></li>\n");
      out.write("                    <li><a href=\"my_courses.jsp\" class=\"smoothScroll\">My Courses</a></li>  \n");
      out.write("                    <li class=\"active\"><a href=\"account.jsp\" class=\"smoothScroll\">Account</a></li>   \n");
      out.write("                    <li><a href='logout.jsp'><i class=\"fa fa-sign-out\"></i>Log Out</a></li>   \n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </section> <br><br>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div role=\"tabpanel\">\n");
      out.write("                    \n");
      out.write("                    <div class=\"col-sm-3\">\n");
      out.write("                        <ul class=\"nav nav-pills brand-pills nav-stacked\" role=\"tablist\">\n");
      out.write("                            <li role=\"presentation\" class=\"brand-nav active\"><a href=\"#tab1\" aria-controls=\"tab1\" role=\"tab\" data-toggle=\"tab\">ข้อมูลส่วนตัว</a></li>\n");
      out.write("                            <li role=\"presentation\" class=\"brand-nav\"><a href=\"#tab2\" aria-controls=\"tab2\" role=\"tab\" data-toggle=\"tab\">รายการชำระเงิน</a></li>\n");
      out.write("                            <li role=\"presentation\" class=\"brand-nav\"><a href=\"#tab3\" aria-controls=\"tab3\" role=\"tab\" data-toggle=\"tab\">ติดต่อกับเรา</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"col-sm-9\">\n");
      out.write("                        <div class=\"tab-content\">\n");
      out.write("                            <div role=\"tabpanel\" class=\"tab-pane active\" id=\"tab1\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-4\">\n");
      out.write("                                        <div class=\"item\" style=\"text-align: center\">\n");
      out.write("                                            <h4>Profile Image</h4><br>\n");
      out.write("                                            <img src=\"images/tst-image3.jpg\" alt=\"Profile Image\" class=\"img-fluid\">\n");
      out.write("                                            <div class=\"custom-file mt-3 mb-3\"><br>\n");
      out.write("                                                <input id=\"fileInput\" type=\"file\" style=\"display:none;\" />\n");
      out.write("                                                <input type=\"button\" class=\"btn btn-primary d-block mx-xl-auto\" value=\"Upload Picture\" onclick=\"document.getElementById('fileInput').click();\"/>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    ");

                                        String mail = (String) session.getAttribute("email");
                                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                                        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project2204",
                                                "root", "admin");
                                        Statement s = c.createStatement();
                                        ResultSet rec = s.executeQuery("select * from user where email ='" + mail + "' ");
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    ");
while ((rec != null) && (rec.next())) {
      out.write("\n");
      out.write("                                    <div class=\"col-md-8\">\n");
      out.write("                                        <div class=\"item\">\n");
      out.write("                                            <form action=\"edit_account.jsp\" method=\"post\">\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"name\">Account Name</label>\n");
      out.write("                                                    <input id=\"name\" name=\"name\" type=\"text\" class=\"form-control validate\" value=\"");
      out.print(rec.getString("fullname"));
      out.write("\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"email\">Account Email</label>\n");
      out.write("                                                    <input id=\"email\" name=\"email\" type=\"email\" class=\"form-control validate\" value=\"");
      out.print(rec.getString("email"));
      out.write("\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"password\">Password</label>\n");
      out.write("                                                    <input  id=\"password\" name=\"password\" type=\"password\" class=\"form-control validate\" value=\"");
      out.print(rec.getString("password"));
      out.write("\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"password2\">Re-enter Password</label>\n");
      out.write("                                                    <input placeholder=\"******\" id=\"password2\" name=\"password2\" type=\"password\" class=\"form-control validate\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"row\" style=\"text-align: center\">  \n");
      out.write("                                                    <button type=\"submit\" class=\"btn btn-primary\">Save Change</button>\n");
      out.write("                                                </div>\n");
      out.write("                                            </form>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    ");
}
      out.write("\n");
      out.write("                                </div>     \n");
      out.write("                            </div>\n");
      out.write("                            <div role=\"tabpanel\" class=\"tab-pane\" id=\"tab2\">\n");
      out.write("                                <table class=\"table\">\n");
      out.write("                                    <thead class=\"thead-dark\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"col\">Date</th>\n");
      out.write("                                            <th scope=\"col\">Order ID</th>\n");
      out.write("                                            <th scope=\"col\">Course Name</th>\n");
      out.write("                                            <th scope=\"col\">Amount</th>\n");
      out.write("                                            <th scope=\"col\">Status</th>      \n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">1</th>\n");
      out.write("                                            <td>Mark</td>\n");
      out.write("                                            <td>Otto</td>\n");
      out.write("                                            <td>@mdo</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">2</th>\n");
      out.write("                                            <td>Jacob</td>\n");
      out.write("                                            <td>Thornton</td>\n");
      out.write("                                            <td>@fat</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                                </div>\n");
      out.write("                                <div role=\"tabpanel\" class=\"tab-pane\" id=\"tab3\">\n");
      out.write("                                    <p>\n");
      out.write("                                        Lorem ipsizzle dolor away amizzle, consectetuer pizzle elizzle. Nullizzle yo velizzle, check it out volutpizzle, quis, gravida vel, yo.\n");
      out.write("                                        Ma nizzle eget tortor. Sizzle eros. My shizz izzle dolizzle gizzle turpis tempizzle fo shizzle mah nizzle fo rizzle, mah home g-dizzle.\n");
      out.write("                                        Maurizzle pellentesque nibh izzle own yo'. Check it out in tortor. Pellentesque fizzle rhoncizzle nisi. \n");
      out.write("                                    </p>\n");
      out.write("                                    <p>\n");
      out.write("                                        In hac habitasse platea dictumst. Shizzlin dizzle dapibus. You son of a bizzle tellizzle urna, pretizzle fo shizzle mah nizzle fo rizzle, mah home g-dizzle,\n");
      out.write("                                        ghetto ac, check it out vitae, nunc. Shizzlin dizzle suscipizzle. Integizzle sempizzle velit sizzle dizzle.\n");
      out.write("                                    </p>\n");
      out.write("                                </div>                                   \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("                                 </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <br><br><br><br>\n");
      out.write("            <!-- SCRIPTS -->\n");
      out.write("            <script src=\"js/jquery.js\"></script>\n");
      out.write("            <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("            <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("            <script src=\"js/smoothscroll.js\"></script>\n");
      out.write("            <script src=\"js/custom.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- FOOTER -->\n");
      out.write("    <footer id=\"footer\">\n");
      out.write("\n");
      out.write("    </footer>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
