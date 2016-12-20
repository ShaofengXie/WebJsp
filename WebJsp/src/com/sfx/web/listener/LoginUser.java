package com.sfx.web.listener;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 * Application Lifecycle Listener implementation class HttpSessionBindingDemo
 *
 */
//@WebListener
public class LoginUser implements HttpSessionBindingListener {
private String name;
public String getName(){
	return name;
}
public void setName(String name){
	
}
    /**
     * Default constructor. 
     */

    public LoginUser(String name) {
        this.setName(name);
    }

	/**
     * @see HttpSessionBindingListener#valueBound(HttpSessionBindingEvent)
     */
    public void valueBound(HttpSessionBindingEvent event)  { 
    	System.out.println("**在session中保存LoginUser对象(name=" + this.getName()+ "),session id=" + event.getSession().getId());
    }

	/**
     * @see HttpSessionBindingListener#valueUnbound(HttpSessionBindingEvent)
     */
    public void valueUnbound(HttpSessionBindingEvent event)  { 
    	System.out.println("**在session中移除LoginUser对象(name=" + this.getName()+ "),session id=" + event.getSession().getId());
    }
	
}
