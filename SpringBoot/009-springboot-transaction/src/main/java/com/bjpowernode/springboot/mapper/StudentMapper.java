package com.bjpowernode.springboot.mapper;

import com.bjpowernode.springboot.model.Student;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StudentMapper {
    int insert(Student record);

    int insertSelective(Student record);

    int updateStudent(Student student);
}