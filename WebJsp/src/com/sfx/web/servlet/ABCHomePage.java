package com.sfx.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ABCHomePage
 */
@WebServlet("/servlet/ABCHomePage")
public class ABCHomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ABCHomePage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD><TITLE>ABC公司主页</TITLE></HEAD>");
		out.println("<BODY>");
		ServletContext context=getServletContext();
		RequestDispatcher rd=context.getRequestDispatcher("/servlet/HeaderServlet");
		rd.include(request, response);
		out.println("<font size=4 color='#00099'>");
		out.println("&nbsp;&nbsp;ABC Is Company！！<br><br>");
		out.println("Server Tomcat v8.0 Server at localhost was unable to start within 45 seconds. If the server requires more time, try increasing the timeout in the server editor.<br><br>");
		out.println("To have a look!<a href='www.abcdesign.com'>ABC Designs!!</a></font><br><br>");
	rd=context.getRequestDispatcher("/servlet/Footer.html");
	rd.include(request, response);
	//rd.forward(request, response);
	out.println("</BODY>");
	out.println("</HTML>");
	}

}
