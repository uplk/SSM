package com.lk.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class PictureContent {
    private String uid;
    private String uname;
    private String picture_id;
    private String picture_content;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date picture_content_time;


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

    public String getPicture_id() {
        return picture_id;
    }

    public void setPicture_id(String picture_id) {
        this.picture_id = picture_id;
    }


    public String getPicture_content() {
        return picture_content;
    }

    public void setPicture_content(String picture_content) {
        this.picture_content = picture_content;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    public Date getPicture_content_time() {
        return picture_content_time;
    }

    public void setPicture_content_time(Date picture_content_time) {
        this.picture_content_time = picture_content_time;
    }
}
