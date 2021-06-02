package com.bjpowernode.springboot.web;

import com.bjpowernode.springboot.model.Student;
import org.springframework.web.bind.annotation.*;


/**
 * @author lin
 * @description
 * @date 2021/5/19
 */
@RestController
public class StudentController{

    @RequestMapping("getStudent1")
    public Object getStudent1(){
        Student student  = new Student();
        student.setName("张三");
        student.setId(1005);
        student.setAge(20);
        return student;
    }

    // 使用@GetMapping注解
    //@RequestMapping(value = "getStudent1",method = RequestMethod.GET)
    @GetMapping("getStudent2")
    public Object getStudent2(){
        return "张三";
    }

    // 使用@PostMapping注解
    //@RequestMapping(value = "getStudent3",method = RequestMethod.POST)
    @PostMapping("getStudent3")
    public Object getStudent3(){
        return "李四";
    }

    // 使用@PutMapping注解
    // @RequestMapping(value = "getStudent4",method = RequestMethod.PUT)
    @PutMapping("getStudent4")
    public Object getStudent(){
        return "王五";
    }

    // 使用@DeleteMapping
    // @RequestMapping(value = "getStudent5", method = RequestMethod.DELETE)
    @DeleteMapping("getStudent5")
    public Object getStudent5(){
        return "赵六";
    }


}
