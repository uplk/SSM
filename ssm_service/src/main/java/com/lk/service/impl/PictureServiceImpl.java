package com.lk.service.impl;

import com.lk.dao.IPictureDao;
import com.lk.domain.*;
import com.lk.service.IPictureService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PictureServiceImpl implements IPictureService {
    private final IPictureDao pictureDao;

    public PictureServiceImpl(IPictureDao pictureDao) {
        this.pictureDao = pictureDao;
    }

    @Override
    public void add(Picture picture) {
        pictureDao.add(picture);
    }

    @Override
    public List<Picture> findAll() {
        return pictureDao.findAll();
    }

    @Override
    public void addSort(PictureSort pictureSort) {
        pictureDao.addSort(pictureSort);
    }

    @Override
    public List<PictureSort> findAllSort() {
        return pictureDao.findAllSort();
    }

    @Override
    public String findSortID(String picture_sort) {
        return pictureDao.findSortID(picture_sort);
    }

    @Override
    public Picture findOne(String label) {
        return pictureDao.findOne(label);
    }

    @Override
    public void addComment(PictureContent pictureContent) {
        pictureDao.addComment(pictureContent);
    }

    @Override
    public List<PictureContent> findContent(String pictureID) {
        return pictureDao.findContent(pictureID);
    }

    @Override
    public void addLove(ULove ulove) {
        pictureDao.addLove(ulove);
    }

    @Override
    public List<PictureLove> findUserLove(String uname) {
        return  pictureDao.findUserLove(uname);
    }
}


