package com.kissmepls.spring.mvc_hibernate_aop.dao;

import com.kissmepls.spring.mvc_hibernate_aop.entity.Detail;
import com.kissmepls.spring.mvc_hibernate_aop.entity.Employee;

import java.util.List;

public interface DetailDAO
{
    public List<Detail> getAllDetails();

    public void deleteDetail(int id);
}
