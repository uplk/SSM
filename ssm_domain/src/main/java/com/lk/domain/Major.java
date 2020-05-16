package com.lk.domain;


import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Major {
    String major_id;
    String major_sort_id;
    String major_sort;
    String major_content;
    String major_title;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    Date major_time;

    public String getMajor_id() {
        return major_id;
    }

    public void setMajor_id(String major_id) {
        this.major_id = major_id;
    }

    public String getMajor_sort_id() {
        return major_sort_id;
    }

    public void setMajor_sort_id(String major_sort_id) {
        this.major_sort_id = major_sort_id;
    }

    public String getMajor_content() {
        return major_content;
    }

    public void setMajor_content(String major_content) {
        this.major_content = major_content;
    }

    public String getMajor_sort() {
        return major_sort;
    }

    public void setMajor_sort(String major_sort) {
        this.major_sort = major_sort;
    }

    public String getMajor_title() {
        return major_title;
    }

    public void setMajor_title(String major_title) {
        this.major_title = major_title;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getMajor_time() {
        return major_time;
    }

    public void setMajor_time(Date major_time) {
        this.major_time = major_time;
    }

    @Override
    public String toString() {
        return "Major{" +
                "major_id='" + major_id + '\'' +
                ", major_sort_id='" + major_sort_id + '\'' +
                ", major_sort='" + major_sort + '\'' +
                ", major_content='" + major_content + '\'' +
                ", major_title='" + major_title + '\'' +
                ", major_time=" + major_time +
                '}';
    }
}
