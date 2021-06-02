package com.bjpowernode.springboot.service.impl;

import com.bjpowernode.springboot.mapper.StudentMapper;
import com.bjpowernode.springboot.service.StudentService;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author lin
 * @description
 * @date 2021/5/20
 */
@Service
public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentMapper studentMapper;
    // redis操作对象
    @Resource
    private RedisTemplate redisTemplate;

    @Override
    public void put(String key,String value) {
        redisTemplate.opsForValue().set(key,value);
    }

}
