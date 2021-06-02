package com.bjpowernode.springboot.web;

import com.bjpowernode.springboot.config.ConfigInfo;
import org.apache.catalina.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
public class StartController {
    @Resource
    private ConfigInfo user;

    @RequestMapping("getUser")
    @ResponseBody
    public Object getUser(){
        return user;
    }
}
