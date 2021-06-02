package com.bjpowernode.before;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

import java.util.Date;

// 切面类
@Aspect
public class MyAspectJ {
    @Before(value="execution(* *..ServiceImpl.doOther(..))")
    public void log(JoinPoint jp){
        // JoinPoint对象本身就是切入点表达式，可获取切入点表达式、方法签名、目标对象等
        Signature sign = jp.getSignature();// 获取目标方法的定义(签名)
        String name = jp.getSignature().getName();// 获取方法名
        Object as[] = jp.getArgs();// 获取方法参数，返回数组
        for (Object arg:as){
            System.out.println(arg);
        }
        System.out.println(name + "方法在" + new Date().toLocaleString() + "执行了一次");
        System.out.println(sign);
        System.out.println(name);
    }
}
