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

    @RequestMapping("updateStudent")
    @ResponseBody
    public String updateStudent(Integer id,String name){
        Student student = new Student();
        student.setId(id);
        student.setName(name);
        int ret = studentService.updateStudent(student);
        return "修改结果为：" +ret;
    }
}
