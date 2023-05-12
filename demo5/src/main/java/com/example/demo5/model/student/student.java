package com.example.demo5.model.student;

public class student {
    private int id;
    private String name;
    private int gender;
    private int point;
    private String img;

    public student(int id, String name, int gender, int point, String img) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.point = point;
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
