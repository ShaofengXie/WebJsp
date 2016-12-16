package com.sfx.web.servletlogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyLoginServletDemo
 */
@WebServlet("/MyWeb/MyLoginServletDemo2")
public class MyLoginServletDemo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MyLoginServletDemo2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=GB2312");// 解决乱码问题
		// response.setCharacterEncoding("GB2312");//解决乱码问题，与上面代码选一
		request.setCharacterEncoding("UTF-8");
		String newusername = request.getParameter("userName");
		String password = request.getParameter("passWord");
		// newusername=new
		// String(newusername.getBytes("iso8859_1"),"UTF-8");//解决request请求数据乱码
		if ("xsf".equals(newusername) && "123456".equals(password)) {
			ServletContext context = getServletContext();
			//RequestDispatcher rd = context.getRequestDispatcher("/jsp/MyWeb/Success.html");
			//rd.forward(request, response);
			response.sendRedirect(request.getContextPath()+"/jsp/MyWeb/Success.html");
		} else {
			/*RequestDispatcher rd = request.getRequestDispatcher("/jsp/MyWeb/MyLogin.jsp");
			rd.forward(request, response);*/
			response.sendRedirect(request.getContextPath()+"/jsp/MyWeb/MyLogin.jsp");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
