package main.java.dao.impl;

import main.java.dao.CinemaDao;
import main.java.model.Cinema;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by NjuMzc on 2017/6/10.
 */
@Repository
public class CinemaDaoImpl implements CinemaDao {

    @Autowired
    SessionFactory sessionFactory;

    @SuppressWarnings("unchecked")
    @Override
    public List<Cinema> getCinemaList() {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Cinema.class);
        return criteria.list();
    }

    @Override
    public Cinema getById(long id) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Cinema.class);
        criteria.add(Restrictions.eq("id", id));
        return (Cinema) criteria.uniqueResult();
    }
}
