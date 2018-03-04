package com.yek.xmlhello.service;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by yek on 2016-12-28.
 */
public class Main {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("xmlConf.xml");
        MesPrinter printer = (MesPrinter) context.getBean("printer");
        printer.print();
    }
}
