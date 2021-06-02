package com.bjpowernode.entity;

public class Goods {
    private Integer id;
    private String gname;
    private Integer num;
    private float price;

    public Goods() {
    }

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", gname='" + gname + '\'' +
                ", num=" + num +
                ", price=" + price +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Goods(Integer id, String gname, Integer num, float price) {
        this.id = id;
        this.gname = gname;
        this.num = num;
        this.price = price;
    }
}
