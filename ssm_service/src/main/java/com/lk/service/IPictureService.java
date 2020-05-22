package com.lk.service;

import com.lk.domain.*;

import java.util.List;

public interface IPictureService {
    void add(Picture picture);

    List<Picture> findAll();

    void addSort(PictureSort pictureSort);

    List<PictureSort> findAllSort();

    String findSortID(String picture_sort);

    Picture findOne(String label);

    void addComment(PictureContent pictureContent);

    List<PictureContent> findContent(String pictureID);

    void addLove(ULove ulove);

    List<PictureLove> findUserLove(String uname);
}
