package com.sfx.web.listener;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletRequestAttributeListenerDemo
 *
 */
@WebListener
public class ServletRequestAttributeListenerDemo implements ServletRequestAttributeListener {
	
    /**
     * Default constructor. 
     */
    public ServletRequestAttributeListenerDemo() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletRequestAttributeListener#attributeRemoved(ServletRequestAttributeEvent)
     */
    public void attributeRemoved(ServletRequestAttributeEvent event)  { 
    	System.out.println("**删除request属性-->属性名称：" + event.getName() + "属性内容：" + event.getValue());
    }

	/**
     * @see ServletRequestAttributeListener#attributeAdded(ServletRequestAttributeEvent)
     */
    public void attributeAdded(ServletRequestAttributeEvent event)  { 
    	System.out.println("**增加request属性-->属性名称：" + event.getName() + "属性内容：" + event.getValue());

    }

	/**
     * @see ServletRequestAttributeListener#attributeReplaced(ServletRequestAttributeEvent)
     */
    public void attributeReplaced(ServletRequestAttributeEvent event)  { 
    	System.out.println("**替换request属性-->属性名称：" + event.getName() + "属性内容：" + event.getValue());
    	System.out.println("**替换request属性-->属性名称：" + event.getName() + "属性内容：" + event.getServletRequest().getAttribute(event.getName()));
    }
	
}
