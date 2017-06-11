package main.java.dao;

import main.java.model.Film;

import java.util.List;

/**
 * Created by NjuMzc on 2017/6/11.
 */
public interface FilmDao {
    public List<Film> getFilmList();

    public Film getById(long id);
}
