package com.sfx.web.listener;

import java.util.Date;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListenerDemo
 *
 */
@WebListener
public class ServletContextListenerDemo implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListenerDemo() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 

    System.out.println("listener监听器：监听器的销毁....."+new Date());
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  { 
    	 System.out.println("listener监听器：监听器的初始化....."+new Date());
    }
	
}
