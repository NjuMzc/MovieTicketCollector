package main.java.model;

/**
 * Created by NjuMzc on 2017/6/11.
 */
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Tickets {

    @Id
    long id;
    int app_type;
    String buy_url;
    String discount_msg;
    String end_time;
    Date get_time;
    String hall_address;
    double price;
    String start_time;
    long cinema;
    long date;
    long film;
    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }
    public int getApp_type() {
        return app_type;
    }
    public void setApp_type(int app_type) {
        this.app_type = app_type;
    }
    public String getBuy_url() {
        return buy_url;
    }
    public void setBuy_url(String buy_url) {
        this.buy_url = buy_url;
    }
    public String getDiscount_msg() {
        return discount_msg;
    }
    public void setDiscount_msg(String discount_msg) {
        this.discount_msg = discount_msg;
    }
    public String getEnd_time() {
        return end_time;
    }
    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }
    public Date getGet_time() {
        return get_time;
    }
    public void setGet_time(Date get_time) {
        this.get_time = get_time;
    }
    public String getHall_address() {
        return hall_address;
    }
    public void setHall_address(String hall_address) {
        this.hall_address = hall_address;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public String getStart_time() {
        return start_time;
    }
    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }
    public long getCinema() {
        return cinema;
    }
    public void setCinema(long cinema) {
        this.cinema = cinema;
    }
    public long getDate() {
        return date;
    }
    public void setDate(long date) {
        this.date = date;
    }
    public long getFilm() {
        return film;
    }
    public void setFilm(long film) {
        this.film = film;
    }

}