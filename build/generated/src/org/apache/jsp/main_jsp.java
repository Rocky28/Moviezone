package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(2);
    _jspx_dependants.add("/hall_details.html");
    _jspx_dependants.add("/footer.html");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Inox.in</title>\n");
      out.write("<link href=\"home.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"style_1.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"book_cancel.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"photo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("</head>\n");
      out.write("  ");
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            
             PreparedStatement ps; ResultSet rs; Connection db=null;

                          try{db=DriverManager.getConnection("jdbc:odbc:dsn77");ps=db.prepareStatement("select * from sessionId");
                          rs=ps.executeQuery();  if(rs.next()!=false){ HttpSession s=request.getSession(false);s.setAttribute("username",rs.getString(3)); s.setAttribute("current", rs.getString(2));
                  response.sendRedirect("reshome.jsp");}
                            else
                         {  throw new Exception("jlt");}}catch(Exception e){ System.out.println(e);
      out.write("\n");
      out.write("    <body>\n");
      out.write("\t<div id=\"header\">\n");
      out.write("            <div id=\"title\">\n");
      out.write("                <div id=\"sitetitle\">Movie Zone</div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"header_box\">\n");
      out.write("            <form name=\"login\" method=\"post\" action=\"signin\">\n");
      out.write("                <h3>Account Login</h3>\n");
      out.write("                <b></b>\n");
      out.write("                <div class=\"form_row\"><label><strong>Email</strong></label><input style=\"background-color:transparent\" class=\"inputfield\" name=\"email_address\" type=\"text\" id=\"email_address\"/></div>\n");
      out.write("                    <div class=\"form_row\"><label><strong>Password</strong></label><input style=\"background-color:transparent\" class=\"inputfield\" name=\"password\" type=\"password\" id=\"password\"/></div>\n");
      out.write("                    <input class=\"button\" type=\"submit\" name=\"Submit\" value=\"Login\" style=\"background-color:transparent; border-color: black;color: black\" />\n");
      out.write("                    <div class=\"form_row\"><font size=\"2px\" style=\"color: black\"><strong>Forgot password ?</strong></font><a href=\"recover.jsp\"><font size=\"2px\" style=\"color: black\">Click here to recover password</font></a></div>    \n");
      out.write("                    <div class=\"form_row\"><a href=\"signup.jsp\"><h3><font color=\"lightseagreen\">CREATE ACCOUNT</font></h3></a></div>\n");
      out.write("            </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("            ");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"home.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"style_1.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"book_cancel.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"photo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("                <div id=\"content\">\n");
      out.write("            <div id=\"left_sub_content\">\n");
      out.write("        \t<div id=\"movie_section\">\n");
      out.write("                    <h1 align=\"center\">Movies @ INOX</h1>\n");
      out.write("                    <div id=\"box\">\n");
      out.write("                        <ul id=\"slider\">\n");
      out.write("                        <li id=\"1\" >\n");
      out.write("                        <img src=\"Transformers.jpg\"  width=\"450\" height=\"438\" />\n");
      out.write("\n");
      out.write("                        </li>\n");
      out.write("                        <li id=\"2\">\n");
      out.write("                        <img src=\"ted.jpg\"  width=\"450\" height=\"438\" />\n");
      out.write("                        \n");
      out.write("                        </li>\n");
      out.write("                        <li id=\"3\">\n");
      out.write("                        <img src=\"ironman3.jpg\"  width=\"450\" height=\"438\" />\n");
      out.write("                        \n");
      out.write("                        </li>\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("                        <ul id=\"thumb\">\n");
      out.write("                        <li><a href=\"#1\"><img src=\"Transformers.jpg\" alt=\"grass-blades\" width=\"50\" height=\"50\" /></a></li>\n");
      out.write("                        <li><a href=\"#2\"><img src=\"ted.jpg\" alt=\"lotus\" width=\"50\" height=\"50\" /></a></li>\n");
      out.write("                        <li><a href=\"#3\"><img src=\"ironman3.jpg\" alt=\"stones\" width=\"50\" height=\"50\" /></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div id=\"right_content\">\n");
      out.write("                <div id=\"right_sub_content\">\n");
      out.write("                    \n");
      out.write("                    <h1 align=\"center\">Upcoming Movies @ INOX</h1>\n");
      out.write("                    <div id=\"box\">\n");
      out.write("                        <ul id=\"slider\">\n");
      out.write("                        <li id=\"5\" >\n");
      out.write("                        <img src=\"white house down.jpg\"  width=\"450\" height=\"438\" />\n");
      out.write("                      \n");
      out.write("                        </li>\n");
      out.write("                        <li id=\"6\">\n");
      out.write("                        <img src=\"wolverine.jpg\"  width=\"450\" height=\"438\" />\n");
      out.write("                  \n");
      out.write("                        </li>\n");
      out.write("                        <li id=\"7\">\n");
      out.write("                        <img src=\"ship of thesus.jpg\"  width=\"450\" height=\"438\" />\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("                        <ul id=\"thumb\">\n");
      out.write("                        <li><a href=\"#5\"><img src=\"white house down.jpg\" width=\"50\" height=\"50\" /></a></li>\n");
      out.write("                        <li><a href=\"#6\"><img src=\"wolverine.jpg\" width=\"50\" height=\"50\" /></a></li>\n");
      out.write("                        <li><a href=\"#7\"><img src=\"ship of thesus.jpg\" width=\"50\" height=\"50\" /></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write(" \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("     </div>\n");
      out.write("   </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("           ");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title></title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"footer\">\n");
      out.write("            <table align=\"center\">\n");
      out.write("                <tr><th><a href=\"reshome.jsp\"><h3 style=\"color: black; font-size: medium\">Home    |</h3></a></th><th><a>  <h3 style=\"color: black; font-size: medium\">Contact Us </h3> </a></th></tr></table><br />\n");
      out.write("            <strong><h3 style=\"color: black; font-size: medium\"> Movie Zone Pvt. Ltd.</h3></strong>\n");
      out.write("        </div>  \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("    ");
}
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
