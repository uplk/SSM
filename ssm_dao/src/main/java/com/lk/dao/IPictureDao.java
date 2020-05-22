package com.lk.dao;


import com.lk.domain.*;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IPictureDao {
    @Insert("insert into picture(picture_id, picture_sort_id, picture_time, picture_label, picture_path, picture_title) values " +
            "(#{picture_id},#{picture_sort_id}, #{picture_time},#{picture_label}, #{picture_path}, #{picture_title})")
    void add(Picture picture);

    @Select("select * from picture_view")
    List<Picture> findAll();

    @Insert("insert into picture_sort(picture_sort, picture_sort_id) values " +
            "(#{picture_sort},#{picture_sort_id})")
    void addSort(PictureSort pictureSort);

    @Select("select * from picture_sort")
    List<PictureSort> findAllSort();

    @Select("select picture_sort_id from picture_sort where picture_sort = #{picture_sort}")
    String findSortID(String picture_sort);

    @Select("select picture_path from picture_view where picture_label = #{label}")
    Picture findOne(String label);

    @Insert("insert into picture_content(picture_id, uid, picture_content, picture_content_time) values " +
            "(#{picture_id}, #{uid},#{picture_content}, #{picture_content_time})")
    void addComment(PictureContent picture_content);

    @Select("select * from picture_content_view where picture_id=#{pictureID}")
    List<PictureContent> findContent(String pictureID);

    @Insert("insert into ulove_picture(picture_id, uid) values " +
            "(#{picture_id},#{uid})")
    void addLove(ULove ulove);

    @Select("select * from picture_ulove_view where uname=#{uname}")
    List<PictureLove> findUserLove(String uname);
}
