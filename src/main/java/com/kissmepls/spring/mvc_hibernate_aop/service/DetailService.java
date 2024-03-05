package com.kissmepls.spring.mvc_hibernate_aop.service;

import com.kissmepls.spring.mvc_hibernate_aop.entity.Detail;

import java.util.List;

public interface DetailService
{
    public List<Detail> getAllDetails();

    public void deleteDetail(int id);
}
