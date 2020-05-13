package com.lk.dao;


import com.lk.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserDao {
    @Select("select * from user")
    List<User> findAll()throws Exception;

    @Select("select * from user where uname = #{uanme}")
    List<User> findUname(String name)throws Exception;

    @Insert("insert into user(uid, uname, upassword) values " +
            "(#{uid},#{uname}, #{upassword})")
    void register(User user);
}
