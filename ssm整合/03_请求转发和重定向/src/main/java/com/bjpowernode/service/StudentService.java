package com.bjpowernode.service;

import com.bjpowernode.entity.Student;

import java.util.List;

public interface StudentService {
    // 查询学生
    List<Student> queryStudent();
    // 添加学生
    int addStudent(Student student);

}
