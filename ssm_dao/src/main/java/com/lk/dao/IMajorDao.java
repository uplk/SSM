package com.lk.dao;

import com.lk.domain.Major;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IMajorDao {
    @Insert("insert into major(major_id, major_sort_id, major_content, major_title) values " +
            "(#{major_id},#{major_sort_id}, #{major_content}, #{major_title})")
    void upload(Major major);

    @Select("select * from major_view")
    List<Major> findAll();

    @Select("select * from major_view where major_title = " + "#{title}")
    Major findOne(String title);

    @Select("select * from major_sort")
    List<Major> findMajorSort();

    @Select("select major_sort_id from major_sort where major_sort = #{name}")
    String findSortID(String name);
}
