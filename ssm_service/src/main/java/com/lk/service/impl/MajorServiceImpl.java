package com.lk.service.impl;

import com.lk.dao.IMajorDao;
import com.lk.domain.Major;
import com.lk.service.IMajorService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class MajorServiceImpl implements IMajorService {
    private final IMajorDao majorDao;

    public MajorServiceImpl(IMajorDao majorDao) {
        this.majorDao = majorDao;
    }

    @Override
    public void upload(Major major) throws Exception {
        majorDao.upload(major);
    }

    @Override
    public List<Major> findAll() throws Exception {
        return majorDao.findAll();
    }

    @Override
    public Major findOne(String title) throws Exception {
        return majorDao.findOne(title);
    }

    @Override
    public List<Major> findMajorSort() {
        return majorDao.findMajorSort();
    }
}
