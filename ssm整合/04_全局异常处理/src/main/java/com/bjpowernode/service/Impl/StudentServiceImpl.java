package com.bjpowernode.service.Impl;

import com.bjpowernode.dao.StudentDao;
import com.bjpowernode.entity.Student;
import com.bjpowernode.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("studentService")
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentDao studentDao;
    // 查询所有学生
    @Override
    public List<Student> queryStudent() {
        return studentDao.allStudent();
    }
    // 添加学生
    @Override
    public int addStudent(Student student) {
        return studentDao.studentInsert(student);
    }
}
