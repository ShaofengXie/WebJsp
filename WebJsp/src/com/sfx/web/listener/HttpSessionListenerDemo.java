package com.sfx.web.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class HttpSessionListenerDemo
 *
 */
@WebListener
public class HttpSessionListenerDemo implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public HttpSessionListenerDemo() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent event)  { //创建session触发
    	System.out.println("SESSION创建，SESSION ID="+event.getSession().getId());
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent event)  { //销毁session触发
    	System.out.println("SESSION销毁，SESSION ID="+event.getSession().getId());
    }
	
}
