package com.bjpowernode.springboot;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class StartController {
    // 通过@Value注解注入配置文件中的自定义属性值
    @Value("${name}")
    private String name;
    @Value("${age}")
    private Integer age;
    @Value("${gender}")
    private String gender;

    @RequestMapping("getUser")
    @ResponseBody
    public String getUser(){
        String s = "姓名："+name + ",性别：" + gender + ",年龄：" + age;
        return s;
    }
}
