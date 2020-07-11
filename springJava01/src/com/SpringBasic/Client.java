package com.SpringBasic;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class Client {
	public static void main(String args[]) {
		Empolyee e1 = new  Empolyee();  
		e1.setEid(101);
		e1.setName("John");
		e1.setAddress("Mumbai");
		System.out.println(e1.toString()+"<= using tight Coupling");
		//Using Bean Factory 
		Resource resource = new ClassPathResource("EmpBean.xml");
		BeanFactory bean= new XmlBeanFactory(resource);
		Empolyee e2 =  (Empolyee) bean.getBean("emp01");
		System.out.println(e2);
		Empolyee e3 = bean.getBean("emp01", Empolyee.class); 
		System.out.println(e3);
		//Using Application Context
		ApplicationContext bean1= new ClassPathXmlApplicationContext("EmpBean.xml");
		System.out.println(bean1.getBean("emp02"));
	}
}
