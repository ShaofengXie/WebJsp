package com.sfx.web.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FormServlet
 */
@WebServlet("/servlet/FormServlet")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//用系统时间的总毫秒数设置三种不同作用域对象的值
		String str=""+new Date().getTime();//先转换成string类型
		request.setAttribute("fromRequest", str);
		HttpSession session=request.getSession();
		session.setAttribute("fromSession", str);
		ServletContext context=getServletConfig().getServletContext();
		context.setAttribute("fromContext", str);
		context.getRequestDispatcher("/servlet/DisplayServlet").forward(request,response);
	}

}
