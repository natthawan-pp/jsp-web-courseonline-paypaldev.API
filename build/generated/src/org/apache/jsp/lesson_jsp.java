package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class lesson_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
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
      out.write("        <!--<link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
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
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                    <li class=\"\"><a href=\"my_courses.jsp\" class=\"smoothScroll\">My Courses</a></li>  \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </section> <br><br>\n");
      out.write("\n");
      out.write("        ");

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
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div role=\"tabpanel\">\n");
      out.write("\n");
      out.write("                <div class=\"col-md-4 col-sm-4\">\n");
      out.write("                    <ul class=\"nav nav-pills brand-pills nav-stacked\" role=\"tablist\">\n");
      out.write("                        ");
while ((rec != null) && (rec.next())) {
      out.write("\n");
      out.write("                        <li role=\"presentation\" class=\"brand-nav\"><a href=\"#tab");
      out.print(i);
      out.write("\" aria-controls=\"tab");
      out.print(i);
      out.write("\" role=\"tab\" data-toggle=\"tab\">");
      out.print(rec.getString("lesson_name"));
      out.write("</a></li>\n");
      out.write("                            ");
 i++; }  
      out.write("  \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                    ");
 i=1;
      out.write("\n");
      out.write("                <div class=\"col-md-8 col-sm-8\">\n");
      out.write("                    <div class=\"tab-content\">\n");
      out.write("                         ");
while (re.next()) { 
      out.write("\n");
      out.write("                        <div role=\"tabpanel\" class=\"tab-pane\" id=\"tab");
      out.print(i);
      out.write("\">\n");
      out.write("                            <div class=\"embed-responsive embed-responsive-16by9\">\n");
      out.write("                                <iframe class=\"embed-responsive-item\" src=\"");
      out.print(re.getString("content"));
      out.write("\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\n");
      out.write("                            </div>\n");
      out.write("                            <p>");
      out.print(re.getString("lesson_name"));
      out.write(" </p>\n");
      out.write("                        </div>\n");
      out.write("                         ");
 i++; } 
      out.write("  \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                            \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- SCRIPTS -->\n");
      out.write("        <script src=\"js/jquery.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"js/smoothscroll.js\"></script>\n");
      out.write("        <script src=\"js/custom.js\"></script>          \n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
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
