package com.bjpowernode.test;

import org.junit.Test;
import redis.clients.jedis.Jedis;

import java.util.Set;

public class testKey {
    // 连接数据库
    Jedis jedis = new Jedis("192.168.108.128",6379);
    // 查看数据库中的所有key
    @Test
    public void test01(){
        Set<String > result01 = jedis.keys("*");
        for (String key:result01){
            System.out.println(key);
        }

    }

    // 判断数据库中是否存在key
    @Test
    public void test02(){
        Boolean result02 = jedis.exists("name");
        System.out.println(result02);
    }

    // 查看数据库中key的数量
    @Test
    public void test03(){
        Long result = jedis.dbSize();
        System.out.println(result);
    }

    // 移动指定key到数据库实例
    @Test
    public void test04(){
        Long result = jedis.move("name",1);
        System.out.println(result);
    }

    // 删除指定的key
    @Test
    public void test05(){
        Long result = jedis.del("vsersion");
        System.out.println(result);
    }

    // 查看key的剩余生存时间
    @Test
    public void test06(){
        Long result = jedis.ttl("k1");
        System.out.println(result);
    }

    // 设置key的最大生存时间
    @Test
    public void test07(){
        Long result = jedis.expire("k1",50000);
        System.out.println(result);
    }

    // 查看key的数据类型
    @Test
    public void test08(){
        String result = jedis.type("list01");
        System.out.println(result);
    }

    // 重命名key
    @Test
    public void test09(){
        String  result = jedis.rename("k2","newK2");
        System.out.println(result);
    }
}
