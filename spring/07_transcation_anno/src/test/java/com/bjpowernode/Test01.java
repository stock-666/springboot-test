package com.bjpowernode;

import com.bjpowernode.service.ShopService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test01{
    @Test
    public void test01(){
        String config = "applicationContext.xml";
        ApplicationContext ac = new ClassPathXmlApplicationContext(config);
        ShopService shop = (ShopService) ac.getBean("shopService");
        shop.buy(1001,20);
    }
}
