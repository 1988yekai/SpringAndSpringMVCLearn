package com.yek.xmlhello;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by yek on 2016-12-28.
 */
public class Main {
    public static void main(String[] args) {
        // 1.创建spring的ioc容器
        ApplicationContext context = new ClassPathXmlApplicationContext("xmlConf.xml");
        // 2.从容器中获得bean
//        HelloWorld helloWorld = (HelloWorld) context.getBean("com.yek.xmlhello.HelloWorld");
        HelloWorld helloWorld = (HelloWorld) context.getBean("helloWorld");
        System.out.println(helloWorld);
        // 3.调用方法
        helloWorld.speak();
    }

}
