package com.xsf.spring.set;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import lombok.Getter;
import lombok.Setter;

public class BoySetter {
	private static Logger logger = Logger.getLogger(BoySetter.class);
	// 声明接口类型的引用，和具体的实现类解耦合
	@Setter@Getter
	private GirlFriend girlFriend;
	private static ApplicationContext ctx;
	
	
	public static void main(String[] args) {
		ctx = new ClassPathXmlApplicationContext("applicationContext-set.xml");
		BoySetter boy = (BoySetter) ctx.getBean("boySetter");
		logger.info(boy.girlFriend.speak());
	
	}

}
