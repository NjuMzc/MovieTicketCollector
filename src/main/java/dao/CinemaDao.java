package main.java.dao;

import main.java.model.Cinema;

import java.util.List;

/**
 * Created by NjuMzc on 2017/6/10.
 */
public interface CinemaDao {

    public List<Cinema> getCinemaList();

    public Cinema getById(long id);
}
