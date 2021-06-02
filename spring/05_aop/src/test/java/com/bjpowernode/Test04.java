package com.bjpowernode;

import com.bjpowernode.AfterThrowing.Service;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test04 {
    @Test
    public void test() {
        String config = "applicationContext04.xml";
        ApplicationContext ac = new ClassPathXmlApplicationContext(config);
        Service proxy = (Service) ac.getBean("serviceImpl");
        proxy.doSome();
    }
}
