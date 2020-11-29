package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <script type=\"text/javascript\" src=\"JavaScript/jQuery351.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"JavaScript/script.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"Estilos/estilos.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css\" />\n");
      out.write("    <title>Cartelera de películas</title>\n");
      out.write("    <style>\n");
      out.write("    </style>\n");
      out.write("    <script>\n");
      out.write("    </script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <div id=\"div_ppal\">\n");
      out.write("        <div id=\"div_cab\">\n");
      out.write("            <h1> <a href=\"index.jsp\"> Cartelera de Películas </a> </h1>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"div_menu\">\n");
      out.write("\n");
      out.write("            <span class=\"fa fa-search\"></span>\n");
      out.write("            <form id=\"frm\" action=\"\" method=\"post\">\n");
      out.write("                <input type=\"hidden\" id=\"operacion\" name=\"operacion\" />\n");
      out.write("                <input type=\"text\" id=\"filtro\" name=\"filtro\" value=\"\"\n");
      out.write("                    placeholder=\"Busque una película, director o género...\">\n");
      out.write("                <input type=\"button\" id=\"btnEnviar\" name=\"btnEnviar\" value=\"Enviar\">\n");
      out.write("            </form>\n");
      out.write("            <ul>\n");
      out.write("                <li id=\"li_peliculas\">Películas</li>\n");
      out.write("                <li id=\"li_generos\">Géneros</li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"div_cuerpo\"></div>\n");
      out.write("        <div id=\"div_pie\">\n");
      out.write("            &copy;JSF_Cartelera de películas - 2020\n");
      out.write("        </div>\n");
      out.write("        <div id=\"div_error\"></div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
