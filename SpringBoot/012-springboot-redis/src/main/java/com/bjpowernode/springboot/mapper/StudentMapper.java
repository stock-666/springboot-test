package com.bjpowernode.springboot.mapper;

import com.bjpowernode.springboot.model.Student;

public interface StudentMapper {
    int insert(Student record);

    int insertSelective(Student record);
}