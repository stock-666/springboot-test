package com.bjpowernode.springboot.web;

import com.bjpowernode.springboot.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("put")
    @ResponseBody
    public String put(String key,String value){
        studentService.put(key,value);
        return "数据放入成功";
    }

    @ResponseBody
    @RequestMapping("get")
    public String get(String key){
        String ret = studentService.get(key);
        return "value值为：" + ret;
    }

}
