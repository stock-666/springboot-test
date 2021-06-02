package com.bjpowernode.dao;

import com.bjpowernode.entity.Student;

import java.util.List;

public interface StudentDao {
    // 学生信息插入
    int studentInsert(Student student);
    // 查询所有学生
    List<Student> allStudent();
    // 查询单个学生
    Student getStudent(Integer id);
}
