package com.lk.domain;

public class PictureLove {
    private String picture_id;
    private String picture_path;
    private String uid;
    private String uname;

    public String getPicture_id() {
        return picture_id;
    }

    public void setPicture_id(String picture_id) {
        this.picture_id = picture_id;
    }

    public String getPicture_path() {
        return picture_path;
    }

    public void setPicture_path(String picture_path) {
        this.picture_path = picture_path;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    @Override
    public String toString() {
        return "PictureLove{" +
                "picture_id='" + picture_id + '\'' +
                ", picture_path='" + picture_path + '\'' +
                ", uid='" + uid + '\'' +
                ", uname='" + uname + '\'' +
                '}';
    }
}
