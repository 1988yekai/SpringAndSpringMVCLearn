package test1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.apache.log4j.Logger;

/**
 * Created by yek on 2017-1-24.
 */
@Controller
@RequestMapping("test1")
public class HelloWorld {
    private static Logger logger=Logger.getLogger(HelloWorld.class);
    @RequestMapping("helloWorld")
    public String helloWorld(){

        logger.info("Hello world!");
        System.out.println("hello world!");
        return "success";
    }
}
