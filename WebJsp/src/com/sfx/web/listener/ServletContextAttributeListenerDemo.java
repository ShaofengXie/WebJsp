package com.sfx.web.listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class
 * ServletContextAttributeListenerDemo
 *
 */
@WebListener
public class ServletContextAttributeListenerDemo implements ServletContextAttributeListener {

	/**
	 * Default constructor.
	 */

	public ServletContextAttributeListenerDemo() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see ServletContextAttributeListener#attributeAdded(ServletContextAttributeEvent)
	 */
	public void attributeAdded(ServletContextAttributeEvent event) {
		System.out.println("**增加属性-->属性名称：" + event.getName() + "属性内容：" + event.getValue());
	}

	/**
	 * @see ServletContextAttributeListener#attributeRemoved(ServletContextAttributeEvent)
	 */
	public void attributeRemoved(ServletContextAttributeEvent event) {
		System.out.println("**删除属性-->属性名称：" + event.getName() + "属性内容：" + event.getValue());
	}

	/**
	 * @see ServletContextAttributeListener#attributeReplaced(ServletContextAttributeEvent)
	 */
	public void attributeReplaced(ServletContextAttributeEvent event) {
		System.out.println("**增加替换-->属性名称：" + event.getName() + "属性内容：" + event.getValue());
	}

}
