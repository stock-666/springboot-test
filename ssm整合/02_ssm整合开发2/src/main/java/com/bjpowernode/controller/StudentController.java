package com.bjpowernode.controller;


import com.bjpowernode.entity.Student;
import com.bjpowernode.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Resource
    private StudentService studentService;
    // 学生信息插入
    @RequestMapping(value = "/addStudent",method = RequestMethod.POST)
    public ModelAndView addStudent(Student student){
        int res = studentService.addStudent(student);
        ModelAndView mv = new ModelAndView();
        String msg ="注册成功";
        if (res<0){
            msg = "注册失败，请稍后再试";
        }
        mv.addObject("msg",msg);
        mv.addObject(student);
        mv.setViewName("result");
        return mv;
    }
    // 查询所有学生信息
    @RequestMapping("/findStudent")
    @ResponseBody
    public List<Student> findStudent(){
        List<Student> students = studentService.queryStudent();
        return students;
    }

}
