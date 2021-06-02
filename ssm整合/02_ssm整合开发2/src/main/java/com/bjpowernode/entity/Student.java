package com.bjpowernode.entity;


public class Student {
    private Integer id;
    private String name;
    private String sex;
    private Integer age;
    private String stuClass;

    public Student() {
    }

    public Student(Integer id, String name, String sex, Integer age, String stuClass) {
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.age = age;
        this.stuClass = stuClass;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", stuClass='" + stuClass + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getStuClass() {
        return stuClass;
    }

    public void setStuClass(String stuClass) {
        this.stuClass = stuClass;
    }
}
