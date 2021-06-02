package com.bjpowernode.springboot.service.impl;

import com.bjpowernode.springboot.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.stereotype.Service;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private RedisTemplate<Object,Object> redisTemplate;

    // 将数据放入redis数据库中
    @Override
    public void put(String key, String value) {
        // 设置redis对象key的序列化，没有这一步骤，那么存入的就是字节码
        redisTemplate.setKeySerializer(new StringRedisSerializer());
        // 存放key
        redisTemplate.opsForValue().set(key,value);
    }

    // 从redis中取出数据
    @Override
    public String get(String key) {
        return (String) redisTemplate.opsForValue().get(key);
    }

}
