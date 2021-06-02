package com.bjpowernode.service;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

// 切面类
@Aspect
public class MyAspectJ {
    @Before(value="execution(public void com.bjpowernode.service.ServiceImpl.doSome())")
    public void log(){
        System.out.println("执行了一次日志的记录");
    }
}
