package bjpowernode.service;


import bjpowernode.entity.Student;

import java.util.List;

public interface StudentService {
    int addStudent(Student student);
    List<Student> getAllStudent();
}
