package com.bjpowernode.controller;


import com.bjpowernode.exception.MyException;
import com.bjpowernode.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;


@Controller
@RequestMapping("/student")
public class StudentController {
    @Resource
    private StudentService studentService;

    @RequestMapping("/forward")
    public ModelAndView requestForward(String name,Integer age) throws MyException {
        System.out.println("处理器方法运行");
        ModelAndView mv = new ModelAndView();
        if (!"zs".equals(name)){
            throw new MyException("名字不是张三");
        }
        if (age>25){
            throw new MyException("年龄太大");
        }
        mv.addObject("name",name);
        mv.addObject("age",age);
        mv.setViewName("forward:/WEB-INF/view/success.jsp");
        return mv;
    }
}
