package com.lk.service;


import com.lk.domain.User;

import java.util.List;

public interface IUserService {
    List<User> findAll() throws  Exception;
}
