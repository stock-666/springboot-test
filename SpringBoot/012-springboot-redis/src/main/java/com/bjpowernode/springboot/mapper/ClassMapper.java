package com.bjpowernode.springboot.mapper;

import com.bjpowernode.springboot.model.Class;

public interface ClassMapper {
    int insert(Class record);

    int insertSelective(Class record);
}