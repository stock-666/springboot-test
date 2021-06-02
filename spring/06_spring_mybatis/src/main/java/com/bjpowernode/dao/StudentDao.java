package com.bjpowernode.dao;

import com.bjpowernode.entity.Student;

import java.util.List;

public interface StudentDao {
    // 学生信息插入操作
    int insertStudent(Student student);
    // 学生信息查询操作
    List<Student> queryStudents();
}
