package com.bjpowernode.entity;

public class Teacher {
    private String name;
    private Integer age;
    private School school;

    @Override
    public String toString() {
        return "Teacher{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", school=" + school +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public School getSchool() {
        return school;
    }

    public void setSchool(School school) {
        this.school = school;
    }

    public Teacher() {
    }

    public Teacher(String name, Integer age, School school) {
        this.name = name;
        this.age = age;
        this.school = school;
    }
}
