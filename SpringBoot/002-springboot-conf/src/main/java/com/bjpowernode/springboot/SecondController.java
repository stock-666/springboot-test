package com.bjpowernode.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SecondController {

    @RequestMapping("getUser")
    @ResponseBody
    public String getUser(){
        return "张三";
    }
}
