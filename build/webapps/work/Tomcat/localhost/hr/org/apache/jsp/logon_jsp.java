/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.54
 * Generated at: 2015-07-26 17:27:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class logon_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\n');
      if (_jspx_meth_c_005fset_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("<!-- pageContext -->\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<!--[if IE 8]> <html lang=\"en\" class=\"ie8 no-js\"> <![endif]-->\n");
      out.write("<!--[if IE 9]> <html lang=\"en\" class=\"ie9 no-js\"> <![endif]-->\n");
      out.write("<!--[if !IE]><!-->\n");
      out.write("<html lang=\"en\">\n");
      out.write("<!--<![endif]-->\n");
      out.write("<!-- BEGIN HEAD -->\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\"/>\n");
      out.write("\n");
      out.write("<title>");
      out.print( pageContext.getServletContext().getInitParameter("web_title") );
      out.write("</title>\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("<meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\"/>\n");
      out.write("<meta http-equiv=\"Content-type\" content=\"text/html; charset=utf-8\">\n");
      out.write("<meta content=\"\" name=\"description\"/>\n");
      out.write("<meta content=\"\" name=\"author\"/>\n");
      out.write("<!-- BEGIN GLOBAL MANDATORY STYLES -->\n");
      out.write("<!-- <link href=\"http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all\" rel=\"stylesheet\" type=\"text/css\"/> -->\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/simple-line-icons/simple-line-icons.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/uniform/css/uniform.default.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<!-- END GLOBAL MANDATORY STYLES -->\n");
      out.write("<!-- BEGIN PAGE LEVEL STYLES -->\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/select2/select2.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/admin/pages/css/login-soft.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<!-- END PAGE LEVEL SCRIPTS -->\n");
      out.write("<!-- BEGIN THEME STYLES -->\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/css/components-md.css\" id=\"style_components\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/css/plugins-md.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/admin/layout4/css/layout.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link id=\"style_color\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/admin/layout4/css/themes/default.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    \n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/admin/layout4/css/custom.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("<!-- END THEME STYLES -->\n");
      out.write("<link rel=\"shortcut icon\" href=\"favicon.ico\"/>\n");
      out.write("</head>\n");
      out.write("<!-- END HEAD -->\n");
      out.write("<!-- BEGIN BODY -->\n");
      out.write("<body class=\"page-md login\" id=\"login\">\n");
      out.write("<!-- BEGIN LOGO -->\n");
      out.write("<div class=\"logo\">\n");
      out.write("\t<a href=\"index.jsp\">\n");
      out.write("    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/resources/themes/default/images/logo.png\" alt=\"\"/>\n");
      out.write("\t</a>\n");
      out.write("</div>\n");
      out.write("<!-- END LOGO -->\n");
      out.write("<!-- BEGIN SIDEBAR TOGGLER BUTTON -->\n");
      out.write("<div class=\"menu-toggler sidebar-toggler\">\n");
      out.write("</div>\n");
      out.write("<!-- END SIDEBAR TOGGLER BUTTON -->\n");
      out.write("<!-- BEGIN LOGIN -->\n");
      out.write("<div class=\"content\">\n");
      out.write("\t<!-- BEGIN LOGIN FORM -->\n");
      out.write("\t<form class=\"login-form\" method=\"POST\" action=\"j_security_check\" method=\"post\">\n");
      out.write("\t\t<h3 class=\"form-title\">");
      out.print( pageContext.getServletContext().getInitParameter("login_title") );
      out.write("</h3>\n");
      out.write("\t\t<div class=\"alert alert-danger display-hide\">\n");
      out.write("\t\t\t<button class=\"close\" data-close=\"alert\"></button>\n");
      out.write("\t\t\t<span>\n");
      out.write("\t\t\tEnter  username and password. </span>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->\n");
      out.write("\t\t\t<label class=\"control-label visible-ie8 visible-ie9\">Username</label>\n");
      out.write("\t\t\t<div class=\"input-icon\">\n");
      out.write("\t\t\t\t<i class=\"fa fa-user\"></i>\n");
      out.write("\t\t\t\t<input class=\"form-control placeholder-no-fix\" type=\"text\" autocomplete=\"off\" placeholder=\"Username\" \n");
      out.write("\t\t\t\tid=\"j_username\" name=\"j_username\" autofocus required\n");
      out.write("\t\t\t\t/>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t<label class=\"control-label visible-ie8 visible-ie9\">Password</label>\n");
      out.write("\t\t\t<div class=\"input-icon\">\n");
      out.write("\t\t\t\t<i class=\"fa fa-lock\"></i>\n");
      out.write("\t\t\t\t<input class=\"form-control placeholder-no-fix\" type=\"password\" autocomplete=\"off\" placeholder=\"Password\" \n");
      out.write("\t\t\t\tid=\"j_password\" name=\"j_password\" required/>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"form-actions\">\n");
      out.write("\t\t\t<label class=\"checkbox\">\n");
      out.write("\t\t\t<input type=\"checkbox\" name=\"remember\" value=\"1\"/> Remember me </label>\n");
      out.write("\t\t\t<button type=\"submit\" class=\"btn blue pull-right\">\n");
      out.write("\t\t\tLogin <i class=\"m-icon-swapright m-icon-white\"></i>\n");
      out.write("\t\t\t</button>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<a class=\"\" href=\"application.jsp?view=1:0\" style=\"color:#0088cc; font-size:18px\">Register New Account</a> \n");
      out.write("\t\t<div class=\"forget-password\">\n");
      out.write("\t\t\t<h4>Forgot your password ?</h4>\n");
      out.write("\t\t\t<p>\n");
      out.write("\t\t\t\t no worries, click <a class=\"\" href=\"application.jsp?view=2:0\" style=\"color:#0088cc;\">Recover Lost Password</a>\n");
      out.write("\t\t\t\tto reset your password.\n");
      out.write("\t\t\t</p>\n");
      out.write("\t\t</div>\n");
      out.write("        \n");
      out.write("\t\t\n");
      out.write("\t</form>\n");
      out.write("\t<!-- END LOGIN FORM -->\n");
      out.write("\t<!-- BEGIN FORGOT PASSWORD FORM -->\n");
      out.write("\t<form class=\"forget-form\" action=\"index.html\" method=\"post\">\n");
      out.write("\t\t<h3>Forget Password ?</h3>\n");
      out.write("\t\t<p>\n");
      out.write("\t\t\t Enter your e-mail address below to reset your password.\n");
      out.write("\t\t</p>\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t<div class=\"input-icon\">\n");
      out.write("\t\t\t\t<i class=\"fa fa-envelope\"></i>\n");
      out.write("\t\t\t\t<input class=\"form-control placeholder-no-fix\" type=\"text\" autocomplete=\"off\" placeholder=\"Email\" name=\"email\"/>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"form-actions\">\n");
      out.write("\t\t\t<button type=\"button\" id=\"back-btn\" class=\"btn\">\n");
      out.write("\t\t\t<i class=\"m-icon-swapleft\"></i> Back </button>\n");
      out.write("\t\t\t<button type=\"submit\" class=\"btn blue pull-right\">\n");
      out.write("\t\t\tSubmit <i class=\"m-icon-swapright m-icon-white\"></i>\n");
      out.write("\t\t\t</button>\n");
      out.write("\t\t</div>\n");
      out.write("\t</form>\n");
      out.write("\t<!-- END FORGOT PASSWORD FORM -->\n");
      out.write("</div>\n");
      out.write("<!-- END LOGIN -->\n");
      out.write("<!-- BEGIN COPYRIGHT -->\n");
      out.write("<div class=\"copyright\">\n");
      out.write("\t 2015 &copy; Open Baraza\n");
      out.write("</div>\n");
      out.write("<!-- END COPYRIGHT -->\n");
      out.write("<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->\n");
      out.write("<!-- BEGIN CORE PLUGINS -->\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/respond.min.js\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/excanvas.min.js\"></script> \n");
      out.write("<![endif]-->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/jquery-migrate.min.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/jquery.blockui.min.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/uniform/jquery.uniform.min.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/jquery.cokie.min.js\" type=\"text/javascript\"></script>\n");
      out.write("<!-- END CORE PLUGINS -->\n");
      out.write("<!-- BEGIN PAGE LEVEL PLUGINS -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/jquery-validation/js/jquery.validate.min.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/backstretch/jquery.backstretch.min.js\" type=\"text/javascript\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/plugins/select2/select2.min.js\"></script>\n");
      out.write("<!-- END PAGE LEVEL PLUGINS -->\n");
      out.write("<!-- BEGIN PAGE LEVEL SCRIPTS -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/global/scripts/metronic.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/admin/pages/scripts/login-soft.js\" type=\"text/javascript\"></script>\n");
      out.write("<!-- END PAGE LEVEL SCRIPTS -->\n");
      out.write("<script>\n");
      out.write("jQuery(document).ready(function() {     \n");
      out.write("  Metronic.init(); // init metronic core components\n");
      out.write("  Metronic.setAssetsPath('assets/'); // Set the assets folder path\n");
      out.write("\n");
      out.write("  Login.init();\n");
      out.write("       // init background slide images\n");
      out.write("       $.backstretch([\n");
      out.write("        \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/admin/pages/media/bg/1.jpg\",\n");
      out.write("        \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/admin/pages/media/bg/2.jpg\",\n");
      out.write("        \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/admin/pages/media/bg/3.jpg\",\n");
      out.write("        \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/admin/pages/media/bg/4.jpg\"\n");
      out.write("        ], {\n");
      out.write("          fade: 1000,\n");
      out.write("          duration: 8000\n");
      out.write("    }\n");
      out.write("    );\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("<!-- END JAVASCRIPTS -->\n");
      out.write("</body>\n");
      out.write("<!-- END BODY -->\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fset_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fset_005f0.setParent(null);
    // /logon.jsp(2,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fset_005f0.setVar("contextPath");
    // /logon.jsp(2,0) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fset_005f0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.Object.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
    int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
    if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
    return false;
  }
}
