package com.sfx.web.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Application Lifecycle Listener implementation class HttpSessionAttributeListenerDemo
 *
 */
@WebListener
public class HttpSessionAttributeListenerDemo implements HttpSessionAttributeListener {

    /**
     * Default constructor. 
     */
    public HttpSessionAttributeListenerDemo() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent event)  { 
    	System.out.println(event.getSession().getId()+",增加属性-->属性名称：" + event.getName() + "属性内容：" + event.getValue());
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent event)  { 
    	System.out.println(event.getSession().getId()+",删除属性-->属性名称：" + event.getName() + "属性内容：" + event.getValue());
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent event)  { 
    	System.out.println(event.getSession().getId()+",替换属性-->属性名称：" + event.getName() + "属性内容：" + event.getValue());
    }
	
}
