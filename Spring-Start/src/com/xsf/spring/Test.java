package com.xsf.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
	private static ApplicationContext ctx;
	
	private static void print(Object object){
		System.out.println(object);
	}
	public static void test1(){
		Users users= new Users();
		users.setName("Teacher");
		users.setAddress("Hefei");
		users.setMemo("This is my first Spring project!");
		print(users);
	}
	public static void test2(){
		//使用ClassPathXmlApplicationContext的实例化方式Spring的上下文
		ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
		//通过
		Users users=(Users) ctx.getBean("users");
		print(users);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		test1();
		test2();

	}

}
