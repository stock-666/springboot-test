package com.bjpowernode.afterReturning;

public class ServiceImpl implements Service {
    @Override
    public void doSome() {
        System.out.println("===我执行了一个业务===");
    }

    @Override
    public void doOther(String name, Integer age) {
        System.out.println("===我有执行了一个腋窝====");
    }

    @Override
    public String doAdd(int a, int b) {
        int res=  a + b;
        System.out.println("===doAdd方法已经运行，最终结果为：" + res + "===");
        return res+"";
    }
}
