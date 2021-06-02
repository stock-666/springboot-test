package com.bjpowernode.springboot.web;

import com.bjpowernode.springboot.model.Student;
import com.bjpowernode.springboot.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
public class StudentController {
    @Resource
    private StudentService studentService;
    /**
     * @description 根据id获取学生对象
     * @author lin
     * @date 2021/5/19 18:04
     * @param id 
     * @return java.lang.Object
     */
    @RequestMapping("getStudent")
    @ResponseBody
    public Object getStudentById(Integer id){
        System.out.println(id);
        Student student = studentService.getStudentById(id);
        return student;
    }
}
