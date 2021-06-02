package com.bjpowernode.springboot.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StartController {
    @RequestMapping("getUser")
    public ModelAndView getUser(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        mv.addObject("name","zhangsna");
        return mv;
    }
}
