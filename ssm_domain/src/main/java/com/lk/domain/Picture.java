package com.lk.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Picture {
    private String picture_id;
    private String picture_sort_id;
    private String picture_content;
    private String picture_sort;
    private String picture_title;
    private String picture_path;
    private String picture_label;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date picture_time;

    public String getPicture_id() {
        return picture_id;
    }

    public void setPicture_id(String picture_id) {
        this.picture_id = picture_id;
    }

    public String getPicture_sort_id() {
        return picture_sort_id;
    }

    public void setPicture_sort_id(String picture_sort_id) {
        this.picture_sort_id = picture_sort_id;
    }

    public String getPicture_content() {
        return picture_content;
    }

    public void setPicture_content(String picture_content) {
        this.picture_content = picture_content;
    }

    public String getPicture_sort() {
        return picture_sort;
    }

    public void setPicture_sort(String picture_sort) {
        this.picture_sort = picture_sort;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getPicture_time() {
        return picture_time;
    }

    public void setPicture_time(Date picture_time) {
        this.picture_time = picture_time;
    }

    public String getPicture_path() {
        return picture_path;
    }

    public void setPicture_path(String picture_path) {
        this.picture_path = picture_path;
    }

    public String getPicture_label() {
        return picture_label;
    }

    public void setPicture_label(String picture_label) {
        this.picture_label = picture_label;
    }

    public String getPicture_title() {
        return picture_title;
    }

    public void setPicture_title(String picture_title) {
        this.picture_title = picture_title;
    }
}
