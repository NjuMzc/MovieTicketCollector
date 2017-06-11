package main.java.model;

/**
 * Created by NjuMzc on 2017/6/11.
 */
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Date {

    @Id
    long id;
    int day;
    int month;
    int weekNum;
    int year;
    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }
    public int getDay() {
        return day;
    }
    public void setDay(int day) {
        this.day = day;
    }
    public int getMonth() {
        return month;
    }
    public void setMonth(int month) {
        this.month = month;
    }
    public int getWeekNum() {
        return weekNum;
    }
    public void setWeekNum(int weekNum) {
        this.weekNum = weekNum;
    }
    public int getYear() {
        return year;
    }
    public void setYear(int year) {
        this.year = year;
    }

}
