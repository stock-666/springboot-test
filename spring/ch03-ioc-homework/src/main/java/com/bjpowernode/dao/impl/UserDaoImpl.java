package com.bjpowernode.dao.impl;

import com.bjpowernode.dao.UserDao;
import com.bjpowernode.domain.SysUser;
import org.springframework.stereotype.Repository;

@Repository("mysqlDao2")
public class UserDaoImpl implements UserDao {
    @Override
    public void insertUser(SysUser user) {
        System.out.println("user插入到mysql数据库");
    }
}
