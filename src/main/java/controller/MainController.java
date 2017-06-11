package main.java.controller;

import main.java.dao.CinemaDao;
import main.java.dao.FilmDao;
import main.java.dao.TicketsDao;
import main.java.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * Created by NjuMzc on 2017/6/11.
 */
@Controller
@RequestMapping("*")
public class MainController {

    @Autowired
    CinemaDao cinemaDao;

    @Autowired
    FilmDao filmDao;

    @Autowired
    TicketsDao ticketsDao;

    @RequestMapping("/home")
    public String helloMVC(HttpServletRequest request){
        System.out.println("Receive Request!");

        ArrayList<Film> list = (ArrayList<Film>)filmDao.getFilmList();
        request.setAttribute("FilmList",list);
        return "/pages/home";
    }

    @RequestMapping(value = "/movieInform/*",method = RequestMethod.GET)
    public String getMovie(HttpServletRequest request,@RequestParam("id")String id){
        Film film = filmDao.getById(Long.valueOf(id));
        ArrayList<Cinema> cinemaList = (ArrayList<Cinema>) cinemaDao.getCinemaList();
        if(film ==null){
            return "/pages/home";
        }else{
            request.setAttribute("Film",film);
            request.setAttribute("CinemaList",cinemaList);
        }
        return "/pages/movieInform";
    }

    @RequestMapping(value = "/tickets/*",method = RequestMethod.GET)
    public String getTickets(HttpServletRequest request,@RequestParam("id")String id,@RequestParam("cinemaId")String cinemaId){
        Film film = filmDao.getById(Long.valueOf(id));
        Cinema cinema = cinemaDao.getById(Long.valueOf(cinemaId));

        request.setAttribute("Film",film);
        request.setAttribute("Cinema",cinema);

        Calendar calendar = Calendar.getInstance();

        main.java.model.Date date=ticketsDao.getDateByInfo(calendar.get(Calendar.YEAR),(calendar.get(Calendar.MONTH)+1),calendar.get(Calendar.DAY_OF_MONTH));
        List<Tickets> tickets = ticketsDao.get(cinema.getId(),date.getId(),film.getId());
        request.setAttribute("TicketList",tickets);

        for(Tickets t:tickets){
            System.out.println(t.getApp_type()+" "+t.getStart_time());
        }

        return "/pages/ticketsInform";
    }

    @RequestMapping(value = "/tickets",method = RequestMethod.POST)
    public String getTicketsByDate(HttpServletRequest request, HttpSession session){
        String date = request.getParameter("date");

        Film film = (Film) session.getAttribute("Film");
        Cinema cinema = (Cinema) session.getAttribute("Cinema");

        request.setAttribute("Film",film);
        request.setAttribute("Cinema",cinema);

        System.out.println(date);

        main.java.model.Date dateO=ticketsDao.getDateByInfo(Integer.valueOf(date.substring(0,4)),Integer.valueOf(date.substring(5,7)),Integer.valueOf(date.substring(8,10)));

        System.out.println(dateO.getYear()+" "+dateO.getMonth()+" "+dateO.getDay());

        List<Tickets> tickets = ticketsDao.get(cinema.getId(),dateO.getId(),film.getId());
        request.setAttribute("TicketList",tickets);

        for(Tickets t:tickets){
            System.out.println(t.getApp_type()+" "+t.getStart_time());
        }

        return "/pages/ticketsInform";
    }


}
