package com.lk.dao;


import com.lk.domain.Major;
import com.lk.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
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

    @Select("select * from major_view")
    List<Major> findMajorList();

    @Select("select count(*) from user where uname = #{uname}")
    int checkUname(String uname);
    @Insert("insert into user(uid, uname, utl) values " +
            "(#{uid},#{uname}, #{utl})")
    void phoneSign(User user);

    @Select("select count(*) from user where uname = #{uname} and upassword = #{upassword}")
    int pwdLogin(User user);

    @Select("select * from user where uname=#{uname}")
    User findUser(String uname);

    @Select("select uid from user where uname=#{uname}")
    String findID(String uname);

    @Update("update user set utl = #{utl} where uname=#{uname}")
    void addUtl(User user);
}
