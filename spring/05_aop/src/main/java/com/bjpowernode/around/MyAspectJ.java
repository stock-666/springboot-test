package com.bjpowernode.around;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;


// 切面类
@Aspect
public class MyAspectJ {
    @Around(value="execution(* *..ServiceImpl.do*(..))")
    public Object log(ProceedingJoinPoint pjp) throws Throwable {
        Object obj = null;
        System.out.println("环绕通知：在目标方法之前运行");
        // 运行目标方法，类似于动态代理中的method.invoke(target,args)
        obj = pjp.proceed();
        System.out.println("环绕通知：在目标方法之后运行");
        // 返回目标方法的运行结果
        return obj;
    }
}
