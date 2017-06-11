package main.java.dao.impl;

import main.java.dao.TicketsDao;

/**
 * Created by NjuMzc on 2017/6/10.
 */
import main.java.model.Date;
import main.java.model.Tickets;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class TicketsDaoImpl implements TicketsDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public List<Tickets> get(long cinemaid, long dateid, long filmid) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Tickets.class);
        criteria.add(Restrictions.eq("cinema", cinemaid));
        criteria.add(Restrictions.eq("date", dateid));
        criteria.add(Restrictions.eq("film", filmid));
        return criteria.list();
    }

    @Override
    public Date getDateById(long date_id) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Date.class);
        criteria.add(Restrictions.eq("id", date_id));
        return (Date) criteria.uniqueResult();
    }

    @Override
    public Date getDateByInfo(int year, int month, int day) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Date.class);
        criteria.add(Restrictions.eq("day", day));
        criteria.add(Restrictions.eq("month", month));
        criteria.add(Restrictions.eq("year", year));
        return (Date) criteria.uniqueResult();
    }
}
