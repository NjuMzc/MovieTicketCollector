package main.java.dao.impl;

import main.java.dao.FilmDao;
import main.java.model.Film;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;


/**
 * Created by NjuMzc on 2017/6/11.
 */
@Repository
public class FilmDaoImpl implements FilmDao {
    @Autowired
    SessionFactory sessionFactory;

    @SuppressWarnings("unchecked")
    @Override
    public List<Film> getFilmList() {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Film.class);
        return criteria.list();
    }

    @Override
    public Film getById(long id) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Film.class);
        criteria.add(Restrictions.eq("id", id));
        return (Film) criteria.uniqueResult();
    }
}
