package com.lk.service.impl;

import com.lk.dao.IUserDao;
import com.lk.domain.Major;
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

    @Override
    public List<User> findUname(String uname) throws Exception {
        return userDao.findUname(uname);
    }

    @Override
    public void register(User user) throws Exception {
        userDao.register(user);
    }

    @Override
    public List<Major> findMajorList() throws Exception {
        return userDao.findMajorList();
    }

    @Override
    public int checkUname(String uname) {
        return userDao.checkUname(uname);
    }

    @Override
    public void phoneSign(User user) {
        userDao.phoneSign(user);
    }

    @Override
    public int pwdLogin(User user) {
        return userDao.pwdLogin(user);
    }

    @Override
    public User findUser(String uname) {
        return userDao.findUser(uname);
    }

    @Override
    public String findID(String uname) {
        return userDao.findID(uname);
    }

    @Override
    public void addUtl(User user) {
        userDao.addUtl(user);
    }
}
