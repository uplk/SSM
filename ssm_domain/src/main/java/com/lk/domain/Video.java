package com.lk.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Video {
    private String video_id;
    private String video_sort;
    private String video_sort_id;
    private String video_path;
    private String video_label;
    private String video_content;
    private String video_face_path;
    private String video_title;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date video_time;

    public String getVideo_id() {
        return video_id;
    }

    public void setVideo_id(String video_id) {
        this.video_id = video_id;
    }

    public String getVideo_sort() {
        return video_sort;
    }

    public void setVideo_sort(String video_sort) {
        this.video_sort = video_sort;
    }

    public String getVideo_sort_id() {
        return video_sort_id;
    }

    public void setVideo_sort_id(String video_sort_id) {
        this.video_sort_id = video_sort_id;
    }

    public String getVideo_path() {
        return video_path;
    }

    public void setVideo_path(String video_path) {
        this.video_path = video_path;
    }

    public String getVideo_label() {
        return video_label;
    }

    public void setVideo_label(String video_label) {
        this.video_label = video_label;
    }

    public String getVideo_content() {
        return video_content;
    }

    public void setVideo_content(String video_content) {
        this.video_content = video_content;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    public Date getVideo_time() {
        return video_time;
    }

    public void setVideo_time(Date video_time) {
        this.video_time = video_time;
    }

    public String getVideo_face_path() {

        return video_face_path;
    }

    public void setVideo_face_path(String video_face_path) {
        this.video_face_path = video_face_path;
    }

    public String getVideo_title() {
        return video_title;
    }

    public void setVideo_title(String video_title) {
        this.video_title = video_title;
    }
}
