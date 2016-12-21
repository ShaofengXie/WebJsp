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
@WebFilter(dispatcherTypes = {
		DispatcherType.REQUEST, 
		DispatcherType.FORWARD, 
		DispatcherType.INCLUDE, 
		DispatcherType.ERROR
}
			, urlPatterns = { "/MyWeb/MyLoginServletDemo2" })
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
		String uname = request.getParameter("userName");
		if (uname == null || "".equals(uname)) {
			HttpServletResponse ht = (HttpServletResponse) response;
			ht.sendRedirect("/WebJsp/filter/LoginUserNameLost.html");
		} else {
			System.out.println("UserNameFilter过滤器结束！");
			chain.doFilter(request, response);
	
		}
		System.out.println("UserNameFilter过滤器：执行结束。");
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("UserNameFilter过滤器：初始化....");
	}

}
