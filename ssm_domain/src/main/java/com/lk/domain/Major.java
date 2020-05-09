package com.lk.domain;

public class Major {
    String major_id;
    String major_sort_id;
    String major_sort;
    String major_content;
    String major_title;

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

    @Override
    public String toString() {
        return "Major{" +
                "major_id='" + major_id + '\'' +
                ", major_sort_id='" + major_sort_id + '\'' +
                ", major_sort='" + major_sort + '\'' +
                ", major_content='" + major_content + '\'' +
                ", major_title='" + major_title + '\'' +
                '}';
    }
}
