package com.bjpowernode.after;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;


// 切面类
@Aspect
public class MyAspectJ {
    @After(value = "pointcut()")
    public void doDo(){
        // 类似try...catch..finally中的finally语句块
        System.out.println("最终通知：无论如何都会执行");
    }
    // 用@Pointcut定义切入点
    @Pointcut(value = "execution(* *..ServiceImpl.do*(..))")
    private void pointcut(){}
}
