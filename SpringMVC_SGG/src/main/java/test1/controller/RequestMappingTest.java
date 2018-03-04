package test1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by yek on 2017-1-24.
 * RequestMapping(value = "test1") 目录：/test1
 */
@Controller
@RequestMapping(value = "test1")
public class RequestMappingTest {
    @RequestMapping(value = "requestMappingTest", method = RequestMethod.POST)
    public
    @ResponseBody
    String requestMappingTest(@RequestParam(value = "name") String name, @RequestParam(value = "age") Integer age) {
        System.out.println(name + " : " + age);
        return "good!";
    }

    @RequestMapping(value = "jsonTest", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getJsonBack(@RequestParam(value = "name") String name, @RequestParam(value = "age") Integer age) {
        System.out.println(name + " : " + age);

        Map<String, Object> map = new HashMap();
        map.put("name", name);
        map.put("age", age);
        return map;
    }

    /**
     * params,headers 了解用法比较少但可做简单限制
     * RequestMapping(value = "testParamsAndHeaders",params = {"username","age!=10"},headers={"Referer","Accept-Language=zh-CN,zh;q=0.8})
     *
     * @return
     */
    @RequestMapping(value = "testParamsAndHeaders", params = {"username", "age!=10"})
    public String testParamsAndHeaders() {
        System.out.println("testParamsAndHeaders");
        return "success";
    }

    @RequestMapping("testPathVariable/{id}")
    public String testPathVariable(@PathVariable("id") Integer id) {
        System.out.println("testPathVariable " + id);
        return "success";
    }
}
