package com.lk.service;

import com.lk.domain.Music;

import java.util.List;

public interface IMusicService {
    void addSort(Music music);

    void add(Music music);

    String findSortID(String music_sort);

    List<Music> findAllSort();

    List<Music> findAll();

    Music findOne(String music_label);
}
