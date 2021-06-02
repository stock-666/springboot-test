package com.bjpowernode.springboot.web;

import com.bjpowernode.springboot.model.Student;
import com.bjpowernode.springboot.service.StudentService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author lin
 * @description
 * @date 2021/5/20
 */
@Controller
public class StudentController {
    @Resource
    private StudentService studentService;

    // 创建redis
    @RequestMapping("put")
    @ResponseBody
    public Object getPut(String key,String value){
        studentService.put(key,value);
        return "保存成功";
    }
}
