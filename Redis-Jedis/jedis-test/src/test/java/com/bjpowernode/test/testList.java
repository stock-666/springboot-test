package com.bjpowernode.test;

import org.junit.Test;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.ListPosition;

import java.util.List;

public class testList {
    // 连接数据库
    Jedis jedis = new Jedis("192.168.108.128",6379);

    // 表头插入数据
    @Test
    public void test01(){
        Long ret = jedis.lpush("list02","红烧肉","炸鸡腿","北京烤鸭","热干面");
        System.out.println(ret);

    }

    // 表尾插入数据
    @Test
    public void test02(){
        jedis.rename("list02","foods");
        Long ret = jedis.rpush("foods","红烧狮子头");
        System.out.println(ret);

    }

    // 获取指定下标区间的元素
    @Test
    public void test03(){
        List<String> rets = jedis.lrange("foods",0,-1);
        for (String s:rets){
            System.out.println(s);
        }
    }

    // 截取指定下标区间的元素，并赋值给key
    @Test
    public void test04(){
        jedis.ltrim("foods",0,4);
        List<String> rets = jedis.lrange("foods",0,-1);
        for (String s:rets){
            System.out.println(s);
        }
    }

    // 设置指定下标元素值
    @Test
    public void test05(){
        String ret = jedis.lset("foods",-1,"红烧狮子头");
        System.out.println(ret);
    }

    // 获取指定下标元素值
    @Test
    public void test06(){
        String ret = jedis.lindex("foods",1);
        System.out.println(ret);
    }

    // 在指定元素之前/之后插入数据
    @Test
    public void test07(){
        // 指定元素前插入数据
        Long ret = jedis.linsert("foods", ListPosition.BEFORE,"北京烤鸭","天津狗不理包子");
        System.out.println(ret);
    }
    @Test
    public void test08(){
        // 指定元素后插入数据
        Long ret2 = jedis.linsert("foods",ListPosition.AFTER,"北京烤鸭","山东大饼");
        System.out.println(ret2);
    }

    // 获取列表长度
    @Test
    public void test09(){
        Long ret = jedis.llen("foods");
        System.out.println(ret);
    }



}
