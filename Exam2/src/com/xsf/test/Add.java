package com.xsf.test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Add
 */
@WebServlet("/sevlet/Add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Add() {
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
		request.setCharacterEncoding("UTF-8");
		List<String> list = new ArrayList<String>();
		String name = request.getParameter("name");
		String clas = request.getParameter("clas");
		String lesson = request.getParameter("lesson");
		String score = request.getParameter("score");
		list.add(name);
		list.add(clas);
		list.add(lesson);
		list.add(score);
		request.getSession().setAttribute("list", list);
		/*RequestDispatcher rd = request.getRequestDispatcher("/Exam/studySheet.jsp");
		rd.forward(request, response);*/
		response.sendRedirect("/Exam2/Exam/studySheet.jsp");
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
