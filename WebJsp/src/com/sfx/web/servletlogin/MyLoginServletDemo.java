package com.sfx.web.servletlogin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyLoginServletDemo
 */
@WebServlet("/servlet/MyLoginServletDemo")
public class MyLoginServletDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyLoginServletDemo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html;charset=GB2312");//解决乱码问题
	//response.setCharacterEncoding("GB2312");//解决乱码问题，与上面代码选一
	PrintWriter out=response.getWriter();//得到字符输出流
	out.println("<HTML>");
	out.println("<HEAD><TITLE>用servlet测试get/post方法</TITLE><HEAD>");
	out.println("<BODY>");
	out.println("<H2>调用了doGet()方法</H2>");
	out.println("<H2>用户输入信息如下：</H2>");
	request.setCharacterEncoding("UTF-8");
	String newusername=request.getParameter("username");
	//newusername=new String(newusername.getBytes("iso8859_1"),"UTF-8");//解决request请求数据乱码
	if (newusername==null||newusername=="") {newusername="未输入";
		
	}
	String password=request.getParameter("password");
	if (password==null||password=="") {password="未输入";
	
	}
	out.println("<H2>用户名:"+newusername+"</H2>");
	out.println("<H2>密 码:"+password+"</H2>");
	out.println("</BODY>");
	out.println("</HTML>");
	out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
