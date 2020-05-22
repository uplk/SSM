package com.lk.service;

import com.lk.dao.IPictureDao;
import com.lk.domain.ULove;
import com.lk.domain.Video;
import com.lk.domain.VideoContent;
import com.lk.domain.VideoLove;

import java.util.List;

public interface IVideoService {

    void addSort(Video video);

    String findSortID(String video_sort);

    void add(Video video);

    List<Video> findAllSort();

    List<Video> findAll();

    Video findOne(String video_path);

    void addComment(VideoContent videoContent);

    void addLove(ULove ulove);

    List<VideoLove> findUserLove(String uname);
}
