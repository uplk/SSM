package com.lk.service;

import com.lk.domain.Major;

import java.util.List;

public interface IMajorService {
    void upload(Major major) throws Exception;
    List<Major> findAll() throws  Exception;

    Major findOne(String title) throws  Exception;

    List<Major> findMajorSort();

    String findSortID(String name) throws  Exception;
}
