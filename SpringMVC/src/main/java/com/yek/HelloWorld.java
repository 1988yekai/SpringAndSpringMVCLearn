package com.yek;

import com.yek.bean.UserBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;

/**
 * Created by yek on 2016-12-15.
 */
@Controller
public class HelloWorld {
    /**
     * 1. 使用RequestMapping注解来映射请求的URL
     * 2. 返回值会通过视图解析器解析为实际的物理视图, 对于InternalResourceViewResolver视图解析器，会做如下解析
     * 通过prefix+returnVal+suffix 这样的方式得到实际的物理视图，然后会转发操作
     * "/WEB-INF/views/success.jsp"
     */
    @RequestMapping("/helloworld")
    public String hello() {
        System.out.println("hello world");
        return "success";
    }
    @RequestMapping("/testPathVariable/{id}")
    public String testPathVariable(@PathVariable(value = "id") Integer id){
        System.out.println("testPathVariable:" + id);
        return "success";
    }

    @RequestMapping("/testRequestParam")
    public String testRequestParam(@RequestParam(value="username") String username,
                                   @RequestParam(value = "age",required = false,defaultValue = "0") int age){
        System.out.println("testRequestParam==" + " username=" + username + " age=" + age);
        return "success";
    }
    @RequestMapping(value = "/testRest", method = RequestMethod.POST)
    public String testRest(@RequestParam(value="username") String username,
                           @RequestParam(value = "age",required = false,defaultValue = "0") int age){
        System.out.println("testRequestParam==" + " username=" + username + " age=" + age);
        return "success";
    }
    @RequestMapping("/testRequestHeader")
    public String testRequestHeader(@RequestHeader(value = "Accept-Language") String language){
        System.out.println("testRequestHeader Accept-Languge:" + language);
        return "success";
    }

    @RequestMapping("/testPojo")
    public String testPojo(UserBean userBean){
        System.out.println("testPojo: ");
        System.out.println(userBean);
        return "success";
    }

    @RequestMapping("/testModelAndView")
    public ModelAndView  testModelAndView() {
        String viewname = "modelandview";
        ModelAndView modelAndView = new ModelAndView(viewname);
        modelAndView.addObject("time","2016-12-21");
        return modelAndView;
    }
}
