package com.bjpowernode;

import com.bjpowernode.around.Service;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test03 {
    @Test
    public void test(){
        String config = "applicationContext03.xml";
        ApplicationContext ac= new ClassPathXmlApplicationContext(config);
        Service proxy = (Service) ac.getBean("serviceImpl");
        String res = proxy.doAdd(20,30);
        System.out.println("目标方法运行结果：" + res);
    }
}
