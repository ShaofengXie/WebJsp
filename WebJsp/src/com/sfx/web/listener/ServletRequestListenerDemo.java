package com.sfx.web.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletRequestListenerDemo
 *
 */
@WebListener
public class ServletRequestListenerDemo implements ServletRequestListener {

    /**
     * Default constructor. 
     */
    public ServletRequestListenerDemo() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletRequestListener#requestDestroyed(ServletRequestEvent)
     */
    public void requestDestroyed(ServletRequestEvent event)  { 
    	System.out.println("request销毁。http://"+event.getServletRequest().getRemoteAddr()+event.getServletContext().getContextPath());
    }

	/**
     * @see ServletRequestListener#requestInitialized(ServletRequestEvent)
     */
    public void requestInitialized(ServletRequestEvent event)  { 
System.out.println("request初始化。http://"+event.getServletRequest().getRemoteAddr()+event.getServletContext().getContextPath());
    }
	
}
