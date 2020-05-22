package com.lk.service.impl;

import com.lk.dao.IVideoDao;
import com.lk.domain.ULove;
import com.lk.domain.Video;
import com.lk.domain.VideoContent;
import com.lk.domain.VideoLove;
import com.lk.service.IVideoService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class VideoServiceImpl implements IVideoService {
    private final IVideoDao videoDao;

    public VideoServiceImpl(IVideoDao videoDao) {
        this.videoDao = videoDao;
    }

    @Override
    public void addSort(Video video) {
        videoDao.addSort(video);
    }

    @Override
    public String findSortID(String video_sort) {
        return videoDao.findSortID(video_sort);
    }

    @Override
    public void add(Video video) {
        videoDao.add(video);
    }

    @Override
    public List<Video> findAllSort() {
        return videoDao.findAllSort();
    }

    @Override
    public List<Video> findAll() {
        return videoDao.findAll();
    }

    @Override
    public Video findOne(String video_path) {
        return videoDao.findOne(video_path);
    }

    @Override
    public void addComment(VideoContent videoContent) {
        videoDao.addComment(videoContent);
    }

    @Override
    public void addLove(ULove ulove) {
        videoDao.addLove(ulove);
    }

    @Override
    public List<VideoLove> findUserLove(String uname) {
        return videoDao.findUserLove(uname);
    }
}
