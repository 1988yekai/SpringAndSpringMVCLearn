package com.yek.xmlhello.car;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by yek on 2016-12-29.
 */
public class Main {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("xmlConf.xml");

        Car car = (Car) context.getBean("car");

        Car car2 = (Car) context.getBean("car");
        System.out.println(car.hashCode());
        System.out.println(car2.hashCode());

    }
}
