package com.lk.service;


import com.lk.domain.Major;
import com.lk.domain.User;

import java.util.List;

public interface IUserService {
    List<User> findAll() throws  Exception;

    List<User> findUname(String uname) throws  Exception;

    void register(User user)throws  Exception;

    List<Major> findMajorList() throws  Exception;

    int checkUname(String uname);

    void phoneSign(User user);

    int pwdLogin(User user);

    User findUser(String uname);
}
