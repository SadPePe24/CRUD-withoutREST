package com.kissmepls.spring.mvc_hibernate_aop.service;

import com.kissmepls.spring.mvc_hibernate_aop.dao.DetailDAO;
import com.kissmepls.spring.mvc_hibernate_aop.entity.Detail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class DetailServiceImpl implements DetailService
{
    @Autowired
    public DetailDAO detailDAO;


    @Override
    @Transactional
    public List<Detail> getAllDetails()
    {
        return detailDAO.getAllDetails();
    }

    @Override
    @Transactional
    public void deleteDetail(int id)
    {
        detailDAO.deleteDetail(id);
    }
}
