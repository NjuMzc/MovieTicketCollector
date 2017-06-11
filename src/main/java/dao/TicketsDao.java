package main.java.dao;

import main.java.model.Date;
import main.java.model.Tickets;

import java.util.List;

/**
 * Created by NjuMzc on 2017/6/11.
 */
public interface TicketsDao {
    public List<Tickets> get(long cinemaid, long date_id, long filmid);

    public Date getDateById(long date_id);

    public Date getDateByInfo(int year, int month, int day);
}
