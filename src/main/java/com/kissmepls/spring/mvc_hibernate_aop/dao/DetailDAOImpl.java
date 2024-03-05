package com.kissmepls.spring.mvc_hibernate_aop.dao;

import com.kissmepls.spring.mvc_hibernate_aop.entity.Detail;
import com.kissmepls.spring.mvc_hibernate_aop.entity.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DetailDAOImpl implements DetailDAO
{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Detail> getAllDetails()
    {
        Session session = sessionFactory.getCurrentSession();
        List<Detail> allDetails = session.createQuery("from Detail", Detail.class)
                .getResultList();
        return allDetails;
    }

    @Override
    public void deleteDetail(int id)
    {
        Session session = sessionFactory.getCurrentSession();
        Detail detail = session.get(Detail.class, id);
        session.remove(detail);
    }
}
