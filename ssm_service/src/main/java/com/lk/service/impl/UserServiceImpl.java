package com.lk.service.impl;

import com.lk.dao.IUserDao;
import com.lk.domain.User;
import com.lk.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class UserServiceImpl implements IUserService {
    private final IUserDao userDao;

    public UserServiceImpl(IUserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public List<User> findAll() throws Exception {
        return userDao.findAll();
    }
}
