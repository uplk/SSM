package com.lk.dao;

import com.lk.domain.Music;
import com.lk.domain.Video;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IMusicDao {
    @Insert("insert into music_sort(music_sort, music_sort_id) values " +
            "(#{music_sort},#{music_sort_id})")
    void addSort(Music music);

    @Insert("insert into music(music_id, music_sort_id, music_time, music_label, music_path) values " +
            "(#{music_id},#{music_sort_id}, #{music_time},#{music_label}, #{music_path})")
    void add(Music music);

    @Select("select music_sort_id from music_sort where music_sort = #{music_sort}")
    String findSortID(String music_sort);

    @Select("select * from music_sort")
    List<Music> findAllSort();

    @Select("select * from music_view")
    List<Music> findAll();

    @Select("select music_path from music_view where music_label = #{music_label}")
    Music findOne(String music_label);
}
