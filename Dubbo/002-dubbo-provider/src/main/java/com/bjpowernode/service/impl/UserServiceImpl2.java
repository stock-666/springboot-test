package com.bjpowernode.service.impl;

import com.bjpowernode.service.UserService;
import com.bjpownernode.domain.User;

public class UserServiceImpl2 implements UserService {
    @Override
    public User gerUserById(Integer id) {
        User user = new User();
        user.setName("马云");
        user.setAge(25);
        user.setId(id);
        return user;
    }
}
