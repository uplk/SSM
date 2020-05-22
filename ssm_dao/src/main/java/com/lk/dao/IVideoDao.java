package com.lk.dao;

import com.lk.domain.*;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface IVideoDao {

    @Insert("insert into video_sort(video_sort, video_sort_id) values " +
            "(#{video_sort},#{video_sort_id})")
    void addSort(Video Video);

    @Select("select video_sort_id from video_sort where video_sort = #{video_sort}")
    String findSortID(String video_sort);

    @Insert("insert into video(video_id, video_sort_id, video_time, video_label, video_path, video_face_path, video_title) values " +
            "(#{video_id},#{video_sort_id}, #{video_time},#{video_label}, #{video_path}, #{video_face_path}, #{video_title})")
    void add(Video video);

    @Select("select * from video_sort")
    List<Video> findAllSort();

    @Select("select * from video_view")
    List<Video> findAll();

    @Select("select * from video_view where video_path = #{video_path}")
    Video findOne(String video_path);

    @Insert("insert into video_content(video_id, uid, video_content, video_content_time) values " +
            "(#{video_id}, #{uid},#{video_content}, #{video_content_time})")
    void addComment(VideoContent videoContent);


    @Insert("insert into ulove_video(video_id, uid) values " +
            "(#{video_id},#{uid})")
    void addLove(ULove ulove);

    @Select("select * from video_ulove_view where uname=#{uname}")
    List<VideoLove> findUserLove(String uname);
}
