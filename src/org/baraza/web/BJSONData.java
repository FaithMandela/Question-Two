/**
 * @author      Dennis W. Gichangi <dennis@openbaraza.org>
 * @version     2011.0329
 * @since       1.6
 * website		www.openbaraza.org
 * The contents of this file are subject to the GNU Lesser General Public License
 * Version 3.0 ; you may use this file in compliance with the License.
 */
package org.baraza.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.baraza.xml.BElement;
import org.baraza.DB.BJSONQuery;

public class BJSONData extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)  {
		doGet(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		ServletContext context = getServletContext();
		HttpSession webSession = request.getSession(true);
		String xmlcnf = (String)webSession.getAttribute("xmlcnf");
		String ps = System.getProperty("file.separator");
		String xmlfile = context.getRealPath("WEB-INF") + ps + "configs" + ps + xmlcnf;
		String dbconfig = "java:/comp/env/jdbc/database";

		String userIP = request.getRemoteAddr();
		String userName = request.getRemoteUser();
		
		BWeb web = new BWeb(dbconfig, xmlfile);
		web.setUser(userIP, userName);
		web.init(request);
		BElement view = web.getView();
		
		String sortby = request.getParameter("sidx");
		if(sortby != null) {
			if(sortby.equals("CL")) sortby = view.getAttribute("keyfield") + "  " + request.getParameter("sord");
			else if(sortby.trim().equals("")) sortby = null;
			else sortby = sortby + "  " + request.getParameter("sord");
		}
		if(sortby != null && webSession.getAttribute("JSONfilter2") != null) {
			webSession.setAttribute("JSONfilter1", webSession.getAttribute("JSONfilter2"));
		}
		System.out.println("JSON sort : " + sortby);
		
		String wheresql = null;
		if(webSession.getAttribute("JSONfilter1") != null) {
			wheresql = (String)webSession.getAttribute("JSONfilter1");
			webSession.removeAttribute("JSONfilter1");
		}
		wheresql = web.getJSONWhere(request, wheresql);
		System.out.println("BASE 1010 : " + wheresql);

		
		//System.out.println("BASE 1010 : " + view.toString());
		
		BJSONQuery JSONQuery = new BJSONQuery(web.getDB(), view, wheresql, sortby);
		String JSONStr = JSONQuery.getJSONData(web.getViewKey(), false);

		try {
			PrintWriter out = response.getWriter();
			response.setContentType("application/json;charset=\"utf-8\"");
			
			out.print(JSONStr);
			
		} catch(IOException ex) {
			System.out.println("ERROR : Cannot get writer from response : " + ex);
		}
		
		web.close();
	}
}

