package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class my_005fcourses_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
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
      out.write("                    <li class=\"active\"><a href=\"my_courses.jsp\" class=\"smoothScroll\">My Courses</a></li>  \n");
      out.write("                    <li><a href=\"account.jsp\" class=\"smoothScroll\">Account</a></li>   \n");
      out.write("                    <li><a href='logout.jsp'><i class=\"fa fa-sign-out\"></i>Log Out</a></li>   \n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </section> <br><br><br><br>\n");
      out.write("\n");
      out.write("        ");

            String mail = (String) session.getAttribute("email");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project2204",
                    "root", "admin");
            Statement s = c.createStatement();
            ResultSet rec = s.executeQuery("SELECT cr.course_name, cr.student_name, c.course_name , c.course_duration, c.course_price, c.course_description, c.instructor_name "
                    + "FROM course_regis as cr, course as c WHERE student_name = '" + mail + "' AND cr.course_name = c.course_name GROUP BY cr.course_name");
        
      out.write("\n");
      out.write("   \n");
      out.write("        <!--        select * from course_regis where student_name ='\" + mail + \"' \n");
      out.write("        SELECT course_regis.course_name FROM course_regis  JOIN course ON course_regis.course_name = course.course_name -->\n");
      out.write("<!--SELECT course_name, course_duration, course_price, course_descriptoion,instroctor_name FROM course_regis, course WHERE course_regis.course_name = course.course_name GROUP BY course_name-->\n");
      out.write("        \n");
      out.write("        ");
while ((rec != null) && (rec.next())) {
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"list-group\">\n");
      out.write("                    <a href=\"#\" class=\"list-group-item list-group-item-action flex-column align-items-start \">\n");
      out.write("                        <div class=\"d-flex w-100 justify-content-between\">\n");
      out.write("                            <h3 class=\"mb-1\">");
      out.print(rec.getString("course_duration"));
      out.write("</h3>\n");
      out.write("                            <small>");
      out.print(rec.getString("course_price"));
      out.write("</small>\n");
      out.write("                        </div>\n");
      out.write("                        <p class=\"mb-1\">");
      out.print(rec.getString("course_description"));
      out.write("</p>\n");
      out.write("                        <small>");
      out.print(rec.getString("instructor_name"));
      out.write("</small>\n");
      out.write("                    </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <br><br><br><br>\n");
      out.write("        <!-- SCRIPTS -->\n");
      out.write("        <script src=\"js/jquery.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"js/smoothscroll.js\"></script>\n");
      out.write("        <script src=\"js/custom.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("    <!-- FOOTER -->\n");
      out.write("    <footer id=\"footer\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4 col-sm-6\">\n");
      out.write("                    <div class=\"footer-info\">\n");
      out.write("                        <div class=\"section-title\">\n");
      out.write("                            <h2>Headquarter</h2>\n");
      out.write("                        </div>\n");
      out.write("                        <address>\n");
      out.write("                            <p>1800 dapibus a tortor pretium,<br> Integer nisl dui, ABC 12000</p>\n");
      out.write("                        </address>\n");
      out.write("\n");
      out.write("                        <ul class=\"social-icon\">\n");
      out.write("                            <li><a href=\"#\" class=\"fa fa-facebook-square\" attr=\"facebook icon\"></a></li>\n");
      out.write("                            <li><a href=\"#\" class=\"fa fa-twitter\"></a></li>\n");
      out.write("                            <li><a href=\"#\" class=\"fa fa-instagram\"></a></li>\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("                        <div class=\"copyright-text\"> \n");
      out.write("                            <p>Copyright &copy; 2019 Company Name</p>\n");
      out.write("\n");
      out.write("                            <p>Design: TemplateMo</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4 col-sm-6\">\n");
      out.write("                    <div class=\"footer-info\">\n");
      out.write("                        <div class=\"section-title\">\n");
      out.write("                            <h2>Contact Info</h2>\n");
      out.write("                        </div>\n");
      out.write("                        <address>\n");
      out.write("                            <p>+65 2244 1100, +66 1800 1100</p>\n");
      out.write("                            <p><a href=\"mailto:youremail.co\">hello@youremail.co</a></p>\n");
      out.write("                        </address>\n");
      out.write("\n");
      out.write("                        <div class=\"footer_menu\">\n");
      out.write("                            <h2>Quick Links</h2>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\">Career</a></li>\n");
      out.write("                                <li><a href=\"#\">Investor</a></li>\n");
      out.write("                                <li><a href=\"#\">Terms & Conditions</a></li>\n");
      out.write("                                <li><a href=\"#\">Refund Policy</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4 col-sm-12\">\n");
      out.write("                    <div class=\"footer-info newsletter-form\">\n");
      out.write("                        <div class=\"section-title\">\n");
      out.write("                            <h2>Get updates on new courses.</h2>\n");
      out.write("                        </div>\n");
      out.write("                        <div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <form action=\"#\" method=\"get\">\n");
      out.write("                                    <input type=\"email\" class=\"form-control\" placeholder=\"Enter your email\" name=\"email\" id=\"email\" required=\"\">\n");
      out.write("                                    <input type=\"submit\" class=\"form-control\" name=\"submit\" id=\"form-submit\" value=\"Send me\">\n");
      out.write("                                </form>\n");
      out.write("                                <span><sup>*</sup> Please note - we do not spam your email.</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("</html>");
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
