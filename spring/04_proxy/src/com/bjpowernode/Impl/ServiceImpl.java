package com.bjpowernode.Impl;

import com.bjpowernode.Service;

public class ServiceImpl implements Service {
    @Override
    public void doSome() {
        System.out.println("我准备做些什么");
    }

    @Override
    public void doOther() {
        System.out.println("我一定要做些什么");
    }

}
