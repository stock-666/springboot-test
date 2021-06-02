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

    /**
     * @description 根据id获取学生对象
     * @author lin
     * @date 2021/5/20 12:17
     * @param id
     * @return org.springframework.web.servlet.ModelAndView
     */
    @GetMapping("getStudent/{id}")
        public ModelAndView getStudent(@PathVariable("id") Integer id){
        ModelAndView mv = new ModelAndView();
        Student student = studentService.getStudent(id);
        mv.setViewName("index");
        mv.addObject(student);
        return mv;
    }

    @PostMapping("insertStudent/{id}/{name}/{age}/{gender}")
    @ResponseBody
    public String insertStudent(Student student){
        int ret = studentService.insertStudent(student);
        if (ret==1){
            return "学生添加完成";
        }
        return "学生添加失败";
    }

    // 请求冲突
    @GetMapping(value = "springboot/order/{id}/{status}")
    @ResponseBody
    public Object queryOrder(@PathVariable("id") Integer id,
                             @PathVariable("status") Integer status) {
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("id",id);
        map.put("status",status);
        return map;
    }

    @GetMapping(value = "springboot/{id}/order/{status}")
    @ResponseBody
    public Object queryOrder1(@PathVariable("id") Integer id,
                              @PathVariable("status") Integer status) {
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("id",id);
        map.put("status",status);
        return map;
    }

    @GetMapping(value = "springboot/{status}/order/{id}")
    @ResponseBody
    public Object queryOrder2(@PathVariable("id") Integer id,
                              @PathVariable("status") Integer status) {
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("id",id);
        map.put("status",status);
        return map;
    }

    @PostMapping(value = "springboot/{status}/order/{id}")
    @ResponseBody
    public Object queryOrder3(@PathVariable("id") Integer id,
                              @PathVariable("status") Integer status) {
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("id",id);
        map.put("status",status);
        return map;
    }

}
