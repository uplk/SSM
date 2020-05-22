package com.lk.service.impl;

import com.lk.dao.IMusicDao;
import com.lk.domain.Music;
import com.lk.service.IMusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class MusicServiceImpl implements IMusicService {
    final IMusicDao musicDao;

    public MusicServiceImpl(IMusicDao musicDao) {
        this.musicDao = musicDao;
    }

    @Override
    public void addSort(Music music) {
        musicDao.addSort(music);
    }

    @Override
    public void add(Music music) {
        musicDao.add(music);
    }

    @Override
    public String findSortID(String music_sort) {
        return musicDao.findSortID(music_sort);
    }

    @Override
    public List<Music> findAllSort() {
        return  musicDao.findAllSort();
    }

    @Override
    public List<Music> findAll() {
        return musicDao.findAll();
    }

    @Override
    public Music findOne(String music_label) {
        return musicDao.findOne(music_label);
    }
}
