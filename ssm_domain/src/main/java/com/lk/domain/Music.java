package com.lk.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Music {
    private String music_id;
    private String music_sort_id;
    private String music_sort;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date music_time;
    private String music_path;
    private String music_label;
    private String music_content;


    public String getMusic_id() {
        return music_id;
    }

    public void setMusic_id(String music_id) {
        this.music_id = music_id;
    }

    public String getMusic_sort_id() {
        return music_sort_id;
    }

    public void setMusic_sort_id(String music_sort_id) {
        this.music_sort_id = music_sort_id;
    }

    public String getMusic_sort() {
        return music_sort;
    }

    public void setMusic_sort(String music_sort) {
        this.music_sort = music_sort;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getMusic_time() {
        return music_time;
    }

    public void setMusic_time(Date music_time) {
        this.music_time = music_time;
    }

    public String getMusic_path() {
        return music_path;
    }

    public void setMusic_path(String music_path) {
        this.music_path = music_path;
    }

    public String getMusic_label() {
        return music_label;
    }

    public void setMusic_label(String music_label) {
        this.music_label = music_label;
    }

    public String getMusic_content() {
        return music_content;
    }

    public void setMusic_content(String music_content) {
        this.music_content = music_content;
    }
}
