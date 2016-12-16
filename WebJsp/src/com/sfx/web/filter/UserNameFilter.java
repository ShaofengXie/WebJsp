package com.sfx.web.filter;

import java.io.IOException;
import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class UserNameFilter
 */
@WebFilter(dispatcherTypes = { DispatcherType.REQUEST, DispatcherType.FORWARD, DispatcherType.INCLUDE,
		DispatcherType.ERROR }, servletNames = { "MyLoginServletDemo" })
public class UserNameFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public UserNameFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {

		System.out.println("UserNameFilter过滤器：销毁....");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		System.out.println("UserNameFilter过滤器：执行中....");
		String uname = request.getParameter("username");
		if (uname != null && "".equals(uname)) {
			System.out.println("UserNameFilter过滤器放行，即将进入下一个过滤器....");
			chain.doFilter(request, response);
			System.out.println("UserNameFilter过滤器：执行结束。");
		} else {
			HttpServletResponse ht = (HttpServletResponse) response;
			ht.sendRedirect("/filter/LoginPassWordeLost.html");
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("UserNameFilter过滤器：初始化....");
	}

}
